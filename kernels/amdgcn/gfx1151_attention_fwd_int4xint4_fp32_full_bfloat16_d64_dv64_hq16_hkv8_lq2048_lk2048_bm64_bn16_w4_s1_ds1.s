	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x60
	s_load_b256 s[24:31], s[0:1], 0x0
	v_dual_mov_b32 v42, 0x7632 :: v_dual_and_b32 v1, 1, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v106, 0xff800000 :: v_dual_lshlrev_b32 v1, 4, v1
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s7, s6, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s6, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_or_b32_e32 v3, s7, v2
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v38, 0x60, v0
	v_dual_mov_b32 v70, 0xff800000 :: v_dual_and_b32 v39, 15, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_load_b64 s[4:5], s[0:1], 0x70
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s36, v3, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s2, s36, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_load_b256 s[16:23], s[0:1], 0x20
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v38
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v48, 1, v0
	v_dual_mov_b32 v18, v33 :: v_dual_and_b32 v45, 3, v0
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[34:37], v1, s[40:43], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v2, v39
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s41, s31, 0xffff
	s_mov_b32 s40, s30
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v46, v0, 4, 1
	v_dual_mov_b32 v24, v33 :: v_dual_and_b32 v53, 12, v0
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v61, s7, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v1
	v_dual_mov_b32 v12, v33 :: v_dual_and_b32 v57, 28, v0
	v_bfe_i32 v58, v0, 5, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v61
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v54, 48, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v56, 5, v0
	v_dual_mov_b32 v20, v33 :: v_dual_lshlrev_b32 v67, 2, v0
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v40, v1, s[40:43], 0 offen
	v_dual_mov_b32 v10, v33 :: v_dual_and_b32 v55, 64, v0
	v_dual_mov_b32 v31, v33 :: v_dual_lshlrev_b32 v72, 1, v53
	v_dual_mov_b32 v19, v33 :: v_dual_lshlrev_b32 v68, 3, v39
	v_dual_mov_b32 v23, v33 :: v_dual_and_b32 v58, 0x120, v58
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v48, v48, 30, v46
	v_lshl_or_b32 v57, v45, 5, v57
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s1, s3, 0x10007
	v_dual_mov_b32 v69, 0xff800000 :: v_dual_and_b32 v64, 16, v0
	s_add_i32 s1, s3, s1
	v_dual_mov_b32 v32, v33 :: v_dual_and_b32 v65, 0x7c, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v43, 2, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v44, 3, v0
	v_lshrrev_b32_e32 v66, 4, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_bfe_i32 v47, v0, 0, 1
	v_dual_mov_b32 v22, v33 :: v_dual_and_b32 v49, 0x70, v0
	v_dual_mov_b32 v14, v33 :: v_dual_lshlrev_b32 v59, 7, v0
	v_bfe_i32 v60, v0, 2, 1
	v_dual_mov_b32 v27, v33 :: v_dual_lshlrev_b32 v0, 2, v39
	v_dual_mov_b32 v21, v33 :: v_dual_lshlrev_b32 v76, 1, v55
	v_dual_mov_b32 v11, v33 :: v_dual_and_b32 v74, 0xfc, v67
	v_dual_mov_b32 v15, v33 :: v_dual_lshlrev_b32 v48, 2, v48
	v_dual_mov_b32 v16, v33 :: v_dual_lshlrev_b32 v53, 8, v53
	v_dual_mov_b32 v2, v33 :: v_dual_and_b32 v77, 0x260, v56
	v_dual_mov_b32 v4, v33 :: v_dual_and_b32 v73, 0x300, v56
	v_lshrrev_b32_e32 v63, 2, v38
	v_lshrrev_b32_e32 v75, 1, v54
	v_lshrrev_b32_e32 v55, 5, v55
	v_lshl_or_b32 v39, v39, 5, v72
	v_lshl_or_b32 v54, v54, 6, v68
	v_lshl_or_b32 v38, v38, 2, v72
	v_xor_b32_e32 v72, v57, v58
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s1, s1, 0x80000
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s1, s1
	v_or3_b32 v73, v73, v74, v55
	s_ashr_i32 s1, s1, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v55, 4, v48
	v_xor_b32_e32 v54, v54, v75
	v_or3_b32 v75, v53, v77, v38
	v_or_b32_e32 v38, v72, v76
	.loc	1 906 33                        ; attention.py:906:33
	s_lshl3_add_u32 s7, s0, s1
	v_dual_mov_b32 v13, v33 :: v_dual_and_b32 v56, 0x160, v56
	.loc	1 906 32 is_stmt 0              ; attention.py:906:32
	s_lshl_b32 s9, s7, 11
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v38, 0x240, v38
	v_or_b32_e32 v89, s9, v44
	.loc	1 956 27 is_stmt 1              ; attention.py:956:27
	s_mul_i32 s0, s39, s0
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s4, s4, s3
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v78, 0, v39
	v_and_or_b32 v74, 0x90, v60, v56
	v_xor_b32_e32 v56, 8, v39
	v_xor_b32_e32 v57, 16, v39
	v_xor_b32_e32 v58, 24, v39
	v_mul_lo_u32 v39, s5, v43
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v62, s6, v43
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s6, s5, s6
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_add_i32 s0, s4, s0
	v_dual_mov_b32 v41, 0x5410 :: v_dual_mov_b32 v50, 0
	s_mov_b32 s49, s21
	v_xor_b32_e32 v43, 8, v75
	s_add_i32 s21, s0, s6
	v_add_nc_u32_e32 v95, 0, v38
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v64
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v91, v45, 2, v39
	v_add_nc_u32_e32 v92, 0, v43
	v_dual_mov_b32 v6, v33 :: v_dual_and_b32 v59, 0x700, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v41, 0x1054, v41, s0
	v_cndmask_b32_e64 v42, 0x3276, v42, s0
	v_dual_mov_b32 v8, v33 :: v_dual_and_b32 v47, 0x90, v47
	v_lshrrev_b32_e32 v49, 2, v49
	v_xor_b32_e32 v53, 32, v73
	v_lshl_or_b32 v41, v41, 8, v41
	v_lshl_or_b32 v42, v42, 8, v42
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s8, s38, 0x3fb8aa3b
	v_add_nc_u32_e32 v71, 0, v76
	v_xor_b32_e32 v47, v47, v49
	v_add_nc_u32_e32 v85, 0, v53
	v_dual_mov_b32 v29, v33 :: v_dual_and_b32 v52, 28, v67
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v62
	v_xor_b32_e32 v62, v67, v63
	v_xor_b32_e32 v60, 0x60, v73
	v_xor_b32_e32 v63, 16, v74
	v_add_nc_u32_e32 v81, 0, v56
	v_dual_mov_b32 v105, 0xff800000 :: v_dual_add_nc_u32 v84, v71, v54
	v_or_b32_e32 v90, s9, v46
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v26, v33
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v28, v33
	v_dual_mov_b32 v79, 0xff800000 :: v_dual_mov_b32 v30, v33
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v76, 0, v62
	v_dual_mov_b32 v7, v33 :: v_dual_add_nc_u32 v82, 0, v57
	.loc	1 910 31                        ; attention.py:910:31
	v_cmp_gt_i32_e64 s1, s36, v52
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s3, s37, v0
	v_lshl_or_b32 v80, s7, 10, v66
	v_add_nc_u32_e32 v83, 0, v58
	v_add_nc_u32_e32 v87, 0, v60
	v_add_nc_u32_e32 v88, 0, v63
	v_or_b32_e32 v96, 2, v90
	v_or_b32_e32 v97, 4, v90
	v_or_b32_e32 v98, 6, v90
	v_or_b32_e32 v99, 8, v90
	v_or_b32_e32 v100, 10, v90
	v_or_b32_e32 v101, 12, v90
	v_or_b32_e32 v102, 14, v90
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v103, s5, 5, v91
	s_and_b32 s27, s27, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s24, 0
	s_mov_b32 s25, 0x76543210
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s50, s42
	s_mov_b32 s51, s43
	s_mov_b32 s54, s42
	s_mov_b32 s55, s43
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s44, s16
	s_mov_b32 s48, s20
	s_mov_b32 s52, s18
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s20, s7, 7
	s_mov_b32 s45, s17
	s_mov_b32 s53, s19
	s_mov_b32 s30, s42
	s_mov_b32 s31, s43
	s_mov_b32 s40, s26
	s_mov_b32 s41, s27
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v44, v48, v34
	ds_bpermute_b32 v34, v55, v34
	ds_bpermute_b32 v38, v48, v35
	ds_bpermute_b32 v35, v55, v35
	ds_bpermute_b32 v39, v48, v36
	ds_bpermute_b32 v36, v55, v36
	ds_bpermute_b32 v43, v48, v37
	ds_bpermute_b32 v37, v55, v37
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v53, v34, v44, s0
	v_cndmask_b32_e64 v55, v44, v34, s0
	v_and_b32_e32 v34, 0x540054, v41
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v40, 16, v40
	v_add_nc_u32_e32 v49, 0, v59
	v_xor_b32_e32 v59, 64, v73
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v54, v35, v38, s0
	v_cndmask_b32_e64 v56, v38, v35, s0
	.loc	1 928 41                        ; attention.py:928:41
	v_mul_f32_e32 v104, s8, v40
	v_and_b32_e32 v40, 0x760076, v42
	v_add_nc_u32_e32 v77, v49, v47
	v_xor_b32_e32 v47, 16, v75
	v_xor_b32_e32 v49, 24, v75
	v_lshl_or_b32 v34, v34, 4, v34
	v_lshl_or_b32 v35, v40, 4, v40
	v_add_nc_u32_e32 v86, 0, v59
	v_add_nc_u32_e32 v93, 0, v47
	v_add_nc_u32_e32 v94, 0, v49
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v57, v36, v39, s0
	v_cndmask_b32_e64 v59, v39, v36, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v58, v37, v43, s0
	v_cndmask_b32_e64 v60, v43, v37, s0
	v_and_b32_e32 v62, 0x5040504, v34
	v_and_b32_e32 v63, 0x7060706, v35
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 913 33                        ; attention.py:913:33
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v41, s24, v89
	v_mov_b32_e32 v40, v33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 907 32                        ; attention.py:907:32
	v_mad_u64_u32 v[42:43], null, v41, s36, v[52:53]
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v40, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v39, v38
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	.loc	1 908 32                        ; attention.py:908:32
	buffer_load_b32 v42, v42, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v34, v33
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s4, s21, s24
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add_nc_u32_e32 v116, 0, v74
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 990 39                        ; attention.py:990:39
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v76, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[42:43], v78
	ds_load_b64 v[44:45], v81
	ds_load_b64 v[46:47], v82
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[53:54], v[34:41] neg_lo:[1,1,0]
	.loc	1 908 32                        ; attention.py:908:32
	ds_load_b64 v[42:43], v83
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[44:45], v[57:58], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[46:47], v[55:56], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[59:60], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v44, v34
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v34, s4, v91, 2
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v45, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v46, v36
	v_cvt_f32_i32_e32 v47, v37
	v_cvt_f32_i32_e32 v107, v40
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v48, v38
	v_cvt_f32_i32_e32 v49, v39
	v_cvt_f32_i32_e32 v108, v41
	.loc	1 964 36                        ; attention.py:964:36
	buffer_load_b128 v[34:37], v34, s[48:51], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e32 v40, 0xff800000, v34, vcc_lo
	v_add_lshl_u32 v34, s4, v103, 2
	v_dual_cndmask_b32 v39, 0xff800000, v37 :: v_dual_cndmask_b32 v38, 0xff800000, v35
	v_cndmask_b32_e32 v41, 0xff800000, v36, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v40
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v39
	v_cmp_neq_f32_e64 s11, 0xff800000, v38
	v_cmp_neq_f32_e64 s6, 0xff800000, v41
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_and_b32 s7, vcc_lo, s7
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	buffer_load_b128 v[34:37], v34, s[48:51], 0 offen
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s6, vcc_lo, s6
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v42, 0xff800000, v35 :: v_dual_cndmask_b32 v35, 0xff800000, v36
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v36, s24, v90, 1
	.loc	1 964 36                        ; attention.py:964:36
	v_dual_cndmask_b32 v43, 0xff800000, v37 :: v_dual_cndmask_b32 v34, 0xff800000, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v42
	v_cmp_neq_f32_e64 s4, 0xff800000, v35
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v37, v36, s[44:47], 0 offen
	v_add_lshl_u32 v36, s24, v96, 1
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v34
	v_cmp_neq_f32_e64 s8, 0xff800000, v43
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_and_b32 s4, vcc_lo, s4
	s_and_b32 s9, vcc_lo, s9
	.loc	1 923 37 is_stmt 1              ; attention.py:923:37
	buffer_load_u16 v109, v36, s[44:47], 0 offen
	v_add_lshl_u32 v36, s24, v97, 1
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s5, vcc_lo, s5
	s_and_b32 s8, vcc_lo, s8
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v110, v36, s[44:47], 0 offen
	v_add_lshl_u32 v36, s24, v98, 1
	buffer_load_u16 v111, v36, s[44:47], 0 offen
	v_add_lshl_u32 v36, s24, v99, 1
	buffer_load_u16 v112, v36, s[44:47], 0 offen
	v_add_lshl_u32 v36, s24, v100, 1
	buffer_load_u16 v113, v36, s[44:47], 0 offen
	v_add_lshl_u32 v36, s24, v101, 1
	buffer_load_u16 v114, v36, s[44:47], 0 offen
	v_add_lshl_u32 v36, s24, v102, 1
	buffer_load_u16 v115, v36, s[44:47], 0 offen
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v84, v[40:41], v[34:35] offset1:32
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v34, 0, 1, s4
	v_cndmask_b32_e64 v35, 0, 1, s5
	v_cndmask_b32_e64 v36, 0, 1, s9
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_2addr_b64 v84, v[38:39], v[42:43] offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	.loc	1 966 25                        ; attention.py:966:25
	v_lshlrev_b16 v34.l, 8, v34.l
	.loc	1 965 35                        ; attention.py:965:35
	s_barrier
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v40, v104, v44
	v_mul_f32_e32 v41, v104, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v34.h, v35.l, v34.l
	v_cndmask_b32_e64 v35, 0, 1, s6
	v_mov_b16_e32 v34.l, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v34.l, 8, v34.l
	v_or_b16 v34.l, v35.l, v34.l
	v_cndmask_b32_e64 v35, 0, 1, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v35.l, 8, v35.l
	v_or_b16 v35.h, v36.l, v35.l
	v_cndmask_b32_e64 v36, 0, 1, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v35.l, v36.l
	v_cndmask_b32_e64 v36, 0, 1, s11
	v_lshlrev_b16 v35.l, 8, v35.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v35.l, v36.l, v35.l
	.loc	1 965 35                        ; attention.py:965:35
	v_add_nc_u32_e32 v36, 0, v75
	ds_load_b64 v[38:39], v36
	s_waitcnt vmcnt(7) lgkmcnt(0)
	v_dual_mul_f32 v38, 0x3fb8aa3b, v38 :: v_dual_lshlrev_b32 v37, 16, v37
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v42, 16, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v38, v40, v37 :: v_dual_mul_f32 v37, 0x3fb8aa3b, v39
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v39, v104, v45
	.loc	1 923 37                        ; attention.py:923:37
	v_lshlrev_b32_e32 v40, 16, v109
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v37, v39, v40
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	ds_load_b64 v[39:40], v92
	.loc	1 923 37 is_stmt 1              ; attention.py:923:37
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v112
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_dual_mul_f32 v43, 0x3fb8aa3b, v39 :: v_dual_lshlrev_b32 v46, 16, v114
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v39, v104, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v43, v41, v42
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	v_dual_mul_f32 v41, 0x3fb8aa3b, v40 :: v_dual_lshlrev_b32 v40, 16, v111
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v41, v39, v40
	.loc	1 965 35                        ; attention.py:965:35
	ds_load_b64 v[39:40], v93
	.loc	1 932 25 is_stmt 1              ; attention.py:932:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v42, v104, v48 :: v_dual_mul_f32 v45, 0x3fb8aa3b, v39
	v_mul_f32_e32 v39, v104, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v45, v42, v44
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	v_mul_f32_e32 v44, 0x3fb8aa3b, v40
	.loc	1 923 37 is_stmt 1              ; attention.py:923:37
	v_lshlrev_b32_e32 v40, 16, v113
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v42, v104, v107
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v44, v39, v40
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	ds_load_b64 v[39:40], v94
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v47, 0x3fb8aa3b, v39
	.loc	1 966 25                        ; attention.py:966:25
	v_add_nc_u32_e32 v39, v71, v72
	ds_store_b32 v39, v34
	ds_store_b32 v95, v35
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v47, v42, v46 :: v_dual_mul_f32 v46, 0x3fb8aa3b, v40
	.loc	1 966 25                        ; attention.py:966:25
	v_add_nc_u32_e32 v40, 0, v73
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v34, v40
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v34, v85
	ds_load_u16_d16 v35, v86
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v35, v87
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v42, v104, v108
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v108.l, 0
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v48, 16, v115
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v49.h, v108.l
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v39.l, 1, v34.l
	v_lshrrev_b16 v34.l, 8, v34.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s12, 1, v39.l
	v_and_b16 v34.l, 1, v34.l
	v_and_b16 v39.l, 1, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s16, 1, v34.l
	v_lshrrev_b16 v34.l, 8, v34.h
	v_lshrrev_b16 v34.h, 8, v35.l
	v_cmp_eq_u16_e64 s13, 1, v39.l
	v_and_b16 v39.l, 1, v35.l
	v_lshrrev_b16 v35.l, 8, v35.h
	v_and_b16 v34.l, 1, v34.l
	v_and_b16 v34.h, 1, v34.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u16_e64 s14, 1, v39.l
	v_and_b16 v39.l, 1, v35.h
	v_and_b16 v35.l, 1, v35.l
	v_cmp_eq_u16_e64 s17, 1, v34.l
	v_cmp_eq_u16_e64 s18, 1, v34.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v34, 0xff800000, v38, s12
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s15, 1, v39.l
	v_cmp_eq_u16_e64 s19, 1, v35.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v39, 0xff800000, v41, s17
	v_cndmask_b32_e64 v41, 0xff800000, v44, s18
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v46, v42, v48
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v38, 0xff800000, v43, s13
	v_cndmask_b32_e64 v40, 0xff800000, v45, s14
	v_cndmask_b32_e64 v35, 0xff800000, v37, s16
	v_cndmask_b32_e64 v42, 0xff800000, v47, s15
	v_cndmask_b32_e64 v43, 0xff800000, v46, s19
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v48.h, v108.l
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v44, v39, v40, v41
	v_max3_f32 v37, v34, v35, v38
