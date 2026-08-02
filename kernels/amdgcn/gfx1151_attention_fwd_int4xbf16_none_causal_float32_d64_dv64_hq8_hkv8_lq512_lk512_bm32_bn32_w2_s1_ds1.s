	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v4, 4, v0
	s_clause 0x2
	s_load_b64 s[36:37], s[0:1], 0x0
	s_load_b32 s13, s[0:1], 0x88
	s_load_b64 s[28:29], s[0:1], 0x38
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s12, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s4, v2
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 16, v4
	.loc	1 773 26 is_stmt 0              ; attention.py:773:26
	s_add_i32 s30, s4, s12
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v3
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v58, v0, 4, 1
	s_mov_b32 s20, 0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v5, s18, v2
	s_mul_i32 s5, s18, s30
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s18, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s14, s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	s_add_i32 s14, s14, 32
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	v_add3_u32 v3, v5, v1, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v5, 1, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s14, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	buffer_load_b128 v[6:9], v3, s[36:39], 0 offen
	v_and_or_b32 v3, v5, 30, v58
	v_lshlrev_b32_e32 v10, 2, v3
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v3, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v11, 4, v10
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v59, v2, 16, v3
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v41, v10, v6
	ds_bpermute_b32 v42, v10, v7
	ds_bpermute_b32 v43, v10, v8
	ds_bpermute_b32 v45, v10, v9
	ds_bpermute_b32 v44, v11, v6
	ds_bpermute_b32 v46, v11, v7
	ds_bpermute_b32 v47, v11, v8
	ds_bpermute_b32 v48, v11, v9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s4, v59
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v6
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 780 17 is_stmt 1              ; attention.py:780:17
	v_or_b32_e32 v7, s30, v59
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v64, 0x5410 :: v_dual_lshlrev_b32 v7, 1, v7
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v65, 7, v0
	v_lshlrev_b32_e32 v10, 3, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v12, 1, v58
	v_dual_mov_b32 v40, s27 :: v_dual_add_nc_u32 v61, s13, v6
	v_dual_mov_b32 v91, 0xff800000 :: v_dual_and_b32 v6, 56, v0
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v8, 0x3f0, v4
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_load_b32 s8, s[0:1], 0x68
	buffer_load_u16 v60, v7, s[36:39], 0 offen
	v_dual_mov_b32 v66, 0x7632 :: v_dual_and_b32 v7, 16, v0
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s0, s14, 0x200
	v_dual_mov_b32 v34, s21 :: v_dual_and_b32 v5, 24, v5
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s0, s0, 31
	v_bfe_i32 v11, v0, 3, 1
	v_dual_mov_b32 v38, s25 :: v_dual_mov_b32 v37, s24
	v_dual_mov_b32 v26, v25 :: v_dual_lshlrev_b32 v49, 3, v65
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v7
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v71, 48, v10
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s9, s0, 31
	v_mov_b32_e32 v35, s22
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_or_b32 v62, s3, 10, v12
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s3, s9, 27
	v_dual_mov_b32 v36, s23 :: v_dual_and_b32 v9, 24, v0
	v_dual_mov_b32 v39, s26 :: v_dual_and_b32 v4, 48, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v67, 1, v6
	v_lshl_or_b32 v69, v3, 5, v5
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v72, 0x210, v11
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s35, s0, s3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s19, v49
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v49, v43, v47, s1
	v_cndmask_b32_e64 v54, v47, v43, s1
	v_lshl_or_b32 v47, v65, 6, v71
	v_dual_mov_b32 v33, s20 :: v_dual_add_nc_u32 v2, s12, v2
	v_cndmask_b32_e64 v50, v45, v48, s1
	v_xor_b32_e32 v68, v8, v9
	v_xor_b32_e32 v70, v4, v6
	v_mov_b32_e32 v29, v25
	v_cndmask_b32_e64 v53, v42, v46, s1
	v_cndmask_b32_e64 v55, v48, v45, s1
	v_cndmask_b32_e64 v57, v46, v42, s1
	v_xor_b32_e32 v43, 16, v69
	v_cndmask_b32_e64 v45, 0x1054, v64, s1
	v_cndmask_b32_e64 v46, 0x3276, v66, s1
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v48, s12, v67
	v_xor_b32_e32 v67, v47, v72
	v_mad_u64_u32 v[51:52], null, s18, v2, v[1:2]
	v_mov_b32_e32 v21, v25
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v52, v41, v44, s1
	v_cndmask_b32_e64 v56, v44, v41, s1
	v_xor_b32_e32 v41, 8, v68
	v_xor_b32_e32 v42, 8, v69
	v_lshl_or_b32 v64, v65, 9, v70
	v_lshl_or_b32 v45, v45, 8, v45
	v_lshl_or_b32 v46, v46, 8, v46
	v_add_nc_u32_e32 v70, 0, v43
	v_xor_b32_e32 v43, 16, v67
	v_dual_mov_b32 v17, v25 :: v_dual_add_nc_u32 v72, 2, v48
	v_dual_mov_b32 v18, v25 :: v_dual_add_nc_u32 v47, 3, v48
	v_dual_mov_b32 v30, v25 :: v_dual_lshlrev_b32 v63, 4, v65
	v_dual_mov_b32 v31, v25 :: v_dual_add_nc_u32 v66, 0, v69
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v65, 0, v68
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v68, 0, v41
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v23, v25
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v41, 0x540054, v45
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v77, 0, v43
	v_mov_b32_e32 v14, v25
	v_xor_b32_e32 v44, 24, v69
	v_add_nc_u32_e32 v69, 0, v42
	v_and_b32_e32 v42, 0x760076, v46
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s1, s8, 0x3fb8aa3b
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v48, s19, v48
	v_mul_lo_u32 v47, s19, v47
	v_mul_lo_u32 v85, s19, v72
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v71, 0, v44
	v_xor_b32_e32 v73, 0x90, v64
	v_xor_b32_e32 v74, 0x120, v64
	v_xor_b32_e32 v75, 0x1b0, v64
	v_xor_b32_e32 v44, 32, v67
	v_xor_b32_e32 v45, 48, v67
	v_xor_b32_e32 v46, 0x420, v67
	v_xor_b32_e32 v81, 0x430, v67
	v_xor_b32_e32 v82, 0x410, v67
	v_lshl_or_b32 v41, v41, 4, v41
	v_lshl_or_b32 v42, v42, 4, v42
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v72, 0, v73
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v73, 0, v74
	v_dual_mov_b32 v11, v25 :: v_dual_add_nc_u32 v74, 0, v75
	v_dual_mov_b32 v13, v25 :: v_dual_lshlrev_b32 v76, 1, v48
	v_dual_mov_b32 v15, v25 :: v_dual_add_nc_u32 v78, 0, v44
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v79, 0, v45
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v80, 0, v46
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v81, 0, v81
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v82, 0, v82
	v_dual_mov_b32 v5, v25 :: v_dual_lshlrev_b32 v84, 1, v47
	v_dual_mov_b32 v6, v25 :: v_dual_lshlrev_b32 v85, 1, v85
	v_dual_mov_b32 v7, v25 :: v_dual_and_b32 v86, 0x5040504, v41
	v_dual_mov_b32 v8, v25 :: v_dual_and_b32 v87, 0x7060706, v42
	v_add_lshl_u32 v75, v48, s19, 1
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s31, s19, 6
	s_lshl_b32 s33, s18, 5
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s34, 0x76543210
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s35, s35, 31
	s_and_b32 s45, s7, 0xffff
	s_mov_b32 s40, s10
	s_mov_b32 s44, s6
	s_mov_b32 s36, s4
	s_mov_b32 s37, s5
	s_mov_b32 s41, s11
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s48, s20
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v4, v25 :: v_dual_lshlrev_b32 v43, 16, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v60, v25 :: v_dual_mul_f32 v83, s1, v43
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v88, v83
	v_mov_b32_e32 v89, v83
	v_mov_b32_e32 v90, v83
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v136, s48, v58
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v93, 0x80000000, v51, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v95, v76, v63
	v_add_nc_u32_e32 v96, v75, v63
	v_add_nc_u32_e32 v97, v85, v63
	v_add_nc_u32_e32 v98, v84, v63
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[99:102], v93, s[36:39], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v93, 0x80000000, v95, s0
	v_cndmask_b32_e64 v95, 0x80000000, v96, s0
	v_cndmask_b32_e64 v96, 0x80000000, v97, s0
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v103, 28, v136
	v_add_nc_u32_e32 v104, 26, v136
	v_add_nc_u32_e32 v105, 24, v136
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v97, 0x80000000, v98, s0
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s5, v103, v61
	v_cmp_le_i32_e64 s3, v104, v61
	v_cmp_le_i32_e64 s4, v105, v61
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v48, s27 :: v_dual_mov_b32 v47, s26
	v_dual_mov_b32 v46, s25 :: v_dual_mov_b32 v45, s24
	v_dual_mov_b32 v44, s23 :: v_dual_mov_b32 v43, s22
	v_dual_mov_b32 v42, s21 :: v_dual_mov_b32 v41, s20
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v98, 30, v136
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s2, s3
	s_and_b32 s4, s2, s4
	s_and_b32 s5, s2, s5
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v92.h, 0
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s1, v98, v61
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s18, 0xff800000, v91
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s48, s48, 32
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v65, v[99:100]
	ds_store_b64 v68, v[101:102]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[103:106], v96, s[44:47], 0 offen
	buffer_load_b128 v[107:110], v97, s[44:47], 0 offen
	buffer_load_b128 v[111:114], v95, s[44:47], 0 offen
	buffer_load_b128 v[115:118], v93, s[44:47], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[119:122], v66 offset1:1
	ds_load_2addr_stride64_b64 v[123:126], v69 offset1:1
	ds_load_2addr_stride64_b64 v[127:130], v70 offset1:1
	ds_load_2addr_stride64_b64 v[131:134], v71 offset1:1
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x4
	buffer_load_u16 v93, v62, s[40:43], 0 offen
	buffer_load_u16 v139, v62, s[40:43], 0 offen offset:4
	buffer_load_u16 v140, v62, s[40:43], 0 offen offset:8
	buffer_load_u16 v141, v62, s[40:43], 0 offen offset:12
	buffer_load_u16 v142, v62, s[40:43], 0 offen offset:16
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s2, s1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[121:122], v[56:57], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[119:120], v[56:57], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x3
	buffer_load_u16 v119, v62, s[40:43], 0 offen offset:20
	buffer_load_u16 v120, v62, s[40:43], 0 offen offset:24
	buffer_load_u16 v121, v62, s[40:43], 0 offen offset:28
	buffer_load_u16 v122, v62, s[40:43], 0 offen offset:32
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[125:126], v[54:55], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[123:124], v[54:55], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[129:130], v[52:53], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[127:128], v[52:53], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[133:134], v[49:50], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[131:132], v[49:50], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v131, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v128, v48
	v_cvt_f32_i32_e32 v123, v41
	v_cvt_f32_i32_e32 v126, v43
	v_cvt_f32_i32_e32 v129, v45
	v_cvt_f32_i32_e32 v124, v42
	v_cvt_f32_i32_e32 v125, v44
	v_cvt_f32_i32_e32 v127, v47
	v_cvt_f32_i32_e32 v130, v46
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v135, 0, v64
	v_add_nc_u32_e32 v94, 0, v67
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v95, v95
	v_mul_f32_e32 v100, v88, v100
	v_cvt_f32_i32_e32 v97, v97
	v_mul_f32_e32 v96, v83, v96
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_mul_f32_e32 v101, v89, v101
	v_mul_f32_e32 v95, v83, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v97, v88, v97 :: v_dual_mul_f32 v98, v89, v98
	v_mul_f32_e32 v99, v90, v99
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(12)
	v_mov_b16_e32 v48.l, v106.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v48.h, v110.l
	v_mov_b16_e32 v110.l, v106.h
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x3
	buffer_load_u16 v106, v62, s[40:43], 0 offen offset:36
	buffer_load_u16 v132, v62, s[40:43], 0 offen offset:40
	buffer_load_u16 v133, v62, s[40:43], 0 offen offset:44
	buffer_load_u16 v134, v62, s[40:43], 0 offen offset:48
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v41.h, v111.l
	s_waitcnt vmcnt(13)
	v_mov_b16_e32 v111.l, v115.h
	v_mov_b16_e32 v41.l, v115.l
	v_mov_b16_e32 v43.h, v112.l
	v_mov_b16_e32 v112.l, v116.h
	v_mov_b16_e32 v43.l, v116.l
	v_mov_b16_e32 v45.h, v113.l
	v_mov_b16_e32 v113.l, v117.h
	v_mov_b16_e32 v45.l, v117.l
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x2
	buffer_load_u16 v115, v62, s[40:43], 0 offen offset:52
	buffer_load_u16 v116, v62, s[40:43], 0 offen offset:56
	buffer_load_u16 v117, v62, s[40:43], 0 offen offset:60
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v47.l, v118.l
	v_mov_b16_e32 v47.h, v114.l
	v_mov_b16_e32 v114.l, v118.h
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v118, 4, v136
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v42.l, v103.l
	v_mov_b16_e32 v42.h, v107.l
	v_mov_b16_e32 v107.l, v103.h
	v_mov_b16_e32 v44.l, v104.l
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v118, v61
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v118, v83, v123 :: v_dual_mul_f32 v123, v88, v124
	v_dual_mul_f32 v124, v90, v125 :: v_dual_mul_f32 v125, v89, v126
	v_dual_mul_f32 v126, v89, v127 :: v_dual_mul_f32 v127, v90, v128
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v137, 22, v136
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v128, v83, v129 :: v_dual_add_nc_u32 v103, 16, v136
	v_dual_mul_f32 v129, v88, v130 :: v_dual_mul_f32 v130, v90, v131
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v131, 16, v139
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v44.h, v108.l
	v_mov_b16_e32 v108.l, v104.h
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v102, 18, v136
	v_add_nc_u32_e32 v104, 14, v136
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v93, 16, v93
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v122, 16, v122
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v138, 20, v136
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s6, v137, v61
	v_cmp_le_i32_e64 s8, v102, v61
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v102, 12, v136
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v46.l, v105.l
	v_mov_b16_e32 v46.h, v109.l
	v_mov_b16_e32 v109.l, v105.h
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s7, v138, v61
	v_cmp_le_i32_e64 s12, v104, v61
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v104, 8, v136
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v136, v61
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v121, 16, v121
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s6, s2, s6
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s2, s8
	s_and_b32 s10, s2, s10
	s_and_b32 s16, s2, s16
	s_and_b32 s12, s2, s12
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v121, v127, v121 :: v_dual_add_nc_u32 v62, 64, v62
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v139, 16, v106
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v106, v111
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v103, v61
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v103, 10, v136
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v111, v123, v131
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v104, v61
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v135, v[41:42], v[106:107] offset1:8
	v_mov_b32_e32 v107, v112
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s9, s2, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v104.h, v92.h
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s2, s11
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v116, 16, v116
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v117, 16, v117
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v72, v[43:44], v[107:108] offset1:8
	v_dual_mov_b32 v108, v113 :: v_dual_lshlrev_b32 v137, 16, v140
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v96, v96, v139
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v140, 16, v115
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v115, v110
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v110, v118, v93 :: v_dual_mul_f32 v93, v101, v116
	v_mul_f32_e32 v116, v95, v122
	v_dual_mul_f32 v101, v130, v117 :: v_dual_lshlrev_b32 v132, 16, v132
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v138, 16, v142
	v_lshlrev_b32_e32 v134, 16, v134
	v_lshlrev_b32_e32 v133, 16, v133
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v123, v125, v137 :: v_dual_lshlrev_b32 v120, 16, v120
	v_mul_f32_e32 v125, v97, v132
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v105, 6, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v97, v98, v133 :: v_dual_add_nc_u32 v136, 2, v136
	v_dual_mul_f32 v120, v126, v120 :: v_dual_lshlrev_b32 v119, 16, v119
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s14, v103, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_le_i32_e64 s17, v136, v61
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v119, v129, v119 :: v_dual_lshlrev_b32 v136, 16, v141
	v_dual_mul_f32 v98, v99, v134 :: v_dual_mul_f32 v99, v100, v140
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v102, v61
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v118, v124, v136
	v_mul_f32_e32 v124, v128, v138
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v105, v61
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s17, s2, s17
	s_and_b32 s14, s2, s14
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v93, 0xff800000, v93, s5
	v_cndmask_b32_e64 v95, 0xff800000, v99, s3
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s2, s13
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v97, 0xff800000, v97, s6
	v_cndmask_b32_e64 v99, 0xff800000, v125, s7
	v_cndmask_b32_e64 v100, 0xff800000, v96, s8
	v_cndmask_b32_e64 v98, 0xff800000, v98, s4
	v_cndmask_b32_e64 v117, 0xff800000, v119, s14
	v_cndmask_b32_e64 v119, 0xff800000, v124, s11
	v_cndmask_b32_e64 v122, 0xff800000, v111, s17
	v_cndmask_b32_e64 v124, 0xff800000, v110, s10
	v_cndmask_b32_e64 v118, 0xff800000, v118, s13
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s15, s2, s15
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v96, 0xff800000, v101, s1
	v_cndmask_b32_e64 v123, 0xff800000, v123, s16
	v_cndmask_b32_e64 v101, 0xff800000, v116, s9
	v_cndmask_b32_e64 v116, 0xff800000, v121, s12
	v_cndmask_b32_e64 v120, 0xff800000, v120, s15
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v41, v100, v99, v97
	v_max3_f32 v42, v98, v95, v93
	v_max_f32_e32 v43, v124, v122
	v_max3_f32 v44, v118, v119, v117
	v_max3_f32 v121, v120, v116, v101
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v73, v[45:46], v[108:109] offset1:8
	ds_store_2addr_b64 v74, v[47:48], v[114:115] offset1:8
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v114, v41, v42, v96
.Ltmp4:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v103.h, v92.h
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v115, v43, v123, v44
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v102.h, v92.h
	v_mov_b16_e32 v105.h, v92.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v114, v115, v121, v114
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[45:48], v77
	ds_load_b128 v[106:109], v77 offset:2048
	ds_load_b128 v[41:44], v94
	ds_load_b128 v[110:113], v94 offset:1024
	v_mov_b32_e32 v140, v60
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v60.h, v92.h
	v_mov_b16_e64 v141.h, v92.h
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v115, v114, s34, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v142.h, v92.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s48, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v130, v91, v114, v115
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v114, v122, v130
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v122, v91, v130
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v99, v99, v130
	v_sub_f32_e32 v98, v98, v130
	v_sub_f32_e32 v100, v100, v130
	v_sub_f32_e32 v97, v97, v130
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v122, v122
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v95, v95, v130
	v_sub_f32_e32 v93, v93, v130
	v_sub_f32_e32 v96, v96, v130
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v99, v99
	v_exp_f32_e32 v98, v98
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v97, v97
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v93, v93
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v139, 0, v122, s18
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v115, v124, v130
	v_sub_f32_e32 v119, v119, v130
	v_sub_f32_e32 v118, v118, v130
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v120, v120, v130 :: v_dual_mul_f32 v31, v31, v139
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v114, v114
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v115
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v32, v32, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v119
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v121, v123, v130 :: v_dual_mul_f32 v28, v28, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v120, v120
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v118, v118
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v114, s17
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v121, v121
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v115, s10
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v119, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v92.l, v131.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v116, v116, v130
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v102.l, v132.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v120, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v104.l, v135.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v117, v117, v130
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v91, 1, v92
	v_and_b32_e32 v102, 1, v102
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v116, v116
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v104, 1, v104
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v117
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v118, s13
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v131, v131
	v_cmp_o_f32_e64 s11, v132, v132
	v_add3_u32 v91, v131, v91, 0x7fff
	v_add3_u32 v102, v132, v102, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v121, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v105.l, v137.h
	v_mov_b16_e64 v92.l, v134.h
	v_cndmask_b16 v91.h, 0x7fff, v91.h, s10
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v136, 0, v117, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v91.l, 0x7fff, v102.h, s11
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v116, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v103.l, v133.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v18, v18, v139 :: v_dual_and_b32 v105, 1, v105
	v_dual_mul_f32 v19, v19, v139 :: v_dual_and_b32 v116, 1, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v92.l, v136.h
	v_permlanex16_b32 v102, v91, s34, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s17, v137, v137
	v_and_b32_e32 v103, 1, v103
	v_add3_u32 v105, v137, v105, 0x7fff
	v_add3_u32 v104, v135, v104, 0x7fff
	v_perm_b32 v114, v102, v91, v86
	v_perm_b32 v115, v102, v91, v87
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v20, v20, v139 :: v_dual_and_b32 v91, 1, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v92.l, v138.h
	v_cmp_o_f32_e64 s12, v134, v134
	v_cmp_o_f32_e64 s13, v133, v133
	v_add3_u32 v103, v133, v103, 0x7fff
	v_add3_u32 v102, v134, v116, 0x7fff
	v_cndmask_b16 v104.l, 0x7fff, v105.h, s17
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v22, v22, v139 :: v_dual_and_b32 v105, 1, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v136, v136
	v_cmp_o_f32_e64 s15, v135, v135
	v_cmp_o_f32_e64 s16, v138, v138
	v_cndmask_b16 v102.l, 0x7fff, v103.h, s13
	v_cndmask_b16 v102.h, 0x7fff, v102.h, s12
	v_add3_u32 v91, v136, v91, 0x7fff
	v_add3_u32 v105, v138, v105, 0x7fff
	v_cndmask_b16 v103.l, 0x7fff, v104.h, s15
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v117, v102, s34, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v103.h, 0x7fff, v91.h, s14
	v_cndmask_b16 v104.h, 0x7fff, v105.h, s16
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v139
	v_mul_f32_e32 v24, v24, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v116, v117, v102, v86
	v_permlanex16_b32 v91, v103, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v117, v117, v102, v87
	v_permlanex16_b32 v102, v104, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v139
	v_mul_f32_e32 v11, v11, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v118, v91, v103, v86
	v_perm_b32 v119, v91, v103, v87
	v_perm_b32 v120, v102, v104, v86
	v_perm_b32 v121, v102, v104, v87
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v91, v101, v130
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v139
	v_mul_f32_e32 v12, v12, v139
	v_mul_f32_e32 v13, v13, v139
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[114:121], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[45:48], v81
	ds_load_b128 v[41:44], v80
	ds_load_b128 v[122:125], v80 offset:2048
	ds_load_b128 v[126:129], v81 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v139
	v_mul_f32_e32 v16, v16, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v101, v91
	v_exp_f32_e32 v96, v96
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v139
	v_mul_f32_e32 v23, v23, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v99, 0, v99, s7
	v_cndmask_b32_e64 v98, 0, v98, s4
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[102:105], v94 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v139
	v_dual_mul_f32 v4, v4, v139 :: v_dual_mov_b32 v91, v130
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v101, 0, v101, s9
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v139
	v_mul_f32_e32 v7, v7, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v100, 0, v100, s8
	v_cndmask_b32_e64 v97, 0, v97, s6
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[114:121], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[41:44], v94 offset:3072
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v94.h, v92.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v95, 0, v95, s3
	v_cndmask_b32_e64 v93, 0, v93, s5
	v_cndmask_b32_e64 v96, 0, v96, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v60.l, v101.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v94.l, v99.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v141.l, v98.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v139
	v_dual_mul_f32 v15, v15, v139 :: v_dual_add_f32 v130, v101, v100
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v63, s31, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v142.l, v93.h
	v_and_b32_e32 v60, 1, v60
	v_and_b32_e32 v94, 1, v94
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[122:129], v[114:121], v[1:8]
.Ltmp11:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v126, v132, v131 :: v_dual_add_f32 v127, v133, v134
	v_dual_add_f32 v128, v135, v136 :: v_dual_add_f32 v129, v137, v138
	v_dual_add_f32 v131, v99, v97 :: v_dual_add_f32 v132, v98, v95
