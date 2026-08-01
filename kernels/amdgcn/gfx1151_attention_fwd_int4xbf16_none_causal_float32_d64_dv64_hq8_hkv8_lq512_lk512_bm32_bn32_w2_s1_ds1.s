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
	v_bfe_u32 v50, v0, 4, 1
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
	v_and_or_b32 v3, v5, 30, v50
	v_lshlrev_b32_e32 v10, 2, v3
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v3, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v11, 4, v10
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v51, v2, 16, v3
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v48, v10, v6
	ds_bpermute_b32 v49, v10, v7
	ds_bpermute_b32 v46, v10, v8
	ds_bpermute_b32 v47, v10, v9
	ds_bpermute_b32 v57, v11, v6
	ds_bpermute_b32 v58, v11, v7
	ds_bpermute_b32 v59, v11, v8
	ds_bpermute_b32 v60, v11, v9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s4, v51
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v6
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 780 17 is_stmt 1              ; attention.py:780:17
	v_or_b32_e32 v7, s30, v51
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v8, 3, v0
	v_dual_mov_b32 v61, 0x5410 :: v_dual_add_nc_u32 v52, s13, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v62, 0x7632 :: v_dual_lshlrev_b32 v7, 1, v7
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	v_and_b32_e32 v5, 24, v5
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v6, 3, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v66, s12, v8
	v_dual_mov_b32 v40, s27 :: v_dual_and_b32 v9, 24, v0
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_load_b32 s8, s[0:1], 0x68
	buffer_load_u16 v64, v7, s[36:39], 0 offen
	v_dual_mov_b32 v74, 0xff800000 :: v_dual_and_b32 v7, 16, v0
	v_dual_mov_b32 v39, s26 :: v_dual_and_b32 v4, 0x3f0, v4
	v_mov_b32_e32 v38, s25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v7
	v_lshl_or_b32 v65, v3, 5, v5
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s0, s14, 0x200
	v_mov_b32_e32 v27, v25
	v_dual_mov_b32 v30, v25 :: v_dual_add_nc_u32 v69, 24, v66
	v_cndmask_b32_e64 v61, 0x1054, v61, s1
	v_cndmask_b32_e64 v62, 0x3276, v62, s1
	v_dual_mov_b32 v31, v25 :: v_dual_add_nc_u32 v70, 16, v66
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v71, 8, v66
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v66, s19, v66
	v_dual_mov_b32 v37, s24 :: v_dual_lshlrev_b32 v10, 1, v50
	v_dual_mov_b32 v35, s22 :: v_dual_add_nc_u32 v2, s12, v2
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s0, s0, 31
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v41, 56, v6
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v42, v47, v60, s1
	v_xor_b32_e32 v63, v4, v9
	v_mov_b32_e32 v17, v25
	v_cndmask_b32_e64 v45, v49, v58, s1
	v_cndmask_b32_e64 v47, v60, v47, s1
	v_cndmask_b32_e64 v49, v58, v49, s1
	v_xor_b32_e32 v60, 8, v65
	v_xor_b32_e32 v67, 16, v65
	v_xor_b32_e32 v68, 24, v65
	v_add_nc_u32_e32 v58, 0, v65
	v_lshl_or_b32 v65, v61, 8, v61
	v_lshl_or_b32 v72, v62, 8, v62
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s9, s0, 31
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v69, s19, v69
	v_lshl_or_b32 v54, s3, 10, v10
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s3, s9, 27
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[43:44], null, s18, v2, v[1:2]
	v_dual_mov_b32 v36, s23 :: v_dual_and_b32 v11, 7, v0
	v_dual_mov_b32 v34, s21 :: v_dual_mov_b32 v33, s20
	v_mov_b32_e32 v18, v25
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v61, 0, v67
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v24, v25
	v_dual_mov_b32 v10, v25 :: v_dual_and_b32 v65, 0x540054, v65
	v_mov_b32_e32 v12, v25
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s21, s0, s3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s19, v41
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v41, v46, v59, s1
	v_cndmask_b32_e64 v44, v48, v57, s1
	v_cndmask_b32_e64 v46, v59, v46, s1
	v_cndmask_b32_e64 v48, v57, v48, s1
	v_xor_b32_e32 v59, 8, v63
	v_add_nc_u32_e32 v57, 0, v63
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v63, 1, v66
	v_and_b32_e32 v66, 0x760076, v72
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s1, s8, 0x3fb8aa3b
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v70, s19, v70
	v_mul_lo_u32 v71, s19, v71
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v62, 0, v68
	v_mov_b32_e32 v9, v25
	v_lshl_or_b32 v68, v65, 4, v65
	v_lshl_add_u32 v53, v3, 1, 0
	v_dual_mov_b32 v28, v25 :: v_dual_lshlrev_b32 v55, 4, v11
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v56, 0, v4
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v60, 0, v60
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v59, 0, v59
	v_mov_b32_e32 v11, v25
	v_dual_mov_b32 v13, v25 :: v_dual_and_b32 v68, 0x5040504, v68
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v73, v25
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s31, s19, 6
	s_lshl_b32 s33, s18, 5
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s34, 0x76543210
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s21, s21, 31
	s_and_b32 s25, s7, 0xffff
	s_mov_b32 s40, s10
	s_mov_b32 s24, s6
	s_mov_b32 s36, s4
	s_mov_b32 s37, s5
	s_mov_b32 s41, s11
	s_mov_b32 s26, s38
	s_mov_b32 s27, s39
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v14, v25 :: v_dual_lshlrev_b32 v67, 16, v64
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v64, 1, v69
	v_lshl_or_b32 v69, v66, 4, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v2, v25 :: v_dual_mul_f32 v65, s1, v67
	v_lshlrev_b32_e32 v66, 1, v70
	v_lshlrev_b32_e32 v67, 1, v71
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v70, v65 :: v_dual_and_b32 v69, 0x7060706, v69
	v_mov_b32_e32 v71, v65
	v_mov_b32_e32 v72, v65
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	v_dual_cndmask_b32 v75, 0x80000000, v43 :: v_dual_mov_b32 v82, v73
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v77, v63, v55
	v_add_nc_u32_e32 v78, v67, v55
	v_add_nc_u32_e32 v79, v66, v55
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[83:86], v75, s[36:39], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v80, v64, v55
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v81, s20, v50
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v73, 0x80000000, v77, s0
	v_cndmask_b32_e64 v75, 0x80000000, v78, s0
	v_cndmask_b32_e64 v87, 0x80000000, v79, s0
	v_cndmask_b32_e64 v88, 0x80000000, v80, s0
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v77, 30, v81
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v78, 28, v81
	v_add_nc_u32_e32 v79, 26, v81
	v_add_nc_u32_e32 v80, 24, v81
	v_add_nc_u32_e32 v89, 22, v81
	v_add_nc_u32_e32 v90, 20, v81
	v_add_nc_u32_e32 v91, 18, v81
	v_add_nc_u32_e32 v92, 16, v81
	v_add_nc_u32_e32 v93, 14, v81
	v_add_nc_u32_e32 v94, 12, v81
	v_add_nc_u32_e32 v95, 10, v81
	v_add_nc_u32_e32 v96, 8, v81
	v_add_nc_u32_e32 v97, 6, v81
	v_add_nc_u32_e32 v98, 4, v81
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s1, v81, v52
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v81, 2, v81
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s3, v77, v52
	v_cmp_le_i32_e64 s4, v78, v52
	v_cmp_le_i32_e64 s5, v79, v52
	v_cmp_le_i32_e64 s6, v80, v52
	v_cmp_le_i32_e64 s17, v81, v52
	v_cmp_le_i32_e64 s7, v89, v52
	v_cmp_le_i32_e64 s8, v90, v52
	v_cmp_le_i32_e64 s9, v91, v52
	v_cmp_le_i32_e64 s10, v92, v52
	v_cmp_le_i32_e64 s11, v93, v52
	v_cmp_le_i32_e64 s12, v94, v52
	v_cmp_le_i32_e64 s13, v95, v52
	v_cmp_le_i32_e64 s14, v96, v52
	v_cmp_le_i32_e64 s15, v97, v52
	v_cmp_le_i32_e64 s16, v98, v52
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s5, s2, s5
	s_and_b32 s9, s2, s9
	s_and_b32 s11, s2, s11
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v76.h, 0
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s16, s2, s16
	s_and_b32 s1, s2, s1
	s_and_b32 s4, s2, s4
	s_and_b32 s6, s2, s6
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s2, s8
	s_and_b32 s13, s2, s13
	s_and_b32 s14, s2, s14
	s_and_b32 s15, s2, s15
	s_and_b32 s17, s2, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v124.h, v76.h
	v_mov_b16_e32 v126.h, v76.h
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s2, s12
	s_and_b32 s10, s2, s10
	s_and_b32 s3, s2, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v130.h, v76.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s18, 0xff800000, v74
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v128.h, v76.h
	v_mov_b16_e32 v123.h, v76.h
	v_mov_b16_e32 v125.h, v76.h
	v_mov_b16_e32 v127.h, v76.h
	v_mov_b16_e64 v129.h, v76.h
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s20, s20, 32
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v57, v[83:84]
	ds_store_b64 v59, v[85:86]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[77:80], v73, s[24:27], 0 offen
	buffer_load_b128 v[99:102], v75, s[24:27], 0 offen
	buffer_load_b128 v[103:106], v87, s[24:27], 0 offen
	buffer_load_b128 v[107:110], v88, s[24:27], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v73, v54, s[40:43], 0 offen
	buffer_load_u16 v75, v54, s[40:43], 0 offen offset:4
	buffer_load_u16 v81, v54, s[40:43], 0 offen offset:12
	buffer_load_u16 v131, v54, s[40:43], 0 offen offset:8
	buffer_load_u16 v132, v54, s[40:43], 0 offen offset:24
	buffer_load_u16 v133, v54, s[40:43], 0 offen offset:28
	buffer_load_u16 v134, v54, s[40:43], 0 offen offset:16
	buffer_load_u16 v135, v54, s[40:43], 0 offen offset:20
	buffer_load_u16 v136, v54, s[40:43], 0 offen offset:36
	buffer_load_u16 v137, v54, s[40:43], 0 offen offset:40
	buffer_load_u16 v138, v54, s[40:43], 0 offen offset:44
	buffer_load_u16 v139, v54, s[40:43], 0 offen offset:48
	buffer_load_u16 v140, v54, s[40:43], 0 offen offset:52
	buffer_load_u16 v141, v54, s[40:43], 0 offen offset:56
	buffer_load_u16 v142, v54, s[40:43], 0 offen offset:60
	buffer_load_u16 v143, v54, s[40:43], 0 offen offset:32
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[111:114], v58 offset1:1
	ds_load_2addr_stride64_b64 v[115:118], v60 offset1:1
	ds_load_2addr_stride64_b64 v[119:122], v61 offset1:1
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s20, s21
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[83:90], v[111:112], v[48:49], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[113:114], v[48:49], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[111:114], v62 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[83:90], v[115:116], v[46:47], v[83:90] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[91:98], v[117:118], v[46:47], v[91:98] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	s_waitcnt vmcnt(19)
	ds_store_b128 v56, v[77:80]
	s_waitcnt vmcnt(18)
	ds_store_b128 v56, v[99:102] offset:1024
	s_waitcnt vmcnt(17)
	ds_store_b128 v56, v[103:106] offset:2048
	s_waitcnt vmcnt(16)
	ds_store_b128 v56, v[107:110] offset:3072
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[83:90], v[119:120], v[44:45], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[121:122], v[44:45], v[91:98] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v75, 16, v75
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v78, 16, v131
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v79, 16, v132
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[83:90], v[111:112], v[41:42], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[113:114], v[41:42], v[91:98] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v99, 16, v135
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v112, v71, v85 :: v_dual_lshlrev_b32 v109, 16, v139
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v119, v72, v95 :: v_dual_mul_f32 v120, v70, v96
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v121, v71, v97 :: v_dual_lshlrev_b32 v110, 16, v140
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_mul_f32_e32 v110, v120, v110
	v_dual_mul_f32 v78, v112, v78 :: v_dual_add_nc_u32 v55, s31, v55
	v_mul_f32_e32 v114, v72, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v93, v70, v93 :: v_dual_add_nc_u32 v54, 64, v54
	v_mul_f32_e32 v83, v65, v83
	v_mul_f32_e32 v117, v65, v92
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v110, 0xff800000, v110, s5
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v107, 16, v137
	v_lshlrev_b32_e32 v80, 16, v133
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v78, 0xff800000, v78, s16
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v73, 16, v73
	v_lshlrev_b32_e32 v100, 16, v136
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v94, v94
	v_mul_f32_e32 v73, v83, v73
	v_mul_f32_e32 v93, v93, v107
	v_mul_f32_e32 v100, v117, v100
	v_dual_mul_f32 v80, v114, v80 :: v_dual_add_nc_u32 v43, s33, v43
	v_mul_f32_e32 v118, v71, v94
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v91, v91
	v_dual_mul_f32 v84, v70, v84 :: v_dual_mul_f32 v111, v72, v86
	v_dual_mul_f32 v115, v65, v87 :: v_dual_mul_f32 v116, v70, v88
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v131, 16, v141
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v100, 0xff800000, v100, s9
	v_cndmask_b32_e64 v80, 0xff800000, v80, s11
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v77, 16, v81
	v_lshlrev_b32_e32 v81, 16, v134
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v113, v71, v89 :: v_dual_lshlrev_b32 v108, 16, v138
	v_dual_mul_f32 v91, v65, v91 :: v_dual_mul_f32 v122, v72, v98
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v99, v116, v99 :: v_dual_lshlrev_b32 v132, 16, v142
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v133, 16, v143
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v75, v84, v75
	v_mul_f32_e32 v77, v111, v77
	v_dual_mul_f32 v83, v118, v108 :: v_dual_mul_f32 v84, v121, v131
	v_mul_f32_e32 v111, v119, v109
	v_mul_f32_e32 v81, v115, v81
	v_mul_f32_e32 v79, v113, v79
	v_mul_f32_e32 v107, v122, v132
	v_mul_f32_e32 v91, v91, v133
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v84, 0xff800000, v84, s4
	v_cndmask_b32_e64 v111, 0xff800000, v111, s6
	v_cndmask_b32_e64 v83, 0xff800000, v83, s7
	v_cndmask_b32_e64 v93, 0xff800000, v93, s8
	v_cndmask_b32_e64 v99, 0xff800000, v99, s13
	v_cndmask_b32_e64 v81, 0xff800000, v81, s14
	v_cndmask_b32_e64 v77, 0xff800000, v77, s15
	v_cndmask_b32_e64 v75, 0xff800000, v75, s17
	v_cndmask_b32_e64 v73, 0xff800000, v73, s1
	v_cndmask_b32_e64 v107, 0xff800000, v107, s3
	v_cndmask_b32_e64 v91, 0xff800000, v91, s10
	v_cndmask_b32_e64 v79, 0xff800000, v79, s12
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v112, v100, v93, v83
	v_max3_f32 v113, v111, v110, v84
	v_max_f32_e32 v114, v73, v75
	v_max3_f32 v115, v77, v81, v99
	v_max3_f32 v116, v79, v80, v91
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v85, v53 offset:512
	ds_load_u16_d16 v92, v53 offset:288
	ds_load_u16_d16 v98, v53 offset:1824
	ds_load_u16_d16 v101, v53 offset:576
	ds_load_u16_d16 v86, v53 offset:768
	ds_load_u16_d16 v102, v53 offset:832
	ds_load_u16_d16 v87, v53 offset:1024
	ds_load_u16_d16 v94, v53 offset:800
	ds_load_u16_d16 v103, v53 offset:1088
	ds_load_u16_d16 v88, v53 offset:1280
	ds_load_u16_d16 v95, v53 offset:1056
	ds_load_u16_d16 v104, v53 offset:1344
	ds_load_u16_d16 v89, v53 offset:1536
	ds_load_u16_d16 v96, v53 offset:1312
	ds_load_u16_d16 v105, v53 offset:1600
	ds_load_u16_d16 v90, v53 offset:1792
	ds_load_u16_d16 v97, v53 offset:1568
	ds_load_u16_d16 v106, v53 offset:1856
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v112, v112, v113, v107
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v109, v53 offset:608
	ds_load_u16_d16 v108, v53 offset:352
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v113, v114, v78, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v112, v113, v116, v112
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v113, v112, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v139, v74, v112, v113
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v84, v84, v139
	v_sub_f32_e32 v78, v78, v139
	v_sub_f32_e32 v81, v81, v139
	v_sub_f32_e32 v99, v99, v139
	v_sub_f32_e32 v79, v79, v139
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v84, v84
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v80, v139
	v_sub_f32_e32 v91, v91, v139
	v_sub_f32_e32 v100, v100, v139
	v_sub_f32_e32 v93, v93, v139
	v_sub_f32_e32 v83, v83, v139
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v112, v74, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v91, v91
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v84, s4
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v93, v93
	v_exp_f32_e32 v83, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v111, v111, v139
	v_sub_f32_e32 v77, v77, v139
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v130.l, v84.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s12
	v_cndmask_b32_e64 v80, 0, v80, s11
	v_cndmask_b32_e64 v91, 0, v91, s10
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v122, 1, v130
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v75
	v_exp_f32_e32 v75, v78
	v_exp_f32_e32 v78, v81
	v_exp_f32_e32 v81, v99
	v_exp_f32_e32 v99, v100
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v93, 0, v93, s8
	v_cndmask_b32_e64 v83, 0, v83, s7
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v135, v112
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v100, v111
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v112, v79, v80
.Ltmp9:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v128.l, v93.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v73, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v78, s14
	v_cndmask_b32_e64 v81, 0, v81, s13
	v_cndmask_b32_e64 v99, 0, v99, s9
