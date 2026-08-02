	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x60
	s_load_b64 s[36:37], s[0:1], 0x20
	v_dual_mov_b32 v44, 0x5410 :: v_dual_lshlrev_b32 v37, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v4, 1, v0
	v_mov_b32_e32 v76, 0xff800000
	s_clause 0x2
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s4, s[0:1], 0x68
	s_load_b64 s[24:25], s[0:1], 0x38
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 16, v37
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s5, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s5, v4
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s6, s5, s2
	v_dual_mov_b32 v45, 0x7632 :: v_dual_and_b32 v38, 15, v0
	s_mov_b32 s31, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v5
	s_mov_b32 s30, 0x7ffffffe
	v_mov_b32_e32 v24, 0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v43, v0, 4, 1
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[40:41], null, s26, v4, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s26, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s26, s6, v[40:41]
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v41, 56, v0
	v_dual_mov_b32 v29, v24 :: v_dual_lshlrev_b32 v42, 1, v0
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v47, 24, v0
	v_dual_mov_b32 v17, v24 :: v_dual_lshlrev_b32 v48, 3, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_bfe_i32 v49, v0, 3, 1
	v_mov_b32_e32 v28, v24
	v_mov_b32_e32 v21, v24
	v_and_or_b32 v51, v42, 30, v43
	buffer_load_b128 v[32:35], v1, s[28:31], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v4, 16, v38
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	v_xor_b32_e32 v57, v37, v47
	v_and_b32_e32 v42, 24, v42
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v53, s6, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s5, v1
	v_and_b32_e32 v37, 48, v37
	v_mov_b32_e32 v25, v24
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v53
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v31, v24 :: v_dual_and_b32 v46, 7, v0
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v47, 48, v48
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_mov_b32_e32 v16, v24
	v_dual_mov_b32 v23, v24 :: v_dual_and_b32 v48, 0x210, v49
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s3, s1, 0x10007
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v39, v1, s[28:31], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v49, 2, v51
	v_lshl_or_b32 v58, v38, 5, v42
	v_xor_b32_e32 v37, v37, v41
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s1, s1, s3
	v_dual_mov_b32 v19, v24 :: v_dual_lshlrev_b32 v36, 3, v46
	s_bfe_i32 s1, s1, 0x80000
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v50, 1, v41
	v_lshl_or_b32 v38, v46, 6, v47
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v47, 4, v49
	v_xor_b32_e32 v52, 8, v58
	v_lshl_or_b32 v59, v46, 9, v37
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s1, s1
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v54, 16, v0
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s1, s1, 10
	v_dual_mov_b32 v9, v24 :: v_dual_add_nc_u32 v62, 0, v52
	s_and_b32 s34, s1, 0xfffff800
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s27, v36
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[41:42], null, s27, v50, v[36:37]
	v_xor_b32_e32 v36, 0x90, v59
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s0, s0, 10
	v_mov_b32_e32 v13, v24
	s_and_b32 s0, s0, 0xffffc000
	v_xor_b32_e32 v60, v38, v48
	s_add_i32 s34, s34, s0
	v_xor_b32_e32 v37, 0x120, v59
	v_xor_b32_e32 v38, 0x1b0, v59
	v_add_nc_u32_e32 v66, 0, v36
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v67, 0, v37
	v_dual_mov_b32 v15, v24 :: v_dual_add_nc_u32 v68, 0, v38
	v_xor_b32_e32 v46, 16, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v44, 0x1054, v44, s0
	v_cndmask_b32_e64 v45, 0x3276, v45, s0
	v_mov_b32_e32 v8, v24
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v69, 0, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v44, v44, 8, v44
	v_lshl_or_b32 v46, v45, 8, v45
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s3, s4, 0x3fb8aa3b
	v_or_b32_e32 v65, s34, v43
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[42:43], null, s27, 3, v[41:42]
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v7, v24
	v_xor_b32_e32 v51, 8, v57
	v_mov_b32_e32 v18, v24
	v_xor_b32_e32 v55, 16, v58
	v_xor_b32_e32 v56, 24, v58
	v_xor_b32_e32 v48, 32, v60
	v_add_nc_u32_e32 v61, 0, v51
	v_xor_b32_e32 v50, 48, v60
	v_xor_b32_e32 v51, 0x420, v60
	v_xor_b32_e32 v73, 0x430, v60
	v_xor_b32_e32 v74, 0x410, v60
	v_dual_mov_b32 v20, v24 :: v_dual_add_nc_u32 v63, 0, v55
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v71, 0, v50
	v_dual_mov_b32 v11, v24 :: v_dual_add_nc_u32 v64, 0, v56
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v73, 0, v73
	v_dual_mov_b32 v1, v24 :: v_dual_add_nc_u32 v70, 0, v48
	v_dual_mov_b32 v3, v24 :: v_dual_add_nc_u32 v72, 0, v51
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v74, 0, v74
	v_mov_b32_e32 v6, v24
	s_mov_b32 s16, 0
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s33, 0x76543210
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s28, s10
	s_mov_b32 s29, s11
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	s_mov_b32 s11, s16
	v_mov_b32_e32 v55, v24
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v52, v49, v32
	ds_bpermute_b32 v32, v47, v32
	ds_bpermute_b32 v36, v49, v33
	ds_bpermute_b32 v33, v47, v33
	ds_bpermute_b32 v37, v49, v34
	ds_bpermute_b32 v34, v47, v34
	ds_bpermute_b32 v38, v49, v35
	ds_bpermute_b32 v35, v47, v35
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v43, v32, v52, s0
	v_cndmask_b32_e64 v45, v52, v32, s0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v0, v24 :: v_dual_lshlrev_b32 v39, 16, v39
	v_and_b32_e32 v32, 0x540054, v44
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v44, v33, v36, s0
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v47, v34, v37, s0
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v75, s3, v39
	v_and_b32_e32 v39, 0x760076, v46
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v46, v36, v33, s0
	v_lshl_or_b32 v32, v32, 4, v32
	v_mov_b32_e32 v4, v24
	v_cndmask_b32_e64 v49, v37, v34, s0
	v_lshl_or_b32 v33, v39, 4, v39
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v48, v35, v38, s0
	v_cndmask_b32_e64 v50, v38, v35, s0
	v_and_b32_e32 v51, 0x5040504, v32
	v_and_b32_e32 v52, 0x7060706, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s3, s11, s34
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v85, s27, v41
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[83:84], null, s3, s26, v[40:41]
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v86, s27, 1, v41
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s4, s3, s27
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v39, s23 :: v_dual_add_nc_u32 v56, 0, v57
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v84, s4, v41, 1
	v_add_lshl_u32 v85, s4, v85, 1
	v_add_lshl_u32 v86, s4, v86, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v87, s4, v42, 1
	v_cndmask_b32_e64 v119, 0x80000000, v84, s1
	v_cndmask_b32_e64 v120, 0x80000000, v85, s1
	v_cndmask_b32_e64 v88, 0x80000000, v86, s1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[83:86], v83, s[28:31], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v87, 0x80000000, v87, s1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v38, s22 :: v_dual_add_nc_u32 v77, 0, v58
	v_dual_mov_b32 v37, s21 :: v_dual_mov_b32 v36, s20
	v_dual_mov_b32 v35, s19 :: v_dual_mov_b32 v34, s18
	v_dual_mov_b32 v33, s17 :: v_dual_mov_b32 v32, s16
	v_or_b32_e32 v80, 2, v65
	v_or_b32_e32 v81, 4, v65
	v_or_b32_e32 v82, 6, v65
	v_or_b32_e32 v115, 8, v65
	v_or_b32_e32 v116, 10, v65
	v_or_b32_e32 v117, 12, v65
	v_or_b32_e32 v118, 14, v65
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v79, s11, v65, 1
	v_add_lshl_u32 v80, s11, v80, 1
	v_add_lshl_u32 v81, s11, v81, 1
	v_add_lshl_u32 v82, s11, v82, 1
	v_or_b32_e32 v78, 16, v65
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v56, v[83:84]
	ds_store_b64 v61, v[85:86]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[103:106], v88, s[12:15], 0 offen
	buffer_load_b128 v[99:102], v87, s[12:15], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[107:110], v77 offset1:1
	ds_load_2addr_stride64_b64 v[111:114], v62 offset1:1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v78, s11, v78, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[83:90], v[107:108], v[43:44], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[109:110], v[43:44], v[32:39] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[32:35], v63 offset1:1
	ds_load_2addr_stride64_b64 v[36:39], v64 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[83:90], v[111:112], v[47:48], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[113:114], v[47:48], v[91:98] neg_lo:[1,1,0]
	v_or_b32_e32 v113, 26, v65
	v_or_b32_e32 v114, 28, v65
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[83:90], v[32:33], v[45:46], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[34:35], v[45:46], v[91:98] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[83:90], v[36:37], v[49:50], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[38:39], v[49:50], v[91:98] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[32:35], v120, s[12:15], 0 offen
	buffer_load_b128 v[36:39], v119, s[12:15], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v77, v84
	v_cvt_f32_i32_e32 v108, v91
	v_cvt_f32_i32_e32 v110, v93
	v_cvt_f32_i32_e32 v112, v95
	v_cvt_f32_i32_e32 v56, v83
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_mul_f32_e32 v56, v75, v56
	v_cvt_f32_i32_e32 v107, v90
	v_cvt_f32_i32_e32 v109, v92
	v_cvt_f32_i32_e32 v111, v94
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v84.l, v103.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v84.h, v99.l
	v_mov_b16_e32 v99.l, v103.h
	v_mov_b16_e32 v91.l, v104.l
	v_mov_b16_e32 v91.h, v100.l
	v_mov_b16_e32 v100.l, v104.h
	v_mov_b16_e32 v93.l, v105.l
	v_mov_b16_e32 v93.h, v101.l
	v_mov_b16_e32 v101.l, v105.h
	v_mov_b16_e32 v95.h, v102.l
	v_mov_b16_e32 v102.l, v106.h
	v_mov_b16_e32 v95.l, v106.l
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v103, s11, v115, 1
	v_add_lshl_u32 v104, s11, v116, 1
	v_add_lshl_u32 v105, s11, v117, 1
	v_add_lshl_u32 v106, s11, v118, 1
	s_clause 0x7
	buffer_load_u16 v79, v79, s[36:39], 0 offen
	buffer_load_u16 v80, v80, s[36:39], 0 offen
	buffer_load_u16 v81, v81, s[36:39], 0 offen
	buffer_load_u16 v82, v82, s[36:39], 0 offen
	buffer_load_u16 v103, v103, s[36:39], 0 offen
	buffer_load_u16 v104, v104, s[36:39], 0 offen
	buffer_load_u16 v105, v105, s[36:39], 0 offen
	buffer_load_u16 v106, v106, s[36:39], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v97, v75, v97
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v83.h, v32.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v32.l, v36.h
	v_mov_b16_e32 v83.l, v36.l
	v_or_b32_e32 v36, 18, v65
	v_mov_b16_e32 v90.h, v33.l
	v_mov_b16_e32 v33.l, v37.h
	v_mov_b16_e32 v90.l, v37.l
	v_or_b32_e32 v37, 20, v65
	v_mov_b16_e32 v92.h, v34.l
	v_mov_b16_e32 v34.l, v38.h
	v_mov_b16_e32 v92.l, v38.l
	v_or_b32_e32 v38, 22, v65
	v_mov_b16_e32 v94.l, v39.l
	v_mov_b16_e32 v94.h, v35.l
	v_mov_b16_e32 v35.l, v39.h
	v_or_b32_e32 v39, 24, v65
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v36, s11, v36, 1
	v_add_lshl_u32 v37, s11, v37, 1
	v_add_lshl_u32 v38, s11, v38, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v39, s11, v39, 1
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v79, 16, v79
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v79, v56, v79 :: v_dual_lshlrev_b32 v82, 16, v82
	v_dual_mul_f32 v56, v75, v77 :: v_dual_lshlrev_b32 v77, 16, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v80, v56, v77
	v_mul_f32_e32 v56, v75, v85
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v77, 16, v81
	v_or_b32_e32 v85, 30, v65
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v81, v56, v77
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v77, v75, v86 :: v_dual_lshlrev_b32 v86, 16, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v85, s11, v85, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v103, 0, v59
	v_mov_b16_e32 v56.h, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v82, v77, v82 :: v_dual_mul_f32 v77, v75, v87
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v87, 16, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v115.h, v56.h
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v86, v77, v86 :: v_dual_mul_f32 v77, v75, v88
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v88, s11, v114, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v104, v77, v87 :: v_dual_add_nc_u32 v77, 0, v60
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v87, s11, v113, 1
	s_clause 0x7
	buffer_load_u16 v78, v78, s[36:39], 0 offen
	buffer_load_u16 v36, v36, s[36:39], 0 offen
	buffer_load_u16 v37, v37, s[36:39], 0 offen
	buffer_load_u16 v38, v38, s[36:39], 0 offen
	buffer_load_u16 v39, v39, s[36:39], 0 offen
	buffer_load_u16 v113, v87, s[36:39], 0 offen
	buffer_load_u16 v114, v88, s[36:39], 0 offen
	buffer_load_u16 v85, v85, s[36:39], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v87, v75, v89
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v88, 16, v105
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v89, v75, v109
	v_mul_f32_e32 v109, v75, v111
	v_mul_f32_e32 v96, v75, v96
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v105, v87, v88
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v87, v75, v107 :: v_dual_lshlrev_b32 v88, 16, v106
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v78, 16, v78
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v106, v87, v88
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v88, v75, v108 :: v_dual_lshlrev_b32 v37, 16, v37
	v_mul_f32_e32 v108, v75, v110
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v110, v75, v112 :: v_dual_lshlrev_b32 v39, 16, v39
	v_mul_f32_e32 v111, v75, v98
	v_dual_mul_f32 v107, v89, v36 :: v_dual_lshlrev_b32 v38, 16, v38
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v112, 16, v113
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v98, v32 :: v_dual_lshlrev_b32 v113, 16, v114
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v36, v102 :: v_dual_lshlrev_b32 v85, 16, v85
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v32, v108, v37 :: v_dual_mul_f32 v37, v109, v38
	v_dual_mul_f32 v38, v110, v39 :: v_dual_mul_f32 v39, v96, v112
	v_mul_f32_e32 v96, v97, v113
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v103, v[83:84], v[98:99] offset1:8
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v98, 0xff800000, v80, s2
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v99, v33 :: v_dual_mul_f32 v78, v88, v78
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v97, 0xff800000, v79, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v85, v111, v85
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v102, 0xff800000, v82, s2
	v_cndmask_b32_e64 v103, 0xff800000, v86, s2
	v_cndmask_b32_e64 v108, 0xff800000, v104, s2
	v_cndmask_b32_e64 v109, 0xff800000, v81, s2
	v_cndmask_b32_e64 v79, 0xff800000, v107, s2
	v_cndmask_b32_e64 v80, 0xff800000, v32, s2
	v_cndmask_b32_e64 v82, 0xff800000, v38, s2
	v_cndmask_b32_e64 v83, 0xff800000, v39, s2
	v_cndmask_b32_e64 v84, 0xff800000, v96, s2
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v66, v[90:91], v[99:100] offset1:8
	v_mov_b32_e32 v100, v34
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v81, 0xff800000, v37, s2
	v_cndmask_b32_e64 v96, 0xff800000, v105, s2
	v_cndmask_b32_e64 v110, 0xff800000, v106, s2
	v_cndmask_b32_e64 v86, 0xff800000, v78, s2
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v32, v97, v98
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v85, 0xff800000, v85, s2
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v102, v103, v108
	v_max3_f32 v34, v79, v80, v81
	v_max3_f32 v37, v82, v83, v84
	v_max3_f32 v78, v96, v110, v86
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v67, v[92:93], v[100:101] offset1:8
	ds_store_2addr_b64 v68, v[94:95], v[35:36] offset1:8
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v90, v32, v109, v33
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v87.h, v56.h
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v91, v34, v37, v85
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v88.h, v56.h
	v_mov_b16_e32 v89.h, v56.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v78, v90, v78, v91
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[32:35], v77
	ds_load_b128 v[36:39], v69
	ds_load_b128 v[104:107], v69 offset:2048
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v90, v78, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v78, v76, v78, v90
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v90, v98, v78
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v100, v76, v78
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v82, v82, v78
	v_sub_f32_e32 v84, v84, v78
	v_sub_f32_e32 v79, v79, v78
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v90, v90
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v100, v100
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v83, v83, v78
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v79, v79
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v81, v81, v78
	v_sub_f32_e32 v80, v80, v78
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v83
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v85, v85, v78
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v90, 0, v90, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v81, v81
	v_exp_f32_e32 v80, v80
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v82, 0, v82, s2
	v_cndmask_b32_e64 v84, 0, v84, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v56.l, v90.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v91, v97, v78
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v90, v90
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s2
	v_cndmask_b32_e64 v83, 0, v83, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v92, 1, v56
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v91, v91
	v_exp_f32_e32 v85, v85
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v80, s2
	v_cndmask_b32_e64 v81, 0, v81, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v92, v90, v92, 0x7fff
	v_cmp_o_f32_e64 s10, v84, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b16 v94.h, 0x7fff, v92.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v91, 0, v91, s2
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v85, 0, v85, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v115.l, v91.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v91, v91
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v125, 0, v100, s3
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v95, v102, v78
	v_sub_f32_e32 v97, v103, v78
	v_dual_sub_f32 v98, v108, v78 :: v_dual_and_b32 v93, 1, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v125
	v_mul_f32_e32 v24, v24, v125
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v95, v95
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v93, v91, v93, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v98, v98
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v125
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v97, v97
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v96, v96, v78 :: v_dual_mul_f32 v27, v27, v125
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v94.l, 0x7fff, v93.h, s4
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v99, v110, v78 :: v_dual_mul_f32 v28, v28, v125
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v95, s2
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v96, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_permlanex16_b32 v93, v94, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v99, v99
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v121, 0, v97, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v56.l, v120.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v122, 0, v98, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v92, v93, v94, v51
	v_perm_b32 v93, v93, v94, v52
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v94, v109, v78
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v120, v120
	v_mov_b16_e32 v88.l, v121.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v123, 0, v96, s2
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v94, v94
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v124, 0, v99, s2
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v31, v31, v125 :: v_dual_and_b32 v88, 1, v88
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v122, v122
	v_cmp_o_f32_e64 s6, v121, v121
	v_mov_b16_e32 v89.l, v123.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v88, v121, v88, 0x7fff
	v_cmp_o_f32_e64 s7, v124, v124
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v94, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v94, 1, v56
	v_mov_b16_e32 v56.l, v122.h
	v_and_b32_e32 v89, 1, v89
	v_cndmask_b16 v88.l, 0x7fff, v88.h, s6
	v_mov_b16_e32 v87.l, v76.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v76, v76
	v_add3_u32 v94, v120, v94, 0x7fff
	v_cmp_o_f32_e64 s8, v123, v123
	v_and_b32_e32 v87, 1, v87
	v_add3_u32 v89, v123, v89, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v125
	v_mul_f32_e32 v29, v29, v125
	v_mul_f32_e32 v23, v23, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v87, v76, v87, 0x7fff
	v_cndmask_b16 v89.l, 0x7fff, v89.h, s8
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v125
	v_mul_f32_e32 v18, v18, v125
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[100:103], v77 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v87.l, 0x7fff, v87.h, s4
	v_cndmask_b16 v87.h, 0x7fff, v94.h, s3
	v_and_b32_e32 v94, 1, v56
	v_mov_b16_e32 v56.l, v124.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v125
	v_mul_f32_e32 v16, v16, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v95, v87, s33, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v94, v122, v94, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v125
	v_mul_f32_e32 v22, v22, v125
	v_mul_f32_e32 v10, v10, v125
	v_dual_mul_f32 v11, v11, v125 :: v_dual_add_f32 v76, v76, v120
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v88.h, 0x7fff, v94.h, s5
	v_and_b32_e32 v94, 1, v56
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v125
	v_mul_f32_e32 v13, v13, v125
	v_mul_f32_e32 v14, v14, v125
	v_mul_f32_e32 v0, v0, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v94, v124, v94, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v125
	v_mul_f32_e32 v4, v4, v125
	v_mul_f32_e32 v5, v5, v125
	v_mul_f32_e32 v6, v6, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v89.h, 0x7fff, v94.h, s7
	v_perm_b32 v94, v95, v87, v51
	v_perm_b32 v95, v95, v87, v52
	v_permlanex16_b32 v87, v88, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v99, v89, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[108:111], v77 offset:1024
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v56.l, v79.h
	v_perm_b32 v96, v87, v88, v51
	v_perm_b32 v97, v87, v88, v52
	v_perm_b32 v98, v99, v89, v51
	v_perm_b32 v99, v99, v89, v52
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v87, v121, v122 :: v_dual_add_f32 v88, v123, v124
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v82, v82
	v_cmp_o_f32_e64 s6, v80, v80
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[32:39], v[92:99], v[24:31]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[36:39], v73
	ds_load_b128 v[32:35], v72
	ds_load_b128 v[112:115], v72 offset:2048
	ds_load_b128 v[116:119], v73 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v79, v79
	v_cmp_o_f32_e64 s5, v81, v81
	v_cmp_o_f32_e64 s7, v83, v83
	v_cmp_o_f32_e64 s9, v85, v85
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[32:39], v[92:99], v[16:23]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.h, v56.h
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.h, v56.h
	v_mov_b16_e32 v39.h, v56.h
	v_mov_b16_e32 v38.l, v82.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.l, v84.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v125
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[32:35], v77 offset:3072
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[100:107], v[92:99], v[8:15]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_and_b32_e32 v38, 1, v38
	v_and_b32_e32 v39, 1, v39
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[112:119], v[92:99], v[0:7]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[92:95], v70
	v_mov_b32_e32 v77, v55
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v55, v86, v78
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.h, v56.h
	v_mov_b16_e32 v37.l, v80.h
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v86, v91, v90 :: v_dual_add_f32 v91, v82, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v55
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v96, v84, v85
	v_dual_add_f32 v76, v86, v76 :: v_dual_and_b32 v37, 1, v37
	v_add_f32_e32 v86, v87, v88