.Ltmp2:
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b64 v36, v[34:35]
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v45, v42, v43
.Ltmp4:
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b64 v92, v[38:39]
	ds_store_b64 v93, v[40:41]
	ds_store_b64 v94, v[42:43]
	s_waitcnt lgkmcnt(0)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v36, v37, v44, v45
.Ltmp6:
	.loc	1 967 26                        ; attention.py:967:26
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v37, v36, s25, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v107, v106, v36, v37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v35, v35, v107
	v_sub_f32_e32 v34, v34, v107
	v_sub_f32_e32 v38, v38, v107
	v_sub_f32_e32 v40, v40, v107
	v_sub_f32_e32 v42, v42, v107
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v42, v42
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v35, 0, v35, s16
	v_cndmask_b32_e64 v34, 0, v34, s12
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v38, 0, v38, s13
	v_cndmask_b32_e64 v40, 0, v40, s14
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v42, 0, v42, s15
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v48.l, v35.h
	v_mov_b16_e32 v49.l, v34.h
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s16, v34, v34
	v_cmp_o_f32_e64 s13, v38, v38
	v_and_b32_e32 v36, 1, v48
	v_and_b32_e32 v37, 1, v49
	v_cmp_o_f32_e64 s14, v40, v40
	v_cmp_o_f32_e64 s15, v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v35, v35, v36, 0x7fff
	v_add3_u32 v34, v34, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s12
	v_cndmask_b16 v35.l, 0x7fff, v34.h, s16
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s12, s24, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v36, v35, s25, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v34, v36, v35, v62
	v_perm_b32 v35, v36, v35, v63
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v36, s12, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[36:37], null, v36, s37, v[0:1]
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v37, v39, v107
	v_sub_f32_e32 v39, v41, v107
	v_sub_f32_e32 v41, v43, v107
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v43.h, v108.l
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v37, v37
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v36, 0x80000000, v36, s3
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v41, v41
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v111, v36, s[28:31], 0 offen
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v37, 0, v37, s17
	v_cndmask_b32_e64 v39, 0, v39, s18
	v_cndmask_b32_e64 v41, 0, v41, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v43.l, v37.h
	v_cmp_o_f32_e64 s12, v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v41, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v37, v37, v43, 0x7fff
	v_mov_b16_e32 v43.h, v108.l
	v_mov_b16_e32 v43.l, v38.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s12
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v43, 0x7fff
	v_mov_b16_e32 v43.h, v108.l
	v_mov_b16_e32 v43.l, v39.h
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v43, 1, v43
	v_permlanex16_b32 v38, v37, s25, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v39, v39, v43, 0x7fff
	v_mov_b16_e32 v43.h, v108.l
	v_mov_b16_e32 v43.l, v40.h
	v_perm_b32 v36, v38, v37, v62
	v_perm_b32 v37, v38, v37, v63
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v40, v40, v43, 0x7fff
	v_mov_b16_e32 v43.h, v108.l
	v_mov_b16_e32 v43.l, v41.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s14
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v40, v39, s25, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v41, v41, v43, 0x7fff
	v_mov_b16_e32 v43.h, v108.l
	v_mov_b16_e32 v43.l, v42.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_perm_b32 v38, v40, v39, v62
	v_perm_b32 v39, v40, v39, v63
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s17
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v42, v42, v43, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v41, s25, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v40, v42, v41, v62
	v_perm_b32 v41, v42, v41, v63
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(0)
	v_and_b16 v42.l, v111.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v43, v111, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v42.h, 4, v111.l
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v44, 8, v111
	v_lshrrev_b32_e32 v113, 24, v111
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v42.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s13, 0, v43.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v42.h, v42.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v114, v113, 0, 8
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v43.l, 0, -16, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v43.l, v42.l, v43.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v42.l, v42.h, -16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v43, v43, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v45.l, v42.h, v42.l, s13
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v42, v44, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v43, v43
	v_bfe_i32 v45, v45, 0, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s12, 0, v42.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v42.l, v44.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s13, 7, v42.l
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b16 v42.h, 0, -16, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b16 v46.l, v42.l, v42.h
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_lshrrev_b16 v42.l, 4, v44.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v46, v46, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v42.l, v42.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v42.h, v42.l, -16
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v42.l, v42.l, v42.h, s12
	.loc	1 1001 53 is_stmt 1             ; attention.py:1001:53
	s_lshr_b32 s12, s24, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1001 25 is_stmt 0             ; attention.py:1001:25
	s_add_i32 s12, s12, s20
	s_mul_i32 s12, s12, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_bfe_i32 v42, v42, 0, 16
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v44, s12, v0, 1
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	buffer_load_b64 v[109:110], v44, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v108.h, v109.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_dual_mul_f32 v43, v108, v43 :: v_dual_and_b32 v44, 0xffff0000, v109
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v42, v44, v42
	v_mul_f32_e32 v44, v44, v46
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v46.h, v108.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v45, v108, v45
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v46.l, v43.h
	v_cmp_o_f32_e64 s12, v43, v43
	v_cmp_o_f32_e64 s14, v42, v42
	v_cmp_o_f32_e64 s15, v44, v44
	v_cmp_o_f32_e64 s13, v45, v45
	v_and_b32_e32 v46, 1, v46
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v108.h, v111.h, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v43, v43, v46, 0x7fff
	v_mov_b16_e32 v46.h, v108.l
	v_mov_b16_e32 v46.l, v45.h
	v_cndmask_b16 v109.l, 0x7fff, v43.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v45, v45, v46, 0x7fff
	v_mov_b16_e32 v46.h, v108.l
	v_mov_b16_e32 v46.l, v42.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v109.h, 0x7fff, v45.h, s13
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s13, 7, v108.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v42, v42, v46, 0x7fff
	v_mov_b16_e32 v46.h, v108.l
	v_mov_b16_e32 v46.l, v44.h
	v_cndmask_b16 v112.h, 0x7fff, v42.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v44, v44, v46, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v112.l, 0x7fff, v44.h, s15
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b64 v[46:49], v84 offset1:32
	ds_load_2addr_b64 v[42:45], v84 offset0:64 offset1:96
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v77, v109, v112 offset1:8
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v109.h, v110.l
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v109.l, v111.h
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v111, 20, v111
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v110, 0xffff0000, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v112, v109, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v109.l, v112.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_i16_e64 s12, 0, v109.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v109.l, 0, -16, s13
	v_or_b16 v112.l, v108.h, v109.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v109.l, v114.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v108.h, v111.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v112, v112, 0, 16
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s13, 0, v109.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v109.l, v108.h, -16
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v112, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v111.l, v108.h, v109.l, s12
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v108.h, v113.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v111, v111, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v108.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v111, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v109.l, 0, -16, s12
	v_or_b16 v114.l, v108.h, v109.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v108.h, 4, v113.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v109.l, v108.h, -16
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v113.l, v108.h, v109.l, s13
	.loc	1 1000 41 is_stmt 1             ; attention.py:1000:41
	v_mov_b16_e32 v109.l, v108.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v108.h, v108.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v112, v109, v112
	v_mul_f32_e32 v109, v109, v111
	v_bfe_i32 v111, v113, 0, 16
	v_bfe_i32 v113, v114, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s12, v112, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s13, v109, v109
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v111, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v113, v113
	v_mul_f32_e32 v111, v110, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v110, v110, v113
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v113.h, v108.l
	v_mov_b16_e32 v113.l, v112.h
	v_cmp_o_f32_e64 s14, v111, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s15, v110, v110
	v_and_b32_e32 v113, 1, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v112, v112, v113, 0x7fff
	v_mov_b16_e32 v113.h, v108.l
	v_mov_b16_e32 v113.l, v109.h
	v_and_b32_e32 v113, 1, v113
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v109, v109, v113, 0x7fff
	v_cndmask_b16 v109.l, 0x7fff, v112.h, s12
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e64 s12, 0xff800000, v106
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v106, v106, v107
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_mov_b16_e32 v113.h, v108.l
	v_mov_b16_e32 v113.l, v111.h
	v_mov_b16_e32 v108.l, v110.h
	v_cndmask_b16 v109.h, 0x7fff, v109.h, s13
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v106, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v113, 1, v113
	v_add3_u32 v111, v111, v113, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v106, 0, v106, s12
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v25, v25, v106 :: v_dual_and_b32 v108, 1, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v108, v110, v108, 0x7fff
	v_cndmask_b16 v110.h, 0x7fff, v111.h, s14
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v26, v26, v106
	v_mul_f32_e32 v27, v27, v106
	v_mul_f32_e32 v28, v28, v106
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v110.l, 0x7fff, v108.h, s15
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v29, v29, v106
	v_mul_f32_e32 v30, v30, v106
	v_mul_f32_e32 v31, v31, v106
	v_mul_f32_e32 v32, v32, v106
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v77, v109, v110 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[112:115], v88
	ds_load_b128 v[108:111], v116
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v17, v17, v106
	v_mul_f32_e32 v18, v18, v106
	v_mul_f32_e32 v19, v19, v106
	v_mul_f32_e32 v20, v20, v106
	v_mul_f32_e32 v21, v21, v106
	v_mul_f32_e32 v22, v22, v106
	v_mul_f32_e32 v23, v23, v106
	v_mul_f32_e32 v24, v24, v106
	v_mul_f32_e32 v9, v9, v106
	v_mul_f32_e32 v10, v10, v106
	v_mul_f32_e32 v11, v11, v106
	v_mul_f32_e32 v12, v12, v106
	v_mul_f32_e32 v13, v13, v106
	v_mul_f32_e32 v14, v14, v106
	v_mul_f32_e32 v15, v15, v106
	v_mul_f32_e32 v16, v16, v106
	v_mul_f32_e32 v1, v1, v106
	v_mul_f32_e32 v2, v2, v106
	v_mul_f32_e32 v3, v3, v106
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[108:115], v[34:41], v[25:32]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[108:111], v116 offset:512
	ds_load_b128 v[112:115], v88 offset:512
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v106
	v_mul_f32_e32 v5, v5, v106
	v_mul_f32_e32 v6, v6, v106
	v_mul_f32_e32 v7, v7, v106
	v_mul_f32_e32 v8, v8, v106
	v_mov_b32_e32 v106, v107
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[108:115], v[34:41], v[17:24]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[112:115], v88 offset:1024
	ds_load_b128 v[108:111], v116 offset:1024
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[108:115], v[34:41], v[9:16]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[108:111], v116 offset:1536
	ds_load_b128 v[112:115], v88 offset:1536
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[108:115], v[34:41], v[1:8]
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v36, v42, v42
	v_dual_max_f32 v37, v46, v46 :: v_dual_max_f32 v38, v44, v44
	v_dual_max_f32 v39, v48, v48 :: v_dual_max_f32 v34, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp10:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v35, v70, v70 :: v_dual_max_f32 v36, v37, v36
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v37, v39, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v36, v36, v47, v43
	v_max3_f32 v37, v37, v49, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v38, v36 :: v_dual_mov_b32 v39, v37
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v36, v36, v38 :: v_dual_max_f32 v37, v37, v39
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v38, v36 :: v_dual_mov_b32 v39, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v39, v39 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v39, v39, v39
	v_dual_max_f32 v36, v36, v38 :: v_dual_max_f32 v37, v37, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v69, v34, v36 :: v_dual_max_f32 v70, v35, v37
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v34, v46, v69
	v_sub_f32_e32 v35, v47, v69
	v_sub_f32_e32 v40, v42, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v41, v43, v69 :: v_dual_sub_f32 v38, v48, v70
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v41, v41
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v42, v44, v70
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v38, v38
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v43, v45, v70
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v42, v42
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v34, 0, v34, s7
	v_cndmask_b32_e64 v35, 0, v35, s6
	v_cndmask_b32_e64 v40, 0, v40, s11
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v41, 0, v41, s10
	v_cndmask_b32_e64 v38, 0, v38, s5
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e64 s5, 0xff800000, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v34, v34, v40 :: v_dual_add_f32 v35, v35, v41
.Ltmp18:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v42, 0, v42, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v34, v34, v35
	v_add_f32_e32 v38, v38, v42
	v_mov_b32_e32 v42, v50