.Ltmp10:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v114, v93, v83
.Ltmp11:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v110, v110, v139
	v_sub_f32_e32 v107, v107, v139
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v78, v81
	v_add_f32_e32 v113, v91, v99
.Ltmp13:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v110, v110
	v_exp_f32_e32 v107, v107
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v111, v111, v112 :: v_dual_add_f32 v112, v113, v114
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v114, 1, v128
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s17
	v_cndmask_b32_e64 v75, 0, v75, s16
	v_cndmask_b32_e64 v100, 0, v100, s6
	v_cndmask_b32_e64 v77, 0, v77, s15
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v140, 0, v110, s5
	v_cndmask_b32_e64 v141, 0, v107, s3
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v76.l, v74.h
	v_cmp_o_f32_e64 s5, v74, v74
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v110, v75, v77
.Ltmp17:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v124.l, v75.h
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v116, v84, v141
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v77, v77
	v_mov_b16_e32 v125.l, v78.h
	v_mov_b16_e32 v123.l, v73.h
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v107, v73, v74
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v73, v73
	v_cmp_o_f32_e64 s4, v84, v84
	v_and_b32_e32 v118, 1, v124
	v_and_b32_e32 v117, 1, v123
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v107, v107, v110 :: v_dual_and_b32 v110, 1, v76
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v76.l, v77.h
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v115, v100, v140
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v73, v73, v117, 0x7fff
	v_add3_u32 v144, v84, v122, 0x7fff
	v_add3_u32 v74, v74, v110, 0x7fff
	v_and_b32_e32 v110, 1, v76
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v84, v107, v111
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v74.l, 0x7fff, v73.h, s6
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v115, v115, v116
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s5
	v_add3_u32 v73, v77, v110, 0x7fff
	v_mov_b16_e32 v76.l, v81.h
	v_cmp_o_f32_e64 s8, v75, v75
	v_cmp_o_f32_e64 s1, v93, v93
	v_permlanex16_b32 v77, v74, s34, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v119, 1, v125
	v_add3_u32 v75, v75, v118, 0x7fff
	v_add3_u32 v142, v93, v114, 0x7fff
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v93, v112, v115
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v115, v77, v74, v68
	v_perm_b32 v116, v77, v74, v69
	v_and_b32_e32 v77, 1, v76
	v_mov_b16_e32 v76.l, v80.h
	v_cmp_o_f32_e64 s9, v78, v78
	v_add3_u32 v78, v78, v119, 0x7fff
	v_cmp_o_f32_e64 s6, v81, v81
	v_cndmask_b16 v75.l, 0x7fff, v75.h, s8
	v_cndmask_b16 v75.h, 0x7fff, v73.h, s7
	v_and_b32_e32 v73, 1, v76
	v_add3_u32 v77, v81, v77, 0x7fff
	v_mov_b16_e32 v76.l, v99.h
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v84, v93
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v78.l, 0x7fff, v78.h, s9
	v_permlanex16_b32 v84, v75, s34, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v78.h, 0x7fff, v77.h, s6
	v_and_b32_e32 v77, 1, v76
	v_mov_b16_e32 v76.l, v83.h
	v_mov_b16_e32 v127.l, v91.h
	v_cmp_o_f32_e64 s13, v99, v99
	v_perm_b32 v117, v84, v75, v68
	v_perm_b32 v118, v84, v75, v69
	v_add3_u32 v75, v99, v77, 0x7fff
	v_and_b32_e32 v77, 1, v76
	v_mov_b16_e64 v129.l, v100.h
	v_mov_b16_e32 v126.l, v79.h
	v_cmp_o_f32_e64 s11, v91, v91
	v_cndmask_b16 v145.h, 0x7fff, v75.h, s13
	v_add3_u32 v75, v83, v77, 0x7fff
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v77, 0, v135, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v113, 1, v127
	v_and_b32_e32 v121, 1, v129
	v_cmp_o_f32_e64 s3, v100, v100
	v_and_b32_e32 v120, 1, v126
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v91, v91, v113, 0x7fff
	v_add3_u32 v143, v100, v121, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v123, v53 offset:2112
	ds_load_u16_d16 v124, v53 offset:2368
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v83, v83
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v132, v53 offset:2304
	ds_load_u16_d16 v133, v53 offset:2560
	ds_load_u16_d16 v125, v53 offset:2624
	ds_load_u16_d16 v134, v53 offset:2816
	ds_load_u16_d16 v126, v53 offset:2880
	ds_load_u16_d16 v84, v53 offset:256
	ds_load_u16_d16 v83, v53
	ds_load_u16_d16 v91, v53 offset:32
	ds_load_u16_d16 v99, v53 offset:64
	ds_load_u16_d16 v100, v53 offset:320
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v108, v53 offset:480
	ds_load_u16_d16_hi v101, v53 offset:704
	ds_load_u16_d16 v93, v53 offset:544
	ds_load_u16_d16 v107, v53 offset:96
	ds_load_u16_d16_hi v86, v53 offset:896
	ds_load_u16_d16_hi v102, v53 offset:960
	ds_load_u16_d16 v110, v53 offset:864
	ds_load_u16_d16_hi v87, v53 offset:1152
	ds_load_u16_d16_hi v103, v53 offset:1216
	ds_load_u16_d16 v111, v53 offset:1120
	ds_load_u16_d16_hi v88, v53 offset:1408
	ds_load_u16_d16_hi v104, v53 offset:1472
	ds_load_u16_d16 v112, v53 offset:1376
	ds_load_u16_d16_hi v89, v53 offset:1664
	ds_load_u16_d16_hi v105, v53 offset:1728
	ds_load_u16_d16 v113, v53 offset:1632
	ds_load_u16_d16_hi v90, v53 offset:1920
	ds_load_u16_d16_hi v106, v53 offset:1984
	ds_load_u16_d16 v131, v53 offset:2048
	ds_load_u16_d16 v114, v53 offset:1888
	ds_load_u16_d16_hi v85, v53 offset:640
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v79, v79
	v_add3_u32 v79, v79, v120, 0x7fff
	v_cmp_o_f32_e64 s12, v80, v80
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v80, v80, v73, 0x7fff
	s_waitcnt lgkmcnt(23)
	v_cndmask_b16 v145.l, 0x7fff, v91.h, s11
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v77
	v_mul_f32_e32 v16, v16, v77
	v_mul_f32_e32 v6, v6, v77
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v84, v53 offset:384
	ds_load_u16_d16_hi v83, v53 offset:128
	ds_load_u16_d16_hi v91, v53 offset:160
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v99, v53 offset:192
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v107, v53 offset:224
	ds_load_u16_d16_hi v92, v53 offset:416
	ds_load_u16_d16_hi v100, v53 offset:448
	ds_load_u16_d16_hi v93, v53 offset:672
	ds_load_u16_d16_hi v109, v53 offset:736
	ds_load_u16_d16_hi v94, v53 offset:928
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v110, v53 offset:992
	ds_load_u16_d16_hi v95, v53 offset:1184
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v111, v53 offset:1248
	ds_load_u16_d16_hi v96, v53 offset:1440
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v112, v53 offset:1504
	ds_load_u16_d16_hi v97, v53 offset:1696
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v113, v53 offset:1760
	ds_load_u16_d16_hi v98, v53 offset:1952
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v114, v53 offset:2016
	ds_load_u16_d16_hi v131, v53 offset:2176
	ds_load_u16_d16_hi v123, v53 offset:2240
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v79.l, 0x7fff, v79.h, s10
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v81, v74, s34, 0xfedcba98 op_sel:[1,0]
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v79.h, 0x7fff, v80.h, s12
	v_mov_b16_e64 v76.l, v140.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v77
	v_mul_f32_e32 v27, v27, v77
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v74, v81
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v74, v78, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v80, v79, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v77
	v_mul_f32_e32 v29, v29, v77
	v_mul_f32_e32 v30, v30, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v119, v74, v78, v68
	v_perm_b32 v120, v74, v78, v69
	v_perm_b32 v121, v80, v79, v68
	v_perm_b32 v122, v80, v79, v69
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v77
	v_mul_f32_e32 v32, v32, v77
	v_mul_f32_e32 v17, v17, v77
	v_mul_f32_e32 v18, v18, v77
	v_mul_f32_e32 v19, v19, v77
	v_mul_f32_e32 v20, v20, v77
	v_mul_f32_e32 v21, v21, v77
	v_mul_f32_e32 v22, v22, v77
	v_mul_f32_e32 v23, v23, v77
	v_mul_f32_e32 v24, v24, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v80, 1, v76
	v_mov_b16_e64 v76.l, v141.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v77
	v_mul_f32_e32 v9, v9, v77
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[91:98], v[115:122], v[17:24]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v76, 1, v76
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[83:90], v[115:122], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v91, v53 offset:2144
	ds_load_u16_d16 v135, v53 offset:3072
	ds_load_u16_d16 v127, v53 offset:3136
	ds_load_u16_d16 v136, v53 offset:3328
	ds_load_u16_d16 v128, v53 offset:3392
	ds_load_u16_d16 v137, v53 offset:3584
	ds_load_u16_d16 v129, v53 offset:3648
	ds_load_u16_d16 v138, v53 offset:3840
	ds_load_u16_d16 v130, v53 offset:3904
	ds_load_u16_d16 v93, v53 offset:2656
	ds_load_u16_d16 v94, v53 offset:2912
	ds_load_u16_d16 v92, v53 offset:2400
	ds_load_u16_d16_hi v132, v53 offset:2432
	ds_load_u16_d16_hi v124, v53 offset:2496
	ds_load_u16_d16 v84, v53 offset:2336
	ds_load_u16_d16_hi v133, v53 offset:2688
	ds_load_u16_d16_hi v125, v53 offset:2752
	ds_load_u16_d16 v85, v53 offset:2592
	ds_load_u16_d16_hi v134, v53 offset:2944
	ds_load_u16_d16_hi v126, v53 offset:3008
	ds_load_u16_d16 v86, v53 offset:2848
	ds_load_u16_d16 v83, v53 offset:2080
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v135, v53 offset:3200
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v127, v53 offset:3264
	ds_load_u16_d16 v95, v53 offset:3168
	ds_load_u16_d16 v87, v53 offset:3104
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v136, v53 offset:3456
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v128, v53 offset:3520
	ds_load_u16_d16 v96, v53 offset:3424
	ds_load_u16_d16 v88, v53 offset:3360
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v137, v53 offset:3712
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v129, v53 offset:3776
	ds_load_u16_d16 v97, v53 offset:3680
	ds_load_u16_d16 v89, v53 offset:3616
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v138, v53 offset:3968
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v130, v53 offset:4032
	ds_load_u16_d16 v98, v53 offset:3936
	ds_load_u16_d16 v90, v53 offset:3872
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v77
	v_mul_f32_e32 v12, v12, v77
	v_mul_f32_e32 v13, v13, v77
	v_mul_f32_e32 v15, v15, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v140, v140
	v_cmp_o_f32_e64 s7, v141, v141
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v83, v53 offset:2208
	ds_load_u16_d16_hi v91, v53 offset:2272
	ds_load_u16_d16_hi v84, v53 offset:2464
	ds_load_u16_d16_hi v92, v53 offset:2528
	ds_load_u16_d16_hi v85, v53 offset:2720
	ds_load_u16_d16_hi v93, v53 offset:2784
	ds_load_u16_d16_hi v86, v53 offset:2976
	ds_load_u16_d16_hi v94, v53 offset:3040
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v87, v53 offset:3232
	ds_load_u16_d16_hi v95, v53 offset:3296
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v88, v53 offset:3488
	ds_load_u16_d16_hi v96, v53 offset:3552
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v89, v53 offset:3744
	ds_load_u16_d16_hi v97, v53 offset:3808
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v90, v53 offset:4000
	ds_load_u16_d16_hi v98, v53 offset:4064
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v75.l, 0x7fff, v142.h, s1
	v_cndmask_b16 v75.h, 0x7fff, v75.h, s5
	v_add3_u32 v80, v140, v80, 0x7fff
	v_add3_u32 v76, v141, v76, 0x7fff
	v_cndmask_b16 v78.l, 0x7fff, v143.h, s3
	v_cndmask_b16 v79.l, 0x7fff, v144.h, s4
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[99:106], v[115:122], v[9:16]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v102, v75, s34, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v78.h, 0x7fff, v80.h, s6
	v_cndmask_b16 v79.h, 0x7fff, v76.h, s7
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v77
	v_mul_f32_e32 v3, v3, v77
	v_mul_f32_e32 v4, v4, v77
	v_mul_f32_e32 v5, v5, v77
	v_mul_f32_e32 v7, v7, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v81, v145, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v101, v102, v75, v68
	v_permlanex16_b32 v76, v78, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v102, v102, v75, v69
	v_permlanex16_b32 v75, v79, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[107:114], v[115:122], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v99, v81, v145, v68
	v_perm_b32 v100, v81, v145, v69
	v_perm_b32 v103, v76, v78, v68
	v_perm_b32 v104, v76, v78, v69
	v_perm_b32 v105, v75, v79, v68
	v_perm_b32 v106, v75, v79, v69
	v_dual_mov_b32 v74, v139 :: v_dual_fmac_f32 v73, v82, v77
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[131:138], v[99:106], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[83:90], v[99:106], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[123:130], v[99:106], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[91:98], v[99:106], v[1:8]
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
	v_mov_b32_e32 v73, v8