.Ltmp18:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v38, v82, v38, 0x7fff
	v_add3_u32 v82, v84, v39, 0x7fff
	v_and_b32_e32 v39, 1, v56
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v88, v91, v96
.Ltmp20:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v37, v80, v37, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v55, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v56.l, v81.h
	v_cndmask_b16 v84.l, 0x7fff, v37.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v36.l, v55.h
	v_cmp_o_f32_e64 s4, v55, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v89, v55, v79 :: v_dual_and_b32 v36, 1, v36
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v36, v55, v36, 0x7fff
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v76, v86
	v_add_f32_e32 v90, v80, v81
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v86.l, 0x7fff, v38.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s4
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v87, v89, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v76, v87, v88
	v_add_f32_e32 v37, v55, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v37, s33, 0xfedcba98 op_sel:[1,0]
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v37, v38
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v38, v79, v39, 0x7fff
	v_and_b32_e32 v37, 1, v56
	v_mov_b16_e32 v56.l, v83.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v55, v77, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s3
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s11, 32
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v39, 1, v56
	v_mov_b16_e32 v56.l, v85.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s11, 0x7e0
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v76, v36, s33, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s11, s3
	v_add3_u32 v39, v83, v39, 0x7fff
	v_and_b32_e32 v38, 1, v56
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v79, v76, v36, v51
	v_perm_b32 v80, v76, v36, v52
	v_mov_b32_e32 v76, v78
	v_add3_u32 v37, v81, v37, 0x7fff
	v_add3_u32 v81, v85, v38, 0x7fff
	v_cndmask_b16 v86.h, 0x7fff, v39.h, s7
	v_cndmask_b16 v78.l, 0x7fff, v82.h, s10
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v84.h, 0x7fff, v37.h, s5
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[100:103], v70 offset:2048
	ds_load_b128 v[96:99], v71
	ds_load_b128 v[104:107], v71 offset:2048
	ds_load_b128 v[112:115], v74
	ds_load_b128 v[36:39], v74 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v78.h, 0x7fff, v81.h, s9
	v_permlanex16_b32 v82, v84, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v87, v78, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v81, v82, v84, v51
	v_perm_b32 v82, v82, v84, v52
	v_permlanex16_b32 v84, v86, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v85, v87, v78, v51
	v_perm_b32 v83, v84, v86, v51
	v_perm_b32 v84, v84, v86, v52
	v_perm_b32 v86, v87, v78, v52
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[92:99], v[79:86], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[108:115], v[79:86], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[100:107], v[79:86], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[32:39], v[79:86], v[0:7]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v32, null, v55, v55, v24
	v_div_scale_f32 v33, null, v55, v55, v25
	v_div_scale_f32 v36, null, v55, v55, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v32
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, vcc_lo, v24, v55, v24
	v_div_scale_f32 v38, s1, v25, v55, v25
	v_rcp_f32_e32 v39, v36
	v_div_scale_f32 v43, null, v55, v55, v27
	v_div_scale_f32 v47, null, v55, v55, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v32, v34, 1.0
	v_fma_f32 v41, -v33, v35, 1.0
	v_div_scale_f32 v42, s3, v26, v55, v26
	v_div_scale_f32 v49, null, v55, v55, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v34, v40, v34 :: v_dual_fmac_f32 v35, v41, v35
	v_rcp_f32_e32 v41, v43
	v_fma_f32 v44, -v36, v39, 1.0
	v_div_scale_f32 v40, s4, v27, v55, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v45, v37, v34 :: v_dual_mul_f32 v46, v38, v35
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v33, v46, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v43, v41, 1.0
	v_dual_fmac_f32 v46, v48, v35 :: v_dual_fmac_f32 v41, v50, v41
	v_rcp_f32_e32 v48, v47
	v_fmac_f32_e32 v39, v44, v39
	v_fma_f32 v44, -v32, v45, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v33, v46, v38
	v_div_scale_f32 v38, null, v55, v55, v30
	v_fmac_f32_e32 v45, v44, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v45, v37
	v_div_fmas_f32 v32, v32, v34, v45
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v34, v49
	v_div_fmas_f32 v33, v33, v35, v46
	v_fma_f32 v35, -v47, v48, 1.0
	v_div_fixup_f32 v24, v32, v55, v24
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v55
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v25, v33, v55, v25
	v_fmac_f32_e32 v48, v35, v48
	v_mul_f32_e32 v44, v42, v39
	v_div_scale_f32 v35, s5, v28, v55, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v36, v44, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v56.l, v25.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v44, v37, v39 :: v_dual_mul_f32 v37, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v36, v44, v42
	v_fma_f32 v33, -v43, v37, v40
	v_fma_f32 v36, -v49, v34, 1.0
	v_div_scale_f32 v42, null, v55, v55, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v39, v44
	v_dual_fmac_f32 v37, v33, v41 :: v_dual_fmac_f32 v34, v36, v34
	v_rcp_f32_e32 v36, v38
	v_mul_f32_e32 v33, v35, v48
	v_div_scale_f32 v39, s3, v29, v55, v29
	v_rcp_f32_e32 v44, v42
	v_div_fixup_f32 v26, v32, v55, v26
	v_fma_f32 v32, -v43, v37, v40
	v_fma_f32 v40, -v47, v33, v35
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v45, -v38, v36, 1.0
	v_mul_f32_e32 v43, v39, v34
	v_div_fmas_f32 v32, v32, v41, v37
	v_fmac_f32_e32 v33, v40, v48
	v_div_scale_f32 v40, s4, v30, v55, v30
	v_fmac_f32_e32 v36, v45, v36
	v_fma_f32 v37, -v49, v43, v39
	v_fma_f32 v41, -v42, v44, 1.0
	v_div_fixup_f32 v27, v32, v55, v27
	v_fma_f32 v32, -v47, v33, v35
	v_mul_f32_e32 v35, v40, v36
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v44, v41, v44
	v_fmac_f32_e32 v43, v37, v34
	v_div_scale_f32 v37, s6, v31, v55, v31
	v_div_scale_f32 v41, null, v55, v55, v16
	v_div_fmas_f32 v32, v32, v48, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v49, v43, v39
	v_fma_f32 v39, -v38, v35, v40
	v_rcp_f32_e32 v45, v41
	v_mul_f32_e32 v46, v37, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v32, v32, v55, v28
	v_fmac_f32_e32 v35, v39, v36
	v_div_scale_f32 v47, null, v55, v55, v17
	v_fma_f32 v39, -v42, v46, v37
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v39, v44
	v_div_fmas_f32 v33, v33, v34, v43
	v_fma_f32 v43, -v41, v45, 1.0
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v34, v47
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v32, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v28, v33, v55, v29
	v_fma_f32 v29, -v38, v35, v40
	v_fmac_f32_e32 v45, v43, v45
	v_div_scale_f32 v33, s3, v16, v55, v16
	v_div_scale_f32 v43, null, v55, v55, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v29, v29, v36, v35
	v_fma_f32 v35, -v42, v46, v37
	v_mul_f32_e32 v36, v33, v45
	v_div_scale_f32 v37, null, v55, v55, v18
	v_fma_f32 v38, -v47, v34, 1.0
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v41, v36, v33
	v_rcp_f32_e32 v39, v37
	v_div_fmas_f32 v35, v35, v44, v46
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s4, v17, v55, v17
	v_fmac_f32_e32 v36, v40, v45
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v30, v29, v55, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v42, v38, v34
	v_div_fixup_f32 v29, v35, v55, v31
	v_fma_f32 v40, -v37, v39, 1.0
	v_fma_f32 v33, -v41, v36, v33
	v_div_scale_f32 v41, null, v55, v55, v20
	v_rcp_f32_e32 v35, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v40, v39
	v_div_fmas_f32 v33, v33, v45, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v40, v41
	v_div_scale_f32 v46, null, v55, v55, v21
	v_fma_f32 v31, -v47, v42, v38
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v33, v55, v16
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v43, v35, 1.0
	v_fmac_f32_e32 v42, v31, v34
	v_div_scale_f32 v31, s5, v18, v55, v18
	v_fma_f32 v45, -v41, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v44, v35
	v_fma_f32 v36, -v47, v42, v38
	v_div_scale_f32 v44, s3, v19, v55, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v45, v40
	v_rcp_f32_e32 v45, v46
	v_div_fmas_f32 v34, v36, v34, v42
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v47, s4, v20, v55, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v34, v55, v17
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v34, v47, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v46, v45, 1.0
	v_mul_f32_e32 v38, v31, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v38, v31
	v_div_scale_f32 v48, s6, v21, v55, v21
	v_fmac_f32_e32 v38, v36, v39
	v_div_scale_f32 v36, null, v55, v55, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v37, v38, v31
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v31, v31, v39, v38
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v31, v55, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v36, v37, 1.0
	v_dual_mul_f32 v42, v44, v35 :: v_dual_fmac_f32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v43, v42, v44
	v_div_scale_f32 v39, null, v55, v55, v23
	v_fmac_f32_e32 v42, v33, v35
	v_fma_f32 v33, -v41, v34, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v43, v42, v44
	v_dual_fmac_f32 v34, v33, v40 :: v_dual_mul_f32 v33, v48, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v38, v35, v42
	v_fma_f32 v38, -v41, v34, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v46, v33, v48
	v_div_scale_f32 v42, s3, v22, v55, v22
	v_div_fmas_f32 v34, v38, v40, v34
	v_rcp_f32_e32 v38, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v41, v45
	v_div_fixup_f32 v19, v35, v55, v19
	v_div_scale_f32 v35, null, v55, v55, v8
	v_div_fixup_f32 v18, v34, v55, v20
	v_fma_f32 v20, -v46, v33, v48
	s_mov_b32 vcc_lo, s6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v39, v38, 1.0
	v_div_fmas_f32 v20, v20, v45, v33
	v_rcp_f32_e32 v33, v35
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, null, v55, v55, v9
	v_div_fixup_f32 v20, v20, v55, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v41
	v_mul_f32_e32 v40, v42, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v36, v40, v42
	v_fmac_f32_e32 v40, v34, v37
	v_div_scale_f32 v34, s4, v23, v55, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v36, v40, v42
	v_mul_f32_e32 v36, v34, v38
	v_fma_f32 v42, -v35, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v37, v40
	v_fma_f32 v37, -v39, v36, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v42, v33
	v_div_scale_f32 v42, null, v55, v55, v10
	v_div_scale_f32 v40, s3, v8, v55, v8
	v_fmac_f32_e32 v36, v37, v38
	v_fma_f32 v37, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v42
	v_div_fixup_f32 v21, v21, v55, v22
	v_mul_f32_e32 v22, v40, v33
	v_fma_f32 v34, -v39, v36, v34
	v_fmac_f32_e32 v43, v37, v43
	v_div_scale_f32 v37, s5, v9, v55, v9
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v39, -v35, v22, v40
	v_div_fmas_f32 v34, v34, v38, v36
	v_mul_f32_e32 v36, v37, v43
	v_fma_f32 v38, -v42, v44, 1.0
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v22, v39, v33
	v_div_scale_f32 v39, null, v55, v55, v11
	v_fma_f32 v45, -v41, v36, v37
	v_fmac_f32_e32 v44, v38, v44
	v_div_scale_f32 v38, s4, v10, v55, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v39
	v_div_fixup_f32 v23, v34, v55, v23
	v_fma_f32 v34, -v35, v22, v40
	v_dual_fmac_f32 v36, v45, v43 :: v_dual_mul_f32 v35, v38, v44
	v_div_scale_f32 v40, null, v55, v55, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v34, v33, v22
	v_fma_f32 v33, -v41, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v42, v35, v38
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v37, -v39, v46, 1.0
	v_div_fixup_f32 v8, v22, v55, v8
	v_div_fmas_f32 v33, v33, v43, v36
	v_fmac_f32_e32 v35, v34, v44
	v_rcp_f32_e32 v34, v40
	v_div_scale_f32 v36, null, v55, v55, v13
	v_fmac_f32_e32 v46, v37, v46
	v_div_scale_f32 v37, s3, v11, v55, v11
	v_div_fixup_f32 v9, v33, v55, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v33, v36
	v_fma_f32 v22, -v42, v35, v38
	v_mul_f32_e32 v38, v37, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v41, -v40, v34, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v45, null, v55, v55, v15
	v_div_fmas_f32 v22, v22, v44, v35
	v_fma_f32 v35, -v39, v38, v37
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s4, v12, v55, v12
	v_fma_f32 v42, -v36, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v35, v46
	v_div_scale_f32 v35, null, v55, v55, v14
	v_mul_f32_e32 v43, v41, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v42, v33
	v_div_scale_f32 v42, s5, v13, v55, v13
	v_rcp_f32_e32 v44, v35
	v_div_fixup_f32 v10, v22, v55, v10
	v_fma_f32 v22, -v39, v38, v37
	v_fma_f32 v37, -v40, v43, v41
	v_mul_f32_e32 v39, v42, v33
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v22, v22, v46, v38
	v_fmac_f32_e32 v43, v37, v34
	v_fma_f32 v37, -v36, v39, v42
	v_fma_f32 v38, -v35, v44, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v11, v22, v55, v11
	v_fma_f32 v22, -v40, v43, v41
	v_fmac_f32_e32 v39, v37, v33
	v_div_scale_f32 v40, null, v55, v55, v0
	v_fmac_f32_e32 v44, v38, v44
	v_rcp_f32_e32 v37, v45
	v_div_scale_f32 v38, s3, v14, v55, v14
	v_div_fmas_f32 v22, v22, v34, v43
	v_fma_f32 v34, -v36, v39, v42
	v_rcp_f32_e32 v42, v40
	v_div_scale_f32 v43, null, v55, v55, v1
	v_mul_f32_e32 v36, v38, v44
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v45, v37, 1.0
	v_div_fmas_f32 v33, v34, v33, v39
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v34, -v35, v36, v38
	v_div_fixup_f32 v12, v22, v55, v12
	v_fma_f32 v46, -v40, v42, 1.0
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s4, v15, v55, v15
	v_fmac_f32_e32 v36, v34, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v42, v46, v42
	v_div_scale_f32 v46, null, v55, v55, v2
	v_div_fixup_f32 v13, v33, v55, v13
	v_fma_f32 v33, -v43, v39, 1.0
	v_mul_f32_e32 v22, v41, v37
	v_div_scale_f32 v34, s5, v0, v55, v0
	v_fma_f32 v35, -v35, v36, v38
	v_rcp_f32_e32 v38, v46
	v_fmac_f32_e32 v39, v33, v39
	v_div_scale_f32 v33, s6, v1, v55, v1
	v_fma_f32 v47, -v45, v22, v41
	v_mul_f32_e32 v48, v34, v42
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v49, v33, v39
	v_div_fmas_f32 v35, v35, v44, v36
	v_fmac_f32_e32 v22, v47, v37
	v_fma_f32 v36, -v40, v48, v34
	v_fma_f32 v47, -v46, v38, 1.0
	v_fma_f32 v44, -v43, v49, v33
	v_div_fixup_f32 v14, v35, v55, v14
	v_fma_f32 v35, -v45, v22, v41
	v_fmac_f32_e32 v48, v36, v42
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v36, s3, v2, v55, v2
	v_fmac_f32_e32 v49, v44, v39
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v41, null, v55, v55, v3
	v_div_fmas_f32 v22, v35, v37, v22
	v_mul_f32_e32 v35, v36, v38
	v_fma_f32 v34, -v40, v48, v34
	v_fma_f32 v33, -v43, v49, v33
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v37, v41
	v_fma_f32 v40, -v46, v35, v36
	v_div_fmas_f32 v34, v34, v42, v48
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v15, v22, v55, v15
	v_div_fmas_f32 v33, v33, v39, v49
	v_fmac_f32_e32 v35, v40, v38
	v_div_fixup_f32 v0, v34, v55, v0
	v_div_scale_f32 v39, null, v55, v55, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v33, v55, v1
	v_div_scale_f32 v33, null, v55, v55, v4
	v_fma_f32 v22, -v41, v37, 1.0
	v_fma_f32 v34, -v46, v35, v36
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v36, v33
	v_rcp_f32_e32 v40, v39
	v_fmac_f32_e32 v37, v22, v37
	v_div_scale_f32 v22, s4, v3, v55, v3
	v_div_fmas_f32 v34, v34, v38, v35
	v_div_scale_f32 v35, null, v55, v55, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, v22, v37
	v_div_scale_f32 v44, null, v55, v55, v7
	v_rcp_f32_e32 v42, v35
	v_div_fixup_f32 v2, v34, v55, v2
	v_fma_f32 v34, -v33, v36, 1.0
	v_fma_f32 v43, -v41, v38, v22
	v_fma_f32 v45, -v39, v40, 1.0
	v_rcp_f32_e32 v46, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v36, v34, v36
	v_div_scale_f32 v34, s3, v4, v55, v4
	v_fmac_f32_e32 v38, v43, v37
	v_fma_f32 v43, -v35, v42, 1.0
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s5, v5, v55, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v47, v34, v36 :: v_dual_fmac_f32 v42, v43, v42
	v_div_scale_f32 v43, s6, v6, v55, v6
	v_fma_f32 v48, -v44, v46, 1.0
	v_fma_f32 v22, -v41, v38, v22
	v_mul_f32_e32 v49, v45, v40
	v_fma_f32 v41, -v33, v47, v34
	v_mul_f32_e32 v50, v43, v42
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s7, v7, v55, v7
	v_div_fmas_f32 v22, v22, v37, v38
	v_fma_f32 v37, -v39, v49, v45
	v_fmac_f32_e32 v47, v41, v36
	v_fma_f32 v38, -v35, v50, v43
	v_mul_f32_e32 v41, v48, v46
	v_div_fixup_f32 v3, v22, v55, v3
	v_fmac_f32_e32 v49, v37, v40
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v37.l, v24.h
	v_mov_b16_e32 v37.h, v56.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v33, v47, v34
	v_fmac_f32_e32 v50, v38, v42
	v_fma_f32 v33, -v44, v41, v48
	v_fma_f32 v34, -v39, v49, v45
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v56
	v_and_b32_e32 v37, 1, v37
	v_mov_b16_e32 v56.l, v27.h
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v41, v33, v46
	v_div_fmas_f32 v22, v22, v36, v47
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v33, -v35, v50, v43
	v_div_fmas_f32 v34, v34, v40, v49
	s_mov_b32 vcc_lo, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_add3_u32 v25, v24, v37, 0x7fff
	v_mov_b16_e32 v37.l, v26.h
	v_mov_b16_e32 v37.h, v56.h
	v_and_b32_e32 v39, 1, v56
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v42, v50
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s6
	v_cmp_o_f32_e64 s6, v24, v24
	v_and_b32_e32 v24, 1, v37
	v_add3_u32 v37, v27, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v27, v27
	v_mov_b16_e32 v56.l, v28.h
	v_mov_b16_e32 v39.l, v32.h
	v_mov_b16_e32 v39.h, v56.h
	v_cndmask_b16 v38.l, 0x7fff, v25.h, s6
	v_add3_u32 v24, v26, v24, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v37.h, s7
	v_and_b32_e32 v37, 1, v56
	v_cmp_o_f32_e64 s6, v26, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v29, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v25, 1, v39
	v_cmp_o_f32_e64 s7, v28, v28
	v_add3_u32 v29, v28, v37, 0x7fff
	v_mov_b16_e32 v37.l, v30.h
	v_mov_b16_e32 v37.h, v56.h
	v_mov_b16_e32 v56.l, v26.h
	v_add3_u32 v25, v32, v25, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v24.h, s6
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s7
	v_and_b32_e32 v24, 1, v37
	v_and_b32_e32 v29, 1, v56
	v_cndmask_b16 v28.l, 0x7fff, v25.h, s8
	v_cmp_o_f32_e64 s6, v26, v26
	v_mov_b16_e32 v56.l, v17.h
	v_add3_u32 v24, v30, v24, 0x7fff
	v_add3_u32 v25, v26, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_mov_b16_e32 v26.l, v16.h
	v_mov_b16_e32 v26.h, v56.h
	v_and_b32_e32 v29, 1, v56
	v_mov_b16_e32 v56.l, v19.h
	v_cndmask_b16 v25.l, 0x7fff, v24.h, s7
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_and_b32_e32 v24, 1, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v31, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_and_b32_e32 v30, 1, v56
	v_add3_u32 v17, v16, v24, 0x7fff
	v_mov_b16_e32 v24.l, v26.h
	v_mov_b16_e32 v24.h, v56.h
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s6
	v_cmp_o_f32_e64 s6, v16, v16
	v_cmp_o_f32_e64 s7, v19, v19
	v_mov_b16_e32 v56.l, v20.h
	v_and_b32_e32 v16, 1, v24
	v_add3_u32 v24, v19, v30, 0x7fff
	v_mov_b16_e32 v30.l, v18.h
	v_mov_b16_e32 v30.h, v56.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v29.l, 0x7fff, v17.h, s6
	v_add3_u32 v16, v26, v16, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v24.h, s7
	v_and_b32_e32 v17, 1, v30
	v_and_b32_e32 v24, 1, v56
	v_cmp_o_f32_e64 s6, v26, v26
	v_mov_b16_e32 v26.l, v21.h
	v_mov_b16_e32 v26.h, v56.h
	v_mov_b16_e32 v56.l, v23.h
	v_add3_u32 v17, v18, v17, 0x7fff
	v_add3_u32 v24, v20, v24, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cmp_o_f32_e64 s8, v18, v18
	v_cndmask_b16 v19.l, 0x7fff, v16.h, s6
	v_and_b32_e32 v16, 1, v26
	v_and_b32_e32 v20, 1, v56
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v24.h, s7
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s8
	v_add3_u32 v16, v21, v16, 0x7fff
	v_add3_u32 v17, v23, v20, 0x7fff
	v_mov_b16_e32 v56.l, v9.h
	v_cmp_o_f32_e64 s7, v21, v21
	v_mov_b16_e32 v20.l, v8.h
	v_mov_b16_e32 v20.h, v56.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v23, v23
	v_and_b32_e32 v21, 1, v56
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s7
	v_and_b32_e32 v16, 1, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v56.l, v11.h
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	v_add3_u32 v20, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v9, v8, v16, 0x7fff
	v_mov_b16_e32 v16.l, v10.h
	v_mov_b16_e32 v16.h, v56.h
	v_and_b32_e32 v21, 1, v56
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v8, v8
	v_and_b32_e32 v8, 1, v16
	v_add3_u32 v16, v11, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v11, v11
	v_mov_b16_e32 v56.l, v13.h
	v_mov_b16_e32 v21.l, v12.h
	v_mov_b16_e32 v21.h, v56.h
	v_cndmask_b16 v20.l, 0x7fff, v9.h, s6
	v_add3_u32 v8, v10, v8, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v16.h, s7
	v_and_b32_e32 v16, 1, v56
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v15, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v21
	v_add3_u32 v15, v13, v16, 0x7fff
	v_mov_b16_e32 v16.l, v14.h
	v_mov_b16_e32 v16.h, v56.h
	v_mov_b16_e32 v56.l, v10.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_cmp_o_f32_e64 s8, v12, v12
	v_cndmask_b16 v11.l, 0x7fff, v8.h, s6
	v_and_b32_e32 v8, 1, v16
	v_and_b32_e32 v13, 1, v56
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v56.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v44, v41, v48
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v15.h, s7
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s8
	v_add3_u32 v8, v14, v8, 0x7fff
	v_add3_u32 v9, v10, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v10, v10
	v_cmp_o_f32_e64 s7, v14, v14
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e32 v10.h, v56.h
	v_and_b32_e32 v13, 1, v56
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v46, v41
	v_div_fixup_f32 v4, v22, v55, v4
	v_div_fixup_f32 v5, v34, v55, v5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_cndmask_b16 v9.l, 0x7fff, v8.h, s7
	v_and_b32_e32 v8, 1, v10
	v_add3_u32 v10, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v1, v1
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e32 v1.h, v56.h
	v_mov_b16_e32 v56.l, v3.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v33, v55, v6
	v_div_fixup_f32 v7, v35, v55, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v8, v0, v8, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s6
	v_cmp_o_f32_e64 s6, v0, v0
	v_and_b32_e32 v0, 1, v1
	v_and_b32_e32 v1, 1, v56
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v8.h, s6
	v_mov_b16_e32 v8.h, v56.h
	v_add3_u32 v1, v3, v1, 0x7fff
	v_mov_b16_e32 v56.l, v5.h
	v_mov_b16_e32 v8.l, v4.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v3, v3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v7, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v7, 1, v56
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v13.l, v6.h
	v_mov_b16_e32 v13.h, v56.h
	v_mov_b16_e32 v56.l, v3.h
	v_add3_u32 v0, v2, v0, 0x7fff
	v_cmp_o_f32_e64 s1, v2, v2
	v_add3_u32 v2, v4, v8, 0x7fff
	v_and_b32_e32 v8, 1, v13
	v_and_b32_e32 v13, 1, v56
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v7, v5, v7, 0x7fff
	v_cmp_o_f32_e64 s6, v5, v5
	v_cmp_o_f32_e64 s7, v4, v4
	v_add3_u32 v4, v6, v8, 0x7fff
	v_add3_u32 v5, v3, v13, 0x7fff
	v_cmp_o_f32_e64 s8, v3, v3
	v_cmp_o_f32_e64 s9, v6, v6
	v_cndmask_b16 v1.l, 0x7fff, v0.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v7.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s8
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s9
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v36, 1, v54
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v4, v38, v28, s0
	v_cndmask_b32_e64 v6, v27, v25, s0
	v_cndmask_b32_e64 v8, v29, v18, s0
	v_cndmask_b32_e64 v13, v17, v19, s0
	v_cndmask_b32_e64 v14, v19, v17, s0
	v_cndmask_b32_e64 v17, v0, v10, s0
	v_cndmask_b32_e64 v0, v10, v0, s0
	v_cndmask_b32_e64 v15, v12, v20, s0
	v_cndmask_b32_e64 v12, v20, v12, s0
	v_cndmask_b32_e64 v16, v9, v11, s0
	v_cndmask_b32_e64 v9, v11, v9, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v35, s27, v53
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v7, v18, v29, s0
	v_cndmask_b32_e64 v18, v2, v1, s0
	v_cndmask_b32_e64 v1, v1, v2, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v22, 16, v36
	s_mov_b32 s1, 0x76543210
	v_or_b32_e32 v33, 32, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v3, v28, v38, s0
	v_cndmask_b32_e64 v5, v25, v27, s0
	v_permlanex16_b32 v2, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v14, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v9, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 48, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v19, v1, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s27, v22
	v_cmp_gt_i32_e64 s5, s27, v36
	v_cmp_gt_i32_e64 s3, s27, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v2, v3, v51
	v_perm_b32 v1, v2, v3, v52
	v_perm_b32 v2, v4, v5, v51
	v_perm_b32 v3, v4, v5, v52
	v_perm_b32 v4, v6, v7, v51
	v_perm_b32 v5, v6, v7, v52
	v_perm_b32 v6, v8, v13, v51
	v_perm_b32 v7, v8, v13, v52
	v_perm_b32 v12, v14, v17, v51
	v_perm_b32 v13, v14, v17, v52
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v35, v22, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v10, v15, v51
	v_perm_b32 v9, v10, v15, v52
	v_perm_b32 v10, v11, v16, v51
	v_perm_b32 v11, v11, v16, v52
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v35, v36, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s27, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v19, v18, v51
	v_perm_b32 v15, v19, v18, v52
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v35, v33, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s0, s2, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v35, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	s_mov_b32 s27, 0x31027000
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v17, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v18, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v19, s[24:27], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp29:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 126
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 126
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9120
; TotalNumSgprs: 42
; NumVgprs: 126
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 126
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     126
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