.Ltmp12:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v135, 1, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v133, v93, v96 :: v_dual_add_f32 v126, v126, v127
	v_dual_add_f32 v127, v128, v129 :: v_dual_add_f32 v128, v130, v131
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v101, v101
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v132, v133
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v99, v99
	v_add3_u32 v60, v101, v60, 0x7fff
	v_add3_u32 v94, v99, v94, 0x7fff
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v126, v127
	v_add_f32_e32 v101, v128, v129
.Ltmp18:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v93, v93
	v_and_b32_e32 v134, 1, v141
	v_add3_u32 v93, v93, v135, 0x7fff
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v51, s33, v51
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v93.l, 0x7fff, v60.h, s3
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v60, v99, v101
.Ltmp20:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v98, v98
	v_add3_u32 v98, v98, v134, 0x7fff
	v_cndmask_b16 v98.l, 0x7fff, v94.h, s5
	v_mov_b16_e32 v92.l, v100.h
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v94, v60, s34, 0xfedcba98 op_sel:[1,0]
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v100, v100
	v_cmp_o_f32_e64 s4, v97, v97
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[102:109], v[114:121], v[9:16]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[102:105], v78
	ds_load_b128 v[118:121], v78 offset:2048
	ds_load_b128 v[106:109], v79
	ds_load_b128 v[122:125], v79 offset:2048
	ds_load_b128 v[114:117], v82
	ds_load_b128 v[45:48], v82 offset:2048
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v60, v60, v94 :: v_dual_and_b32 v99, 1, v92
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v92.l, v97.h
	v_cmp_o_f32_e64 s6, v95, v95
	v_cmp_o_f32_e64 s8, v96, v96
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v60, v140, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v99, v100, v99, 0x7fff
	v_and_b32_e32 v94, 1, v92
	v_mov_b16_e32 v92.l, v95.h
	v_cndmask_b16 v126.l, 0x7fff, v98.h, s7
	v_cndmask_b16 v127.l, 0x7fff, v93.h, s9
	v_cndmask_b16 v93.h, 0x7fff, v99.h, s1
	v_add3_u32 v94, v97, v94, 0x7fff
	v_and_b32_e32 v100, 1, v92
	v_mov_b16_e32 v92.l, v96.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v97, v93, s34, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v98.h, 0x7fff, v94.h, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v94, v95, v100, 0x7fff
	v_and_b32_e32 v92, 1, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v126.h, 0x7fff, v94.h, s6
	v_add3_u32 v95, v96, v92, 0x7fff
	v_perm_b32 v92, v97, v93, v86
	v_permlanex16_b32 v96, v98, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v93, v97, v93, v87
	v_permlanex16_b32 v97, v126, s34, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v127.h, 0x7fff, v95.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v94, v96, v98, v86
	v_perm_b32 v95, v96, v98, v87
	v_perm_b32 v96, v97, v126, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v99, v127, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v97, v97, v126, v87
	v_perm_b32 v98, v99, v127, v86
	v_perm_b32 v99, v99, v127, v87
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[102:109], v[92:99], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[110:117], v[92:99], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[118:125], v[92:99], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[92:99], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v60, v8
.LBB0_4:                                ; %Flow88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v34, null, v60, v60, v25
	v_div_scale_f32 v35, null, v60, v60, v26
	v_div_scale_f32 v37, null, v60, v60, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v34
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, vcc_lo, v25, v60, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v39, v37
	s_waitcnt lgkmcnt(5)
	v_div_scale_f32 v43, s0, v26, v60, v26
	v_div_scale_f32 v41, null, v60, v60, v28
	v_div_scale_f32 v51, s3, v28, v60, v28
	v_fma_f32 v33, -v34, v36, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v42, -v35, v38, 1.0
	s_waitcnt lgkmcnt(3)
	v_rcp_f32_e32 v44, v41
	v_fma_f32 v45, -v37, v39, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s29, s29, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v33, v36
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, s1, v27, v60, v27
	v_fmac_f32_e32 v39, v45, v39
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v45, v40, v36 :: v_dual_mul_f32 v46, v43, v38
	s_waitcnt lgkmcnt(1)
	v_fma_f32 v47, -v41, v44, 1.0
	s_mov_b32 s31, 0x31027000
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 16, v58
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v34, v45, v40
	v_fma_f32 v50, -v35, v46, v43
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v48, v42, v39
	v_lshrrev_b32_e32 v0, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v45, v49, v36 :: v_dual_fmac_f32 v46, v50, v38
	v_div_scale_f32 v49, null, v60, v60, v29
	v_div_scale_f32 v50, null, v60, v60, v18
	v_fma_f32 v35, -v35, v46, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v49
	v_fma_f32 v34, -v34, v45, v40
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v0, 62, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v36, v45
	v_div_scale_f32 v36, null, v60, v60, v30
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v49, v43, 1.0
	v_fmac_f32_e32 v44, v47, v44
	v_fma_f32 v47, -v37, v48, v42
	v_div_fixup_f32 v25, v34, v60, v25
	v_rcp_f32_e32 v34, v36
	v_dual_fmac_f32 v43, v45, v43 :: v_dual_mul_f32 v40, v51, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v47, v39
	v_div_fmas_f32 v35, v35, v38, v46
	v_div_scale_f32 v46, null, v60, v60, v32
	v_fma_f32 v38, -v41, v40, v51
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v26, v35, v60, v26
	v_fma_f32 v35, -v37, v48, v42
	v_div_scale_f32 v42, null, v60, v60, v31
	v_fmac_f32_e32 v40, v38, v44
	v_fma_f32 v38, -v36, v34, 1.0
	v_div_scale_f32 v37, s4, v29, v60, v29
	v_div_fmas_f32 v35, v35, v39, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v41, v40, v51
	v_fmac_f32_e32 v34, v38, v34
	v_rcp_f32_e32 v38, v42
	v_mul_f32_e32 v41, v37, v43
	v_rcp_f32_e32 v48, v46
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, s1, v30, v60, v30
	v_div_fmas_f32 v39, v39, v44, v40
	v_fma_f32 v40, -v49, v41, v37
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v27, v35, v60, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v42, v38, 1.0
	v_div_fixup_f32 v28, v39, v60, v28
	v_fmac_f32_e32 v41, v40, v43
	v_div_scale_f32 v40, null, v60, v60, v17
	v_fmac_f32_e32 v38, v47, v38
	v_fma_f32 v47, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v49, v41, v37
	v_div_scale_f32 v39, s3, v31, v60, v31
	v_rcp_f32_e32 v49, v40
	v_fmac_f32_e32 v48, v47, v48
	v_div_scale_f32 v47, s5, v32, v60, v32
	v_div_fmas_f32 v37, v37, v43, v41
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v43, v47, v48 :: v_dual_mul_f32 v44, v45, v34
	v_div_fixup_f32 v29, v37, v60, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v36, v44, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	v_cndmask_b32_e64 v29, 0, v29, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v35, v34
	v_mul_f32_e32 v35, v39, v38
	v_fma_f32 v36, -v36, v44, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v42, v35, v39
	v_fma_f32 v45, -v40, v49, 1.0
	v_div_fmas_f32 v34, v36, v34, v44
	v_rcp_f32_e32 v36, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v35, v41, v38
	v_fma_f32 v41, -v46, v43, v47
	v_fmac_f32_e32 v49, v45, v49
	v_div_scale_f32 v44, s1, v17, v60, v17
	v_div_fixup_f32 v30, v34, v60, v30
	v_fma_f32 v34, -v42, v35, v39
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v37, v44, v49
	v_fmac_f32_e32 v43, v41, v48
	v_fma_f32 v39, -v50, v36, 1.0
	v_div_scale_f32 v41, null, v60, v60, v19
	v_div_fmas_f32 v34, v34, v38, v35
	v_fma_f32 v38, -v40, v37, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v39, v36
	v_rcp_f32_e32 v39, v41
	v_fma_f32 v35, -v46, v43, v47
	v_div_scale_f32 v42, s3, v18, v60, v18
	v_div_scale_f32 v45, null, v60, v60, v20
	v_fmac_f32_e32 v37, v38, v49
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v31, v34, v60, v31
	v_div_fmas_f32 v35, v35, v48, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v41, v39, 1.0
	v_rcp_f32_e32 v38, v45
	v_fma_f32 v34, -v40, v37, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v32, v35, v60, v32
	v_fmac_f32_e32 v39, v46, v39
	v_mul_f32_e32 v43, v42, v36
	v_div_scale_f32 v46, null, v60, v60, v21
	v_div_fmas_f32 v34, v34, v49, v37
	v_div_scale_f32 v40, s4, v19, v60, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v50, v43, v42
	v_rcp_f32_e32 v37, v46
	v_fma_f32 v44, -v45, v38, 1.0
	v_div_fixup_f32 v17, v34, v60, v17
	v_div_scale_f32 v47, null, v60, v60, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v43, v35, v36 :: v_dual_fmac_f32 v38, v44, v38
	v_div_scale_f32 v44, s1, v20, v60, v20
	v_rcp_f32_e32 v49, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v34, -v50, v43, v42
	v_fma_f32 v50, -v46, v37, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v36, v43
	v_fmac_f32_e32 v37, v50, v37
	v_mul_f32_e32 v35, v40, v39
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v43, -v47, v49, 1.0
	v_div_fixup_f32 v18, v34, v60, v18
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v41, v35, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v48, v44, v38 :: v_dual_fmac_f32 v49, v43, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v42, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v45, v48, v44
	v_div_scale_f32 v42, s3, v21, v60, v21
	v_fma_f32 v34, -v41, v35, v40
	v_div_scale_f32 v41, null, v60, v60, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v36, v38
	v_mul_f32_e32 v36, v42, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v39, v35
	v_rcp_f32_e32 v43, v41
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v45, v48, v44
	v_fma_f32 v39, -v46, v36, v42
	v_div_scale_f32 v40, s5, v22, v60, v22
	v_div_scale_f32 v45, null, v60, v60, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v35, v35, v38, v48
	v_div_fixup_f32 v19, v34, v60, v19
	v_fma_f32 v48, -v41, v43, 1.0
	v_fmac_f32_e32 v36, v39, v37
	v_rcp_f32_e32 v38, v45
	v_div_fixup_f32 v20, v35, v60, v20
	v_div_scale_f32 v35, s1, v23, v60, v23
	v_fmac_f32_e32 v43, v48, v43
	v_mul_f32_e32 v44, v40, v49
	v_fma_f32 v34, -v46, v36, v42
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v37, v36
	v_mul_f32_e32 v37, v35, v43
	v_fma_f32 v39, -v47, v44, v40
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v21, v34, v60, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v39, v49
	v_fma_f32 v39, -v45, v38, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v47, v44, v40
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, null, v60, v60, v9
	v_div_scale_f32 v40, s3, v24, v60, v24
	v_div_scale_f32 v47, null, v60, v60, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v42, v39
	v_mul_f32_e32 v46, v40, v38
	v_div_fmas_f32 v36, v36, v49, v44
	v_fma_f32 v44, -v41, v37, v35
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v49, null, v60, v60, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v36, v60, v22
	v_fmac_f32_e32 v37, v44, v43
	v_rcp_f32_e32 v36, v47
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v44, -v39, v42, 1.0
	v_fma_f32 v34, -v45, v46, v40
	v_rcp_f32_e32 v51, v49
	v_fma_f32 v35, -v41, v37, v35
	v_div_scale_f32 v41, null, v60, v60, v11
	v_fmac_f32_e32 v42, v44, v42
	v_fmac_f32_e32 v46, v34, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v43, v37
	v_rcp_f32_e32 v44, v41
	v_fma_f32 v48, -v47, v36, 1.0
	v_div_scale_f32 v43, s1, v10, v60, v10
	v_fma_f32 v37, -v45, v46, v40
	v_div_scale_f32 v34, s4, v9, v60, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v36, v48, v36
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v23, v35, v60, v23
	v_fma_f32 v45, -v41, v44, 1.0
	v_mul_f32_e32 v40, v34, v42
	v_mul_f32_e32 v50, v43, v36
	v_div_fmas_f32 v37, v37, v38, v46
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, s5, v11, v60, v11
	v_fma_f32 v38, -v47, v50, v43
	v_fma_f32 v48, -v39, v40, v34
	v_div_fixup_f32 v24, v37, v60, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v37, -v49, v51, 1.0
	v_fmac_f32_e32 v50, v38, v36
	v_div_scale_f32 v38, null, v60, v60, v13
	v_fma_f32 v35, -v41, v46, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v40, v48, v42 :: v_dual_fmac_f32 v51, v37, v51
	v_div_scale_f32 v37, s3, v12, v60, v12
	v_fmac_f32_e32 v46, v35, v44
	v_rcp_f32_e32 v35, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v34, -v39, v40, v34
	v_fma_f32 v39, -v47, v50, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v42, v40
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v40, v37, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v38, v35, 1.0
	v_div_fixup_f32 v9, v34, v60, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v35, v42, v35
	v_div_fmas_f32 v36, v39, v36, v50
	v_fma_f32 v39, -v41, v46, v45
	v_div_scale_f32 v41, null, v60, v60, v14
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v42, s1, v13, v60, v13
	v_div_fmas_f32 v39, v39, v44, v46
	v_rcp_f32_e32 v43, v41
	v_fma_f32 v44, -v49, v40, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v34, v42, v35
	v_div_fixup_f32 v10, v36, v60, v10
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v39, v60, v11
	v_fmac_f32_e32 v40, v44, v51
	v_fma_f32 v44, -v38, v34, v42
	v_div_scale_f32 v39, null, v60, v60, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v41, v43, 1.0
	v_fma_f32 v37, -v49, v40, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v44, v35
	v_rcp_f32_e32 v45, v39
	v_div_scale_f32 v44, null, v60, v60, v16
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, s4, v14, v60, v14
	v_div_fmas_f32 v37, v37, v51, v40
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v40, v36, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v37, v60, v12
	v_fma_f32 v37, -v38, v34, v42
	v_fma_f32 v42, -v39, v45, 1.0
	v_fma_f32 v38, -v41, v40, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v37, v35, v34
	v_div_scale_f32 v35, null, v60, v60, v1
	v_fmac_f32_e32 v40, v38, v43
	v_fmac_f32_e32 v45, v42, v45
	v_div_scale_f32 v42, null, v60, v60, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v37, s1, v15, v60, v15
	v_div_fixup_f32 v13, v34, v60, v13
	v_fma_f32 v34, -v44, v46, 1.0
	v_rcp_f32_e32 v48, v42
	v_fma_f32 v36, -v41, v40, v36
	v_mul_f32_e32 v41, v37, v45
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v46, v34, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v35, v38, 1.0
	v_div_scale_f32 v34, s3, v16, v60, v16
	v_div_fmas_f32 v36, v36, v43, v40
	v_fma_f32 v40, -v39, v41, v37
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v47, null, v60, v60, v3
	v_mul_f32_e32 v43, v34, v46
	v_div_scale_f32 v49, s4, v1, v60, v1
	v_fma_f32 v50, -v42, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v47
	v_fmac_f32_e32 v41, v40, v45
	v_fma_f32 v40, -v44, v43, v34
	v_mul_f32_e32 v52, v49, v38
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s5, v2, v60, v2
	v_div_fixup_f32 v14, v36, v60, v14
	v_fma_f32 v36, -v39, v41, v37
	v_fmac_f32_e32 v43, v40, v46
	v_fma_f32 v37, -v35, v52, v49
	v_mul_f32_e32 v39, v50, v48
	v_fma_f32 v40, -v47, v51, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v34, -v44, v43, v34
	v_fmac_f32_e32 v52, v37, v38
	v_fma_f32 v37, -v42, v39, v50
	v_fmac_f32_e32 v51, v40, v51
	v_div_scale_f32 v40, s1, v3, v60, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v35, v52, v49
	v_fmac_f32_e32 v39, v37, v48
	v_div_fmas_f32 v36, v36, v45, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v37, v40, v51
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, null, v60, v60, v4
	v_div_fmas_f32 v34, v34, v46, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v36, v60, v15
	v_div_fmas_f32 v35, v35, v38, v52
	v_fma_f32 v38, -v42, v39, v50
	v_fma_f32 v42, -v47, v37, v40
	v_rcp_f32_e32 v43, v41
	v_div_fixup_f32 v16, v34, v60, v16
	v_div_fixup_f32 v1, v35, v60, v1
	v_div_scale_f32 v35, null, v60, v60, v5
	v_fmac_f32_e32 v37, v42, v51
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v60, v60, v8
	v_div_fmas_f32 v38, v38, v48, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v47, v37, v40
	v_fma_f32 v36, -v41, v43, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v2, v38, v60, v2
	v_div_fmas_f32 v34, v34, v51, v37
	v_rcp_f32_e32 v37, v35
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, null, v60, v60, v6
	v_div_scale_f32 v38, null, v60, v60, v7
	v_div_scale_f32 v39, vcc_lo, v4, v60, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_rcp_f32_e32 v42, v38
	v_div_fixup_f32 v3, v34, v60, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v34, -v35, v37, 1.0
	v_mul_f32_e32 v44, v39, v43
	v_fma_f32 v51, -v45, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v34, v37
	v_div_scale_f32 v34, s1, v5, v60, v5
	v_fma_f32 v46, -v36, v40, 1.0
	v_fma_f32 v49, -v38, v42, 1.0
	v_fma_f32 v48, -v41, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v50, v34, v37 :: v_dual_fmac_f32 v47, v51, v47
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v46, s3, v6, v60, v6
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, s4, v7, v60, v7
	v_fmac_f32_e32 v44, v48, v43
	v_fma_f32 v48, -v35, v50, v34
	v_div_scale_f32 v51, s5, v8, v60, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v52, v46, v40 :: v_dual_mul_f32 v53, v49, v42
	v_fmac_f32_e32 v50, v48, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v54, v51, v47
	v_fma_f32 v39, -v41, v44, v39
	v_fma_f32 v41, -v36, v52, v46
	v_fma_f32 v48, -v38, v53, v49
	v_fma_f32 v34, -v35, v50, v34
	v_fma_f32 v35, -v45, v54, v51
	v_div_fmas_f32 v39, v39, v43, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v52, v41, v40 :: v_dual_fmac_f32 v53, v48, v42
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v54, v35, v47
	v_div_fmas_f32 v34, v34, v37, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v36, -v36, v52, v46
	v_fma_f32 v35, -v38, v53, v49
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v37, -v45, v54, v51
	v_div_fixup_f32 v5, v34, v60, v5
	v_div_fmas_f32 v36, v36, v40, v52
	s_mov_b32 vcc_lo, s4
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v34, s19, v59
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v42, v53
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v4, v39, v60, v4
	v_div_fmas_f32 v37, v37, v47, v54
	v_div_fixup_f32 v6, v36, v60, v6
	v_div_fixup_f32 v7, v35, v60, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v37, v60, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	s_mul_i32 s0, s19, s30
	v_add_nc_u32_e32 v35, v34, v58
	v_add_nc_u32_e32 v34, s0, v34
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s19, v58
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 32, v58
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_add_lshl_u32 v35, v35, s0, 2
	v_add_lshl_u32 v38, v34, v58, 2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s19, v33
	v_cmp_gt_i32_e64 s1, s19, v36
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v37, 48, v58
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v39, 8, v38
	v_add_nc_u32_e32 v40, 16, v38
	v_cndmask_b32_e32 v41, 0x80000000, v38, vcc_lo
	v_add_lshl_u32 v0, v34, v0, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s19, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	s_clause 0x2
	buffer_store_b32 v25, v41, s[28:31], 0 offen
	buffer_store_b32 v26, v39, s[28:31], 0 offen
	buffer_store_b32 v27, v40, s[28:31], 0 offen
	v_add_nc_u32_e32 v25, 24, v38
	v_add_nc_u32_e32 v26, 32, v38
	v_add_nc_u32_e32 v27, 40, v38
	v_add_nc_u32_e32 v39, 48, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_add_nc_u32 v40, 56, v38
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	s_clause 0x4
	buffer_store_b32 v28, v25, s[28:31], 0 offen
	buffer_store_b32 v29, v26, s[28:31], 0 offen
	buffer_store_b32 v30, v27, s[28:31], 0 offen
	buffer_store_b32 v31, v39, s[28:31], 0 offen
	buffer_store_b32 v32, v40, s[28:31], 0 offen
	v_add_lshl_u32 v25, v34, v33, 2
	v_add_nc_u32_e32 v26, 0x48, v38
	v_add_nc_u32_e32 v27, 0x50, v38
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v28, 0x58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_nc_u32_e32 v29, 0x60, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[28:31], 0 offen
	buffer_store_b32 v18, v26, s[28:31], 0 offen
	buffer_store_b32 v19, v27, s[28:31], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v38
	v_add_nc_u32_e32 v19, 0x70, v38
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[28:31], 0 offen
	v_add_nc_u32_e32 v20, 0x78, v38
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	buffer_store_b32 v21, v17, s[28:31], 0 offen
	v_add_lshl_u32 v17, v34, v36, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[28:31], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v35
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[28:31], 0 offen
	buffer_store_b32 v24, v20, s[28:31], 0 offen
	buffer_store_b32 v9, v17, s[28:31], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v35
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v35
	v_add_nc_u32_e32 v19, 0xa0, v35
	v_add_nc_u32_e32 v20, 0xa8, v35
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[28:31], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v11, v9, s[28:31], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v35
	s_clause 0x2
	buffer_store_b32 v12, v10, s[28:31], 0 offen
	buffer_store_b32 v13, v17, s[28:31], 0 offen
	buffer_store_b32 v14, v18, s[28:31], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v35
	v_add_lshl_u32 v11, v34, v37, 2
	v_add_nc_u32_e32 v12, 0xc8, v35
	v_add_nc_u32_e32 v13, 0xd0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[28:31], 0 offen
	buffer_store_b32 v16, v10, s[28:31], 0 offen
	buffer_store_b32 v1, v11, s[28:31], 0 offen
	buffer_store_b32 v2, v12, s[28:31], 0 offen
	buffer_store_b32 v3, v13, s[28:31], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v35
	v_add_nc_u32_e32 v2, 0xe0, v35
	v_add_nc_u32_e32 v3, 0xe8, v35
	v_add_nc_u32_e32 v9, 0xf0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[28:31], 0 offen
	buffer_store_b32 v5, v2, s[28:31], 0 offen
	buffer_store_b32 v6, v3, s[28:31], 0 offen
	buffer_store_b32 v7, v9, s[28:31], 0 offen
	buffer_store_b32 v8, v0, s[28:31], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 143
		.amdhsa_next_free_sgpr 49
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 143
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8404
; TotalNumSgprs: 51
; NumVgprs: 143
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 143
; Occupancy: 10
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     143
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