.LBB0_4:                                ; %Flow185
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v34, null, v73, v73, v25
	v_div_scale_f32 v35, null, v73, v73, v26
	v_div_scale_f32 v37, null, v73, v73, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v34
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, vcc_lo, v25, v73, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v43, s0, v26, v73, v26
	v_div_scale_f32 v41, null, v73, v73, v28
	v_div_scale_f32 v53, s3, v28, v73, v28
	v_fma_f32 v33, -v34, v36, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v35, v38, 1.0
	v_rcp_f32_e32 v44, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v45, -v37, v39, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s29, s29, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v33, v36
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, s1, v27, v73, v27
	v_fmac_f32_e32 v39, v45, v39
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v45, v40, v36 :: v_dual_mul_f32 v46, v43, v38
	s_waitcnt lgkmcnt(4)
	v_fma_f32 v47, -v41, v44, 1.0
	s_mov_b32 s31, 0x31027000
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 16, v50
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v34, v45, v40
	v_fma_f32 v52, -v35, v46, v43
	v_mul_f32_e32 v48, v42, v39
	v_lshrrev_b32_e32 v0, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v45, v49, v36 :: v_dual_fmac_f32 v46, v52, v38
	v_div_scale_f32 v49, null, v73, v73, v29
	v_div_scale_f32 v52, null, v73, v73, v18
	v_fma_f32 v35, -v35, v46, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v49
	v_fma_f32 v34, -v34, v45, v40
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v0, 62, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v36, v45
	v_div_scale_f32 v36, null, v73, v73, v30
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v49, v43, 1.0
	v_fmac_f32_e32 v44, v47, v44
	v_fma_f32 v47, -v37, v48, v42
	v_div_fixup_f32 v25, v34, v73, v25
	v_rcp_f32_e32 v34, v36
	v_fmac_f32_e32 v43, v45, v43
	v_mul_f32_e32 v40, v53, v44
	v_fmac_f32_e32 v48, v47, v39
	v_div_fmas_f32 v35, v35, v38, v46
	v_div_scale_f32 v46, null, v73, v73, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v41, v40, v53
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v26, v35, v73, v26
	v_fma_f32 v35, -v37, v48, v42
	v_div_scale_f32 v42, null, v73, v73, v31
	v_fmac_f32_e32 v40, v38, v44
	v_fma_f32 v38, -v36, v34, 1.0
	v_div_scale_f32 v37, s4, v29, v73, v29
	v_div_fmas_f32 v35, v35, v39, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v41, v40, v53
	v_fmac_f32_e32 v34, v38, v34
	v_rcp_f32_e32 v38, v42
	v_mul_f32_e32 v41, v37, v43
	v_rcp_f32_e32 v48, v46
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, s1, v30, v73, v30
	v_div_fmas_f32 v39, v39, v44, v40
	v_fma_f32 v40, -v49, v41, v37
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v27, v35, v73, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v42, v38, 1.0
	v_div_fixup_f32 v28, v39, v73, v28
	v_fmac_f32_e32 v41, v40, v43
	v_div_scale_f32 v40, null, v73, v73, v17
	v_fmac_f32_e32 v38, v47, v38
	v_fma_f32 v47, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v49, v41, v37
	v_div_scale_f32 v39, s3, v31, v73, v31
	v_rcp_f32_e32 v49, v40
	v_fmac_f32_e32 v48, v47, v48
	v_div_scale_f32 v47, s5, v32, v73, v32
	v_div_fmas_f32 v37, v37, v43, v41
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v43, v47, v48 :: v_dual_mul_f32 v44, v45, v34
	v_div_fixup_f32 v29, v37, v73, v29
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
	v_rcp_f32_e32 v36, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v35, v41, v38
	v_fma_f32 v41, -v46, v43, v47
	v_fmac_f32_e32 v49, v45, v49
	v_div_scale_f32 v44, s1, v17, v73, v17
	v_div_fixup_f32 v30, v34, v73, v30
	v_fma_f32 v34, -v42, v35, v39
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v37, v44, v49
	v_fmac_f32_e32 v43, v41, v48
	v_fma_f32 v39, -v52, v36, 1.0
	v_div_scale_f32 v41, null, v73, v73, v19
	v_div_fmas_f32 v34, v34, v38, v35
	v_fma_f32 v38, -v40, v37, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v39, v36
	v_rcp_f32_e32 v39, v41
	v_fma_f32 v35, -v46, v43, v47
	v_div_scale_f32 v42, s3, v18, v73, v18
	v_div_scale_f32 v45, null, v73, v73, v20
	v_fmac_f32_e32 v37, v38, v49
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v31, v34, v73, v31
	v_div_fmas_f32 v35, v35, v48, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v41, v39, 1.0
	v_rcp_f32_e32 v38, v45
	v_fma_f32 v34, -v40, v37, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v32, v35, v73, v32
	v_fmac_f32_e32 v39, v46, v39
	v_mul_f32_e32 v43, v42, v36
	v_div_scale_f32 v46, null, v73, v73, v21
	v_div_fmas_f32 v34, v34, v49, v37
	v_div_scale_f32 v40, s4, v19, v73, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v52, v43, v42
	v_rcp_f32_e32 v37, v46
	v_fma_f32 v44, -v45, v38, 1.0
	v_div_fixup_f32 v17, v34, v73, v17
	v_div_scale_f32 v47, null, v73, v73, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v43, v35, v36 :: v_dual_fmac_f32 v38, v44, v38
	v_div_scale_f32 v44, s1, v20, v73, v20
	v_rcp_f32_e32 v49, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v34, -v52, v43, v42
	v_fma_f32 v52, -v46, v37, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v36, v43
	v_fmac_f32_e32 v37, v52, v37
	v_mul_f32_e32 v35, v40, v39
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v43, -v47, v49, 1.0
	v_div_fixup_f32 v18, v34, v73, v18
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
	v_div_scale_f32 v42, s3, v21, v73, v21
	v_fma_f32 v34, -v41, v35, v40
	v_div_scale_f32 v41, null, v73, v73, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v36, v38
	v_mul_f32_e32 v36, v42, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v39, v35
	v_rcp_f32_e32 v43, v41
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v45, v48, v44
	v_div_scale_f32 v40, s5, v22, v73, v22
	v_fma_f32 v39, -v46, v36, v42
	v_div_scale_f32 v45, null, v73, v73, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v35, v35, v38, v48
	v_div_fixup_f32 v19, v34, v73, v19
	v_fma_f32 v48, -v41, v43, 1.0
	v_fmac_f32_e32 v36, v39, v37
	v_rcp_f32_e32 v38, v45
	v_div_fixup_f32 v20, v35, v73, v20
	v_div_scale_f32 v35, s1, v23, v73, v23
	v_fmac_f32_e32 v43, v48, v43
	v_mul_f32_e32 v44, v40, v49
	v_fma_f32 v34, -v46, v36, v42
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v47, v44, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v39, v49
	v_fma_f32 v39, -v45, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_div_fmas_f32 v34, v34, v37, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v36, -v47, v44, v40
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v37, v35, v43
	v_div_scale_f32 v39, null, v73, v73, v9
	v_div_scale_f32 v40, s3, v24, v73, v24
	v_div_fmas_f32 v36, v36, v49, v44
	v_div_scale_f32 v49, null, v73, v73, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v44, -v41, v37, v35
	v_div_scale_f32 v47, null, v73, v73, v10
	v_rcp_f32_e32 v53, v49
	v_mul_f32_e32 v46, v40, v38
	v_div_fixup_f32 v21, v34, v73, v21
	v_div_fixup_f32 v22, v36, v73, v22
	v_rcp_f32_e32 v36, v47
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v34, -v45, v46, v40
	v_fmac_f32_e32 v37, v44, v43
	v_fma_f32 v44, -v39, v42, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v34, v38
	v_fma_f32 v35, -v41, v37, v35
	v_div_scale_f32 v41, null, v73, v73, v11
	v_fmac_f32_e32 v42, v44, v42
	v_fma_f32 v48, -v47, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v43, v37
	v_rcp_f32_e32 v44, v41
	v_fma_f32 v37, -v45, v46, v40
	v_div_scale_f32 v43, s1, v10, v73, v10
	v_fmac_f32_e32 v36, v48, v36
	v_div_scale_f32 v34, s4, v9, v73, v9
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v23, v35, v73, v23
	v_mul_f32_e32 v52, v43, v36
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v41, v44, 1.0
	v_mul_f32_e32 v40, v34, v42
	v_div_fmas_f32 v37, v37, v38, v46
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v47, v52, v43
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, s5, v11, v73, v11
	v_fma_f32 v48, -v39, v40, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v38, v36
	v_div_scale_f32 v38, null, v73, v73, v13
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v40, v48, v42
	v_div_fixup_f32 v24, v37, v73, v24
	v_fma_f32 v37, -v49, v53, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v41, v46, v45
	v_fma_f32 v34, -v39, v40, v34
	v_fma_f32 v39, -v47, v52, v43
	v_fmac_f32_e32 v53, v37, v53
	v_div_scale_f32 v37, s3, v12, v73, v12
	v_fmac_f32_e32 v46, v35, v44
	v_rcp_f32_e32 v35, v38
	v_div_fmas_f32 v34, v34, v42, v40
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v40, v37, v53
	v_div_fmas_f32 v36, v39, v36, v52
	v_fma_f32 v39, -v41, v46, v45
	v_div_scale_f32 v41, null, v73, v73, v14
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v34, v73, v9
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v42, -v38, v35, 1.0
	v_div_fmas_f32 v39, v39, v44, v46
	v_rcp_f32_e32 v43, v41
	v_fma_f32 v44, -v49, v40, v37
	v_div_fixup_f32 v10, v36, v73, v10
	v_fmac_f32_e32 v35, v42, v35
	v_div_scale_f32 v42, s1, v13, v73, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v44, v53
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v39, v73, v11
	v_mul_f32_e32 v34, v42, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v41, v43, 1.0
	v_fma_f32 v37, -v49, v40, v37
	v_div_scale_f32 v39, null, v73, v73, v15
	v_fma_f32 v44, -v38, v34, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, s4, v14, v73, v14
	v_div_fmas_f32 v37, v37, v53, v40
	v_fmac_f32_e32 v34, v44, v35
	v_rcp_f32_e32 v45, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v40, v36, v43
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v37, v73, v12
	v_fma_f32 v37, -v38, v34, v42
	v_div_scale_f32 v44, null, v73, v73, v16
	v_fma_f32 v38, -v41, v40, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v37, v35, v34
	v_div_scale_f32 v35, null, v73, v73, v1
	v_fma_f32 v42, -v39, v45, 1.0
	v_rcp_f32_e32 v46, v44
	v_fmac_f32_e32 v40, v38, v43
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v37, s1, v15, v73, v15
	v_fmac_f32_e32 v45, v42, v45
	v_div_scale_f32 v42, null, v73, v73, v2
	v_div_fixup_f32 v13, v34, v73, v13
	v_fma_f32 v36, -v41, v40, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v44, v46, 1.0
	v_rcp_f32_e32 v48, v42
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v47, -v35, v38, 1.0
	v_mul_f32_e32 v41, v37, v45
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v46, v34, v46
	v_div_scale_f32 v34, s3, v16, v73, v16
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v47, null, v73, v73, v3
	v_div_fmas_f32 v36, v36, v43, v40
	v_fma_f32 v40, -v39, v41, v37
	v_mul_f32_e32 v43, v34, v46
	v_div_scale_f32 v49, s4, v1, v73, v1
	v_fma_f32 v52, -v42, v48, 1.0
	v_rcp_f32_e32 v53, v47
	v_fmac_f32_e32 v41, v40, v45
	v_fma_f32 v40, -v44, v43, v34
	v_mul_f32_e32 v54, v49, v38
	v_fmac_f32_e32 v48, v52, v48
	v_div_scale_f32 v52, s5, v2, v73, v2
	v_div_fixup_f32 v14, v36, v73, v14
	v_fma_f32 v36, -v39, v41, v37
	v_fmac_f32_e32 v43, v40, v46
	v_fma_f32 v37, -v35, v54, v49
	v_mul_f32_e32 v39, v52, v48
	v_fma_f32 v40, -v47, v53, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v34, -v44, v43, v34
	v_fmac_f32_e32 v54, v37, v38
	v_fma_f32 v37, -v42, v39, v52
	v_fmac_f32_e32 v53, v40, v53
	v_div_scale_f32 v40, s1, v3, v73, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v35, v54, v49
	v_fmac_f32_e32 v39, v37, v48
	v_div_fmas_f32 v36, v36, v45, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v37, v40, v53
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, null, v73, v73, v4
	v_div_fmas_f32 v34, v34, v46, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v36, v73, v15
	v_div_fmas_f32 v35, v35, v38, v54
	v_fma_f32 v38, -v42, v39, v52
	v_fma_f32 v42, -v47, v37, v40
	v_rcp_f32_e32 v43, v41
	v_div_fixup_f32 v16, v34, v73, v16
	v_div_fixup_f32 v1, v35, v73, v1
	v_div_scale_f32 v35, null, v73, v73, v5
	v_fmac_f32_e32 v37, v42, v53
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v73, v73, v8
	v_div_fmas_f32 v38, v38, v48, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v47, v37, v40
	v_fma_f32 v36, -v41, v43, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v2, v38, v73, v2
	v_div_fmas_f32 v34, v34, v53, v37
	v_rcp_f32_e32 v37, v35
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, null, v73, v73, v6
	v_div_scale_f32 v38, null, v73, v73, v7
	v_div_scale_f32 v39, vcc_lo, v4, v73, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_rcp_f32_e32 v42, v38
	v_div_fixup_f32 v3, v34, v73, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v34, -v35, v37, 1.0
	v_mul_f32_e32 v44, v39, v43
	v_fma_f32 v53, -v45, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v34, v37
	v_div_scale_f32 v34, s1, v5, v73, v5
	v_fma_f32 v46, -v36, v40, 1.0
	v_fma_f32 v49, -v38, v42, 1.0
	v_fma_f32 v48, -v41, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v52, v34, v37 :: v_dual_fmac_f32 v47, v53, v47
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v46, s3, v6, v73, v6
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, s4, v7, v73, v7
	v_fmac_f32_e32 v44, v48, v43
	v_fma_f32 v48, -v35, v52, v34
	v_div_scale_f32 v53, s5, v8, v73, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v54, v46, v40 :: v_dual_mul_f32 v55, v49, v42
	v_fmac_f32_e32 v52, v48, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v56, v53, v47
	v_fma_f32 v39, -v41, v44, v39
	v_fma_f32 v41, -v36, v54, v46
	v_fma_f32 v48, -v38, v55, v49
	v_fma_f32 v34, -v35, v52, v34
	v_fma_f32 v35, -v45, v56, v53
	v_div_fmas_f32 v39, v39, v43, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v54, v41, v40 :: v_dual_fmac_f32 v55, v48, v42
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v56, v35, v47
	v_div_fmas_f32 v34, v34, v37, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v36, -v36, v54, v46
	v_fma_f32 v35, -v38, v55, v49
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v37, -v45, v56, v53
	v_div_fixup_f32 v5, v34, v73, v5
	v_div_fmas_f32 v36, v36, v40, v54
	s_mov_b32 vcc_lo, s4
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v34, s19, v51
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v42, v55
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v4, v39, v73, v4
	v_div_fmas_f32 v37, v37, v47, v56
	v_div_fixup_f32 v6, v36, v73, v6
	v_div_fixup_f32 v7, v35, v73, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v37, v73, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
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
	v_add_nc_u32_e32 v35, v34, v50
	v_add_nc_u32_e32 v34, s0, v34
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s19, v50
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 32, v50
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_add_lshl_u32 v35, v35, s0, 2
	v_add_lshl_u32 v38, v34, v50, 2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s19, v33
	v_cmp_gt_i32_e64 s1, s19, v36
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v37, 48, v50
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
.Ltmp38:
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
		.amdhsa_next_free_vgpr 146
		.amdhsa_next_free_sgpr 44
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
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 146
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8996
; TotalNumSgprs: 46
; NumVgprs: 146
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 146
; Occupancy: 9
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
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
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     146
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