.Ltmp20:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v40, v34
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v43, 0, v43, s8
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v34, v34, v40 :: v_dual_sub_f32 v39, v49, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v40, v34
.Ltmp25:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v50, v34, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v39, 0, v39, s4
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s4, 0xff800000, v79
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v39, v39, v43
	v_mov_b32_e32 v43, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v35, v38, v39
.Ltmp30:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v39, v105, v105 :: v_dual_max_f32 v38, v79, v79
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v41, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v37, v39, v37
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v39, v105, v37
	v_mov_b32_e32 v105, v37
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v35, v35, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v39, v39
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v41, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v39, 0, v39, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v51, v35, v41
.Ltmp40:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v51, v43, v39 :: v_dual_max_f32 v36, v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v38, v79, v36 :: v_dual_mov_b32 v79, v36
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v38, 0, v38, s4
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_add_i32 s4, s24, 16
	s_cmpk_lt_u32 s24, 0x7f0
	s_mov_b32 s24, s4
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v50, v42, v38
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_and_b32_e32 v0, 0x80, v67
	v_and_b32_e32 v33, 4, v66
	v_add_nc_u32_e32 v34, 0, v68
	v_lshl_add_u32 v35, v65, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s11, 0x31027000
	v_add3_u32 v0, v34, v0, v33
	ds_store_b64 v35, v[50:51]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s10, 0x7ffffffe
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v37, null, v0, v0, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v35
	v_div_scale_f32 v39, null, v0, v0, v28
	v_rcp_f32_e32 v44, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v46, v37
	v_div_scale_f32 v41, null, v0, v0, v29
	v_div_scale_f32 v42, null, v0, v0, v30
	v_rcp_f32_e32 v47, v39
	v_fma_f32 v54, -v35, v45, 1.0
	v_div_scale_f32 v36, s1, v26, v0, v26
	v_rcp_f32_e32 v48, v41
	v_rcp_f32_e32 v51, v42
	v_fma_f32 v53, -v33, v44, 1.0
	v_fma_f32 v55, -v37, v46, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_div_scale_f32 v38, s3, v27, v0, v27
	v_fma_f32 v56, -v39, v47, 1.0
	v_fmac_f32_e32 v44, v53, v44
	v_dual_fmac_f32 v46, v55, v46 :: v_dual_mul_f32 v55, v36, v45
	v_fma_f32 v57, -v41, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v56, v47
	v_fma_f32 v53, -v42, v51, 1.0
	v_mul_f32_e32 v54, v34, v44
	v_fma_f32 v59, -v35, v55, v36
	v_mul_f32_e32 v56, v38, v46
	v_div_scale_f32 v50, s6, v30, v0, v30
	v_fmac_f32_e32 v51, v53, v51
	v_fmac_f32_e32 v48, v57, v48
	v_fma_f32 v57, -v33, v54, v34
	v_fmac_f32_e32 v55, v59, v45
	v_fma_f32 v60, -v37, v56, v38
	v_div_scale_f32 v40, s4, v28, v0, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v57, v44
	v_div_scale_f32 v49, s5, v29, v0, v29
	v_fmac_f32_e32 v56, v60, v46
	v_div_scale_f32 v43, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v54, v34
	v_fma_f32 v34, -v35, v55, v36
	v_fma_f32 v35, -v37, v56, v38
	v_mul_f32_e32 v37, v50, v51
	v_dual_mul_f32 v58, v40, v47 :: v_dual_mul_f32 v53, v49, v48
	v_div_fmas_f32 v33, v33, v44, v54
	v_rcp_f32_e32 v52, v43
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v39, v58, v40
	v_div_fmas_f32 v34, v34, v45, v55
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_scale_f32 v33, null, v0, v0, v32
	v_fmac_f32_e32 v58, v65, v47
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v34, v0, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v43, v52, 1.0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v39, v58, v40
	v_rcp_f32_e32 v39, v33
	v_fmac_f32_e32 v52, v38, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v33, v39, 1.0
	v_fmac_f32_e32 v39, v38, v39
	v_div_fmas_f32 v35, v35, v46, v56
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v38, s4, v32, v0, v32
	v_div_fmas_f32 v34, v36, v47, v58
	v_fma_f32 v36, -v41, v53, v49
	v_div_fixup_f32 v27, v35, v0, v27
	v_div_scale_f32 v35, s3, v31, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v28, v34, v0, v28
	v_fmac_f32_e32 v53, v36, v48
	v_fma_f32 v34, -v42, v37, v50
	v_div_scale_f32 v36, null, v0, v0, v17
	v_mul_f32_e32 v45, v38, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v41, v53, v49
	v_dual_fmac_f32 v37, v34, v51 :: v_dual_mul_f32 v34, v35, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v36
	v_div_scale_f32 v47, null, v0, v0, v18
	v_fma_f32 v42, -v42, v37, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v44, -v43, v34, v35
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v40, v40, v48, v53
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v46, -v36, v41, 1.0
	v_div_fmas_f32 v37, v42, v51, v37
	v_fmac_f32_e32 v34, v44, v52
	v_rcp_f32_e32 v42, v47
	v_fma_f32 v44, -v33, v45, v38
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s5, v17, v0, v17
	v_fma_f32 v35, -v43, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v44, v39
	v_div_scale_f32 v43, null, v0, v0, v19
	v_div_fixup_f32 v29, v40, v0, v29
	v_div_fixup_f32 v30, v37, v0, v30
	v_fma_f32 v40, -v47, v42, 1.0
	v_mul_f32_e32 v37, v46, v41
	v_fma_f32 v33, -v33, v45, v38
	v_rcp_f32_e32 v38, v43
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v40, v42
	v_div_fmas_f32 v34, v35, v52, v34
	v_fma_f32 v35, -v36, v37, v46
	v_div_scale_f32 v44, null, v0, v0, v20
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v40, s3, v18, v0, v18
	v_div_fmas_f32 v33, v33, v39, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v43, v38, 1.0
	v_fmac_f32_e32 v37, v35, v41
	v_rcp_f32_e32 v35, v44
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v32, v33, v0, v32
	v_fmac_f32_e32 v38, v45, v38
	v_fma_f32 v33, -v36, v37, v46
	v_div_scale_f32 v46, null, v0, v0, v21
	v_div_fixup_f32 v31, v34, v0, v31
	v_div_scale_f32 v36, s4, v19, v0, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v44, v35, 1.0
	v_div_fmas_f32 v33, v33, v41, v37
	v_rcp_f32_e32 v37, v46
	v_div_scale_f32 v41, s5, v20, v0, v20
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v0, v0, v22
	v_div_fixup_f32 v17, v33, v0, v17
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v45
	v_mul_f32_e32 v39, v40, v42
	v_fma_f32 v49, -v46, v37, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v47, v39, v40
	v_fmac_f32_e32 v37, v49, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v39, v34, v42
	v_mul_f32_e32 v34, v36, v38
	v_fma_f32 v33, -v47, v39, v40
	v_mul_f32_e32 v47, v41, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v43, v34, v36
	v_div_fmas_f32 v33, v33, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v44, v47, v41
	v_fmac_f32_e32 v34, v40, v38
	v_div_scale_f32 v40, s3, v21, v0, v21
	v_fma_f32 v42, -v45, v48, 1.0
	v_div_fixup_f32 v18, v33, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v43, v34, v36
	v_mul_f32_e32 v36, v40, v37
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v42, v48
	v_div_scale_f32 v42, null, v0, v0, v23
	v_div_fmas_f32 v33, v33, v38, v34
	v_fma_f32 v38, -v46, v36, v40
	v_fmac_f32_e32 v47, v39, v35
	v_div_scale_f32 v39, s6, v22, v0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v19, v33, v0, v19
	v_fmac_f32_e32 v36, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v44, v47, v41
	v_mul_f32_e32 v43, v39, v48
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v41, v42
	v_fma_f32 v33, -v46, v36, v40
	v_div_fmas_f32 v34, v34, v35, v47
	v_fma_f32 v38, -v45, v43, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v44, null, v0, v0, v24
	v_div_fmas_f32 v33, v33, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v35, v44
	v_div_scale_f32 v46, null, v0, v0, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v45, v43, v39
	v_fma_f32 v47, -v42, v41, 1.0
	v_div_fixup_f32 v20, v34, v0, v20
	v_div_scale_f32 v34, s4, v23, v0, v23
	v_div_fmas_f32 v36, v36, v48, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v47, v41
	v_fma_f32 v38, -v44, v35, 1.0
	v_div_scale_f32 v39, s3, v24, v0, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v36, v0, v22
	v_rcp_f32_e32 v36, v46
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, null, v0, v0, v9
	v_div_fixup_f32 v21, v33, v0, v21
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v45, v39, v35
	v_rcp_f32_e32 v40, v38
	v_div_scale_f32 v48, null, v0, v0, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v46, v36, 1.0
	v_mul_f32_e32 v37, v34, v41
	v_fma_f32 v33, -v44, v45, v39
	v_rcp_f32_e32 v50, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v47, v36
	v_fma_f32 v43, -v42, v37, v34
	v_fmac_f32_e32 v45, v33, v35
	v_div_scale_f32 v33, s5, v9, v0, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v43, v41
	v_fma_f32 v43, -v38, v40, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	v_cndmask_b32_e64 v21, 0, v21, s1
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v42, v37, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v40, v43, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v41, v37
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v37, -v44, v45, v39
	v_div_scale_f32 v41, s4, v10, v0, v10
	v_mul_f32_e32 v39, v33, v40
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v23, v34, v0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v49, v41, v36
	v_div_fmas_f32 v35, v37, v35, v45
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v44, -v42, v43, 1.0
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v37, -v46, v49, v41
	v_div_fixup_f32 v24, v35, v0, v24
	v_fmac_f32_e32 v39, v47, v40
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s6, v11, v0, v11
	v_fmac_f32_e32 v49, v37, v36
	v_div_scale_f32 v37, null, v0, v0, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v35, -v48, v50, 1.0
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v46, v49, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v42, v45, v44
	v_fmac_f32_e32 v50, v35, v50
	v_div_scale_f32 v35, s3, v12, v0, v12
	v_div_fmas_f32 v33, v33, v40, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v45, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v39, v35, v50
	v_div_fmas_f32 v36, v38, v36, v49
	v_fma_f32 v38, -v42, v45, v44
	v_div_scale_f32 v40, null, v0, v0, v14
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v9, v33, v0, v9
	v_div_fmas_f32 v38, v38, v43, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v43, -v48, v39, v35
	v_div_fixup_f32 v10, v36, v0, v10
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s4, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v11, v38, v0, v11
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	v_fma_f32 v36, -v40, v42, 1.0
	v_fma_f32 v35, -v48, v39, v35
	v_rcp_f32_e32 v44, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v37, v33, v41
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v36, s5, v14, v0, v14
	v_div_fmas_f32 v35, v35, v50, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v43, v34
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v39, v36, v42
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v35, v0, v12
	v_fma_f32 v35, -v37, v33, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v37, -v40, v39, v36
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v35, v34, v33
	v_div_scale_f32 v34, null, v0, v0, v1
	v_fmac_f32_e32 v39, v37, v42
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v35, s3, v15, v0, v15
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	v_fma_f32 v36, -v40, v39, v36
	v_mul_f32_e32 v40, v35, v44
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v45, v33, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v34, v37, 1.0
	v_div_scale_f32 v33, s4, v16, v0, v16
	v_div_fmas_f32 v36, v36, v42, v39
	v_fma_f32 v39, -v38, v40, v35
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v42, v33, v45
	v_div_scale_f32 v48, s5, v1, v0, v1
	v_fma_f32 v49, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s6, v2, v0, v2
	v_div_fixup_f32 v14, v36, v0, v14
	v_fma_f32 v35, -v38, v40, v35
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v33, -v43, v42, v33
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s3, v3, v0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v40, null, v0, v0, v4
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_fixup_f32 v1, v34, v0, v1
	v_div_scale_f32 v34, null, v0, v0, v5
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	v_div_scale_f32 v37, null, v0, v0, v7
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s3, v5, v0, v5
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v49, v33, v36 :: v_dual_fmac_f32 v46, v50, v46
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s4, v6, v0, v6
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s5, v7, v0, v7
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_div_scale_f32 v50, s6, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	v_fmac_f32_e32 v49, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fma_f32 v47, -v37, v52, v48
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v53, v50
	v_div_fmas_f32 v38, v38, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v51, v40, v39 :: v_dual_fmac_f32 v52, v47, v41
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v53, v34, v46
	v_div_fmas_f32 v33, v33, v36, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v36, -v44, v53, v50
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v33, v0, v5
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v25, s1
	v_cndmask_b32_e64 v25, 0, v26, s1
	v_cndmask_b32_e64 v26, 0, v27, s1
	v_cndmask_b32_e64 v27, 0, v28, s1
	v_cndmask_b32_e64 v28, 0, v29, s1
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v37, v8, 16, 1
	v_bfe_u32 v38, v25, 16, 1
	v_bfe_u32 v39, v26, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v30, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s5, v8, v8
	v_add3_u32 v37, v8, v37, 0x7fff
	v_add3_u32 v8, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_add3_u32 v25, v26, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v26, v26
	v_bfe_u32 v26, v27, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v31, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v28, 16, 1
	v_bfe_u32 v38, v29, 16, 1
	v_add3_u32 v26, v27, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v27, v27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v32, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s7
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v28, v28
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v30, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s6
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s7
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v30, v30
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v29.h, s6
	v_bfe_u32 v29, v19, 16, 1
	v_bfe_u32 v30, v20, 16, 1
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v26, v18, v26, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s7
	v_add3_u32 v18, v19, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v30, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s5
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v26, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cmp_o_f32_e64 s5, v21, v21
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v26, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v23, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v21, v9, v21, 0x7fff
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v24, v24
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v12, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v13, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s5, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s6, v5, v5
	v_bfe_u32 v5, v0, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v0, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v0, v0
	v_cndmask_b16 v0.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s9
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v32, 1, v64
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v5, v8, v27, s0
	v_cndmask_b32_e64 v6, v17, v25, s0
	v_cndmask_b32_e64 v7, v25, v17, s0
	v_cndmask_b32_e64 v13, v28, v20, s0
	v_cndmask_b32_e64 v16, v12, v9, s0
	v_cndmask_b32_e64 v9, v9, v12, s0
	v_cndmask_b32_e64 v12, v11, v10, s0
	v_cndmask_b32_e64 v10, v10, v11, s0
	v_cndmask_b32_e64 v17, v0, v1, s0
	v_cndmask_b32_e64 v0, v1, v0, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s37, v61
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v15, v18, v19, s0
	v_cndmask_b32_e64 v1, v2, v3, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 16, v32
	s_mov_b32 s5, 0x76543210
	v_or_b32_e32 v34, 32, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v14, v19, v18, s0
	v_cndmask_b32_e64 v18, v3, v2, s0
	v_permlanex16_b32 v2, v5, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v13, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s5, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v4, v27, v8, s0
	v_cndmask_b32_e64 v8, v20, v28, s0
	v_permlanex16_b32 v9, v9, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 48, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v3, v7, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v15, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s37, v33
	v_cmp_gt_i32_e64 s4, s37, v32
	v_cmp_gt_i32_e64 s1, s37, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v10, v11, v12, v62
	v_perm_b32 v11, v11, v12, v63
	v_perm_b32 v12, v13, v17, v62
	v_perm_b32 v13, v13, v17, v63
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v2, v4, v62
	v_perm_b32 v1, v2, v4, v63
	v_perm_b32 v4, v5, v8, v62
	v_perm_b32 v5, v5, v8, v63
	v_perm_b32 v8, v9, v16, v62
	v_perm_b32 v9, v9, v16, v63
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s37, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v2, v3, v6, v62
	v_perm_b32 v3, v3, v6, v63
	v_perm_b32 v6, v7, v14, v62
	v_perm_b32 v7, v7, v14, v63
	v_perm_b32 v14, v15, v18, v62
	v_perm_b32 v15, v15, v18, v63
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s0, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v35, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[8:11], 0 offen
	buffer_store_b128 v[4:7], v17, s[8:11], 0 offen
	buffer_store_b128 v[8:11], v18, s[8:11], 0 offen
	buffer_store_b128 v[12:15], v19, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp41:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 117
		.amdhsa_next_free_sgpr 56
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 117
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10364
; TotalNumSgprs: 58
; NumVgprs: 117
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 117
; Occupancy: 12
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
	.short	968                             ; DW_AT_call_line
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
	.short	972                             ; DW_AT_call_line
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
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
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     117
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
