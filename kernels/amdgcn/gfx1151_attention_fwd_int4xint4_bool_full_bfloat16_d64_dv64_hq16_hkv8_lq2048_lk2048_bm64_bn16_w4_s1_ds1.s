	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x60
	s_load_b256 s[36:43], s[0:1], 0x0
	v_dual_mov_b32 v46, 0x6420 :: v_dual_and_b32 v39, 1, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v40, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v47, 0x7531 :: v_dual_lshlrev_b32 v38, 4, v39
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s5, s4, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v41, s4, v40
	.loc	1 773 26                        ; attention.py:773:26
	v_or_b32_e32 v1, s5, v40
	v_dual_mov_b32 v48, 0x5410 :: v_dual_mov_b32 v33, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v43, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v41
	v_dual_mov_b32 v49, 0x7632 :: v_dual_and_b32 v44, 15, v0
	v_mov_b32_e32 v26, v33
	s_mov_b32 s47, 0x31027000
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[1:2], null, s28, v1, v[38:39]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s2, s28, v38
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v43
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s45, s37, 0xffff
	s_mov_b32 s44, s36
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s2
	s_load_b256 s[20:27], s[0:1], 0x20
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v54, 1, v0
	v_dual_mov_b32 v59, 0 :: v_dual_lshlrev_b32 v62, 5, v0
	buffer_load_b128 v[34:37], v1, s[44:47], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v2, v44
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s45, s43, 0xffff
	s_mov_b32 s44, s42
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_i32 v51, v0, 0, 1
	v_bfe_u32 v53, v0, 4, 1
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v56, s5, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s4, v1
	s_load_b64 s[4:5], s[0:1], 0x70
	v_mov_b32_e32 v57, 0xff800000
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v56
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v30, v33 :: v_dual_lshlrev_b32 v61, 7, v0
	s_add_i32 s0, s3, s0
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 974 51                        ; attention.py:974:51
	v_and_b32_e32 v60, 0x70, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s6, s3, s1
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v39
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v45, v1, s[44:47], 0 offen
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v29, v33 :: v_dual_lshlrev_b32 v76, 3, v39
	v_cndmask_b32_e64 v39, 0x7531, v46, s1
	v_bfe_i32 v63, v0, 2, 1
	v_dual_mov_b32 v32, v33 :: v_dual_and_b32 v51, 0x90, v51
	v_dual_mov_b32 v21, v33 :: v_dual_and_b32 v46, 0x700, v61
	v_dual_mov_b32 v23, v33 :: v_dual_and_b32 v62, 0x160, v62
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v64, v54, 30, v53
	v_lshrrev_b32_e32 v61, 2, v60
	v_cndmask_b32_e64 v47, 0x6420, v47, s1
	v_lshl_or_b32 v39, v39, 8, v39
	v_mov_b32_e32 v18, v33
	v_dual_mov_b32 v11, v33 :: v_dual_lshlrev_b32 v60, 2, v64
	v_dual_mov_b32 v13, v33 :: v_dual_add_nc_u32 v46, 0, v46
	v_and_or_b32 v38, v40, 15, v38
	v_xor_b32_e32 v40, v51, v61
	v_and_or_b32 v61, 0x90, v63, v62
	v_and_b32_e32 v39, 0x750031, v39
	v_lshl_or_b32 v47, v47, 8, v47
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s3, s6, 0x10007
	v_dual_mov_b32 v20, v33 :: v_dual_lshlrev_b32 v63, 2, v38
	v_mov_b32_e32 v24, v33
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v66, v46, v40
	s_add_i32 s3, s6, s3
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v62, 4, v60
	v_xor_b32_e32 v38, 16, v61
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v40, s5, v41
	v_lshl_or_b32 v39, v39, 4, v39
	v_and_b32_e32 v41, 0x750031, v47
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s3, s3, 0x80000
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v58, 16, v0
	s_sext_i32_i16 s3, s3
	v_dual_mov_b32 v19, v33 :: v_dual_and_b32 v54, 24, v54
	v_dual_mov_b32 v14, v33 :: v_dual_and_b32 v75, 0x7050301, v39
	v_dual_mov_b32 v7, v33 :: v_dual_add_nc_u32 v72, 0, v38
	v_lshl_or_b32 v39, v41, 4, v41
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_ashr_i32 s3, s3, 1
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s6, s4, s6
	.loc	1 906 33                        ; attention.py:906:33
	s_lshl3_add_u32 s7, s0, s3
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s0, s31, s0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v50, 3, v0
	v_lshrrev_b32_e32 v52, 4, v0
	v_dual_mov_b32 v28, v33 :: v_dual_lshlrev_b32 v55, 2, v0
	v_dual_mov_b32 v27, v33 :: v_dual_lshlrev_b32 v0, 2, v44
	v_lshrrev_b32_e32 v43, 2, v43
	v_lshl_or_b32 v44, v44, 5, v54
	s_add_i32 s6, s6, s0
	v_and_b32_e32 v84, 0x7050301, v39
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v58
	v_dual_mov_b32 v31, v33 :: v_dual_and_b32 v42, 28, v55
	v_dual_mov_b32 v22, v33 :: v_dual_add_nc_u32 v65, 0, v44
	v_xor_b32_e32 v43, v55, v43
	v_xor_b32_e32 v51, 8, v44
	v_xor_b32_e32 v54, 16, v44
	v_xor_b32_e32 v55, 24, v44
	v_add3_u32 v76, s6, v76, v40
	v_cndmask_b32_e64 v44, 0x1054, v48, s0
	v_cndmask_b32_e64 v46, 0x3276, v49, s0
	v_mov_b32_e32 v16, v33
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s8, s30, 0x3fb8aa3b
	v_dual_mov_b32 v15, v33 :: v_dual_add_nc_u32 v64, 0, v43
	v_lshl_or_b32 v44, v44, 8, v44
	v_lshl_or_b32 v46, v46, 8, v46
	.loc	1 906 32                        ; attention.py:906:32
	s_lshl_b32 s5, s7, 11
	v_dual_mov_b32 v86, 0xff800000 :: v_dual_mov_b32 v25, 0
	v_or_b32_e32 v74, s5, v53
	v_dual_mov_b32 v10, v33 :: v_dual_add_nc_u32 v69, 0, v51
	v_dual_mov_b32 v12, v33 :: v_dual_add_nc_u32 v71, 0, v55
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v70, 0, v54
	v_dual_mov_b32 v6, v33 :: v_dual_mov_b32 v87, 0xff800000
	v_mov_b32_e32 v8, v33
	.loc	1 910 31                        ; attention.py:910:31
	v_cmp_gt_i32_e64 s3, s28, v42
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s4, s29, v0
	v_lshl_or_b32 v67, s7, 10, v52
	v_xor_b32_e32 v68, 64, v63
	v_or_b32_e32 v73, s5, v50
	v_or_b32_e32 v77, 2, v74
	v_or_b32_e32 v78, 4, v74
	v_or_b32_e32 v79, 6, v74
	v_or_b32_e32 v80, 8, v74
	v_or_b32_e32 v81, 10, v74
	v_or_b32_e32 v82, 12, v74
	v_or_b32_e32 v83, 14, v74
	s_and_b32 s39, s39, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	s_mov_b32 s33, 0
	s_mov_b32 s34, 0x76543210
	s_mov_b32 s50, s46
	s_mov_b32 s51, s47
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s48, s20
	s_mov_b32 s36, s22
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s22, s7, 7
	s_mov_b32 s49, s21
	s_mov_b32 s42, s46
	s_mov_b32 s43, s47
	s_mov_b32 s44, s38
	s_mov_b32 s45, s39
	s_mov_b32 s37, s23
	s_mov_b32 s38, s46
	s_mov_b32 s39, s47
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v38, v60, v34
	ds_bpermute_b32 v34, v62, v34
	ds_bpermute_b32 v39, v60, v35
	ds_bpermute_b32 v35, v62, v35
	ds_bpermute_b32 v40, v60, v36
	ds_bpermute_b32 v36, v62, v36
	ds_bpermute_b32 v41, v60, v37
	ds_bpermute_b32 v37, v62, v37
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v43, v34, v38, s0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v2, v33 :: v_dual_lshlrev_b32 v45, 16, v45
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v47, v36, v40, s0
	v_cndmask_b32_e64 v49, v40, v36, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 928 41                        ; attention.py:928:41
	v_mul_f32_e32 v85, s8, v45
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v45, v38, v34, s0
	v_and_b32_e32 v34, 0x540054, v44
	v_and_b32_e32 v38, 0x760076, v46
	v_cndmask_b32_e64 v44, v35, v39, s0
	v_cndmask_b32_e64 v46, v39, v35, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v48, v37, v41, s0
	v_lshl_or_b32 v34, v34, 4, v34
	v_lshl_or_b32 v35, v38, 4, v38
	v_mov_b32_e32 v4, v33
	v_cndmask_b32_e64 v50, v41, v37, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v53, 0x5040504, v34
	v_and_b32_e32 v54, 0x7060706, v35
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 913 33 is_stmt 1              ; attention.py:913:33
	v_mov_b16_e32 v55.l, 0
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v55.h, v95.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v94.h, v93.l
	v_mov_b16_e32 v93.l, v55.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v93.h, v92.l
	v_mov_b16_e32 v92.l, v55.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v92.h, v91.l
	v_mov_b16_e32 v91.l, v55.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v91.h, v90.l
	v_mov_b16_e32 v90.l, v55.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v90.h, v89.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v41, v41
	v_mul_f32_e32 v37, v85, v37
	v_mul_f32_e32 v38, v85, v38
	v_mul_f32_e32 v39, v85, v39
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v105.h, v55.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v40, v85, v40
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v95.l, v55.l
	v_mov_b16_e32 v95.h, v94.l
	v_mov_b16_e32 v94.l, v55.l
	v_mov_b16_e32 v89.l, v55.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v89.h, v88.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v34, v34
	v_mul_f32_e32 v36, v85, v36
	v_mul_f32_e32 v41, v85, v41
	v_mul_f32_e32 v93, v37, v93
	v_dual_mul_f32 v37, v38, v92 :: v_dual_mul_f32 v38, v39, v91
	v_mul_f32_e32 v39, v40, v90
	v_dual_mul_f32 v35, v85, v35 :: v_dual_mul_f32 v94, v36, v94
	v_mul_f32_e32 v34, v85, v34
	v_mul_f32_e32 v40, v41, v89
	.loc	1 962 34                        ; attention.py:962:34
	v_lshrrev_b32_e32 v41, 24, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v95, v35, v95
	.loc	1 962 34                        ; attention.py:962:34
	v_lshrrev_b32_e32 v35, 8, v51
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v88, v34, v55
	.loc	1 962 34                        ; attention.py:962:34
	v_and_b16 v34.l, 0xff, v51.l
	v_cmp_ne_u16_e64 s8, 0, v41.l
	.loc	1 913 33                        ; attention.py:913:33
	v_lshrrev_b32_e32 v96, 8, v52
	.loc	1 962 34                        ; attention.py:962:34
	v_and_b16 v34.h, 0xff, v35.l
	v_and_b16 v35.l, 0xff, v51.h
	v_and_b16 v35.h, 0xff, v52.l
	.loc	1 962 25 is_stmt 0              ; attention.py:962:25
	s_and_b32 s12, vcc_lo, s8
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s5, 0, v34.l
	v_cmp_ne_u16_e64 s6, 0, v34.h
	v_cmp_ne_u16_e64 s7, 0, v35.l
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v34, 0, 1, s12
	.loc	1 962 34                        ; attention.py:962:34
	v_lshrrev_b32_e32 v51, 24, v52
	v_and_b16 v36.l, 0xff, v96.l
	.loc	1 962 25                        ; attention.py:962:25
	s_and_b32 s10, vcc_lo, s6
	s_and_b32 s11, vcc_lo, s7
	.loc	1 962 34                        ; attention.py:962:34
	v_and_b16 v36.h, 0xff, v52.h
	v_cmp_ne_u16_e64 s13, 0, v35.h
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v41, 0, 1, s10
	v_cndmask_b32_e64 v35, 0, 1, s11
	v_lshlrev_b16 v34.l, 8, v34.l
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s16, 0, v51.l
	.loc	1 962 25                        ; attention.py:962:25
	s_and_b32 s9, vcc_lo, s5
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s14, 0, v36.l
	v_cmp_ne_u16_e64 s15, 0, v36.h
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v36, 0, 1, s9
	v_or_b16 v91.h, v35.l, v34.l
	v_mov_b16_e32 v34.l, v41.l
	s_and_b32 s16, vcc_lo, s16
	s_and_b32 s15, vcc_lo, s15
	v_cndmask_b32_e64 v90, 0, 1, s16
	v_mov_b16_e32 v35.l, v36.l
	v_lshlrev_b16 v34.l, 8, v34.l
	v_cndmask_b32_e64 v89, 0, 1, s15
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s13, vcc_lo, s13
	v_cndmask_b32_e64 v52, 0, 1, s14
	v_or_b16 v91.l, v35.l, v34.l
	v_mov_b16_e32 v34.l, v90.l
	v_mov_b16_e32 v35.l, v89.l
	v_cndmask_b32_e64 v51, 0, 1, s13
	.loc	1 974 36 is_stmt 1              ; attention.py:974:36
	s_lshr_b32 s17, s33, 1
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v103.l, v55.l
	.loc	1 962 25                        ; attention.py:962:25
	v_lshlrev_b16 v34.l, 8, v34.l
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s21, 0xff800000, v86
	.loc	1 962 25                        ; attention.py:962:25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v34.h, v35.l, v34.l
	v_mov_b16_e32 v34.l, v52.l
	v_mov_b16_e32 v35.l, v51.l
	v_lshlrev_b16 v34.l, 8, v34.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b16 v34.l, v35.l, v34.l
	v_perm_b32 v35, v34, v91, v75
	v_perm_b32 v34, v34, v91, v84
	ds_bpermute_b32 v35, v60, v35
	ds_bpermute_b32 v34, v62, v34
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v96, v34, v35, s0
	v_cndmask_b32_e64 v97, v35, v34, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v96
	v_cmp_eq_u32_e64 s7, 1, v34
	v_and_b32_e32 v34, 0x100, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v52, 0xff800000, v88, s7
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u32_e64 s8, 0, v34
	v_and_b32_e32 v34, 1, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v88, v95, 0xff800000, s8
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u32_e64 s5, 1, v34
	v_and_b32_e32 v34, 0x100, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v41, 0xff800000, v37, s5
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u32_e64 s6, 0, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v34, v41, v52, s0
	v_cndmask_b32_e64 v51, v38, 0xff800000, s6
	v_cndmask_b32_e64 v35, v52, v41, s0
	ds_bpermute_b32 v34, v63, v34
	v_cndmask_b32_e64 v36, v51, v88, s0
	v_cndmask_b32_e64 v37, v88, v51, s0
	ds_bpermute_b32 v35, v68, v35
	ds_bpermute_b32 v36, v63, v36
	ds_bpermute_b32 v37, v68, v37
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v89, v35, v34, s1
	v_cndmask_b32_e64 v90, v34, v35, s1
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v91, v37, v36, s1
	v_cndmask_b32_e64 v92, v36, v37, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v95, v34, v35, v91
.Ltmp2:
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v34, s17, v67
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s17, s33, 4
	.loc	1 1001 25 is_stmt 0             ; attention.py:1001:25
	s_add_i32 s17, s17, s22
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 977 30 is_stmt 1              ; attention.py:977:30
	v_mad_u64_u32 v[34:35], null, v34, s29, v[0:1]
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s17, s17, s29
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	buffer_load_b32 v37, v34, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v34.l, v37.h
	v_bfe_i32 v36, v37, 0, 8
	v_lshrrev_b32_e32 v38, 8, v37
	v_lshrrev_b32_e32 v100, 24, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_i32 v99, v34, 0, 8
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v34, s17, v0, 1
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v99.h, v55.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v98, v38, 0, 8
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v98.h, v55.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v101, v100, 0, 8
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	buffer_load_b64 v[34:35], v34, s[36:39], 0 offen
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v55.h, v34.l
	v_and_b32_e32 v104, 0xffff0000, v35
	v_and_b32_e32 v102, 0xffff0000, v34
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v34.l, 4, v37.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v103.h, v35.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v34.h, v37.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v35.l, v36.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v34.l, v34.l, 15
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s18, 7, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s17, 0, v35.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v35.l, v34.l, -16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v35.h, 0, -16, s18
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v34.l, v34.l, v35.l, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v36.l, v34.h, v35.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v34, v34, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_bfe_i32 v35, v36, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v36.h, v55.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v35, v35
	v_mul_f32_e32 v34, v55, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v35, v55, v35
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v36.l, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s17, v34, v34
	v_mov_b16_e32 v105.l, v35.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v36, 1, v36
	v_and_b32_e32 v105, 1, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v34, v36, 0x7fff
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_mov_b16_e32 v36.l, v98.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v105, v35, v105, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s17
	v_cmp_o_f32_e64 s17, v35, v35
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v35.l, 4, v38.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v35.h, v38.l, 15
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v34.l, 0x7fff, v105.h, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v35.l, v35.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s17, 0, v36.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s18, 7, v35.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v36.l, v35.l, -16
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v36.h, 0, -16, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v35.l, v35.l, v36.l, s17
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v38.l, v35.h, v36.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v35, v35, 0, 16
	v_bfe_i32 v36, v38, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v38.h, v55.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v35, v102, v35
	v_mul_f32_e32 v36, v102, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v38.l, v35.h
	v_cmp_o_f32_e64 s17, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v98.l, v36.h
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v98, 1, v98
	v_add3_u32 v38, v35, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v98, v36, v98, 0x7fff
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s17
	v_cmp_o_f32_e64 s17, v36, v36
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_lshrrev_b32_e32 v36, 20, v37
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v36.h, v37.h, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v37.l, v99.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v35.l, 0x7fff, v98.h, s17
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v36.l, v36.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s18, 7, v36.h
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s17, 0, v37.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v98.h, v55.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v37.l, v36.l, -16
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v37.h, 0, -16, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v36.l, v36.l, v37.l, s17
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v38.l, v36.h, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v36, v36, 0, 16
	v_bfe_i32 v37, v38, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v38.h, v55.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v36, v103, v36
	v_mul_f32_e32 v37, v103, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v38.l, v36.h
	v_mov_b16_e32 v98.l, v37.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s17, v36, v36
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v98, 1, v98
	v_add3_u32 v38, v36, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v98, v37, v98, 0x7fff
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_mov_b16_e32 v38.l, v101.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s17
	v_cmp_o_f32_e64 s17, v37, v37
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v37.l, 4, v100.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v37.h, v100.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v36.l, 0x7fff, v98.h, s17
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s17, 0, v38.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s18, 7, v37.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v38.l, v37.l, -16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v38.h, 0, -16, s18
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v37.l, v37.l, v38.l, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v98.l, v37.h, v38.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v37, v37, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_bfe_i32 v38, v98, 0, 16
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v98.h, v55.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v38, v38
	v_mul_f32_e32 v37, v104, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v38, v104, v38
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v98.l, v37.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s17, v37, v37
	v_mov_b16_e32 v99.l, v38.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v98, 1, v98
	v_and_b32_e32 v99, 1, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v98, v37, v98, 0x7fff
	v_add3_u32 v99, v38, v99, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v37.h, 0x7fff, v98.h, s17
	v_cmp_o_f32_e64 s17, v38, v38
	.loc	1 962 25 is_stmt 1              ; attention.py:962:25
	v_and_b32_e32 v38, 0x1000000, v97
	v_and_b32_e32 v97, 0x10000, v97
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v37.l, 0x7fff, v99.h, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u32_e64 s17, 0, v38
	v_cmp_eq_u32_e64 s18, 0, v97
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v66, v34, v35 offset1:8
	ds_store_2addr_b32 v66, v36, v37 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v98, v40, 0xff800000, s17
	v_cndmask_b32_e64 v97, v39, 0xff800000, s18
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b32_e32 v39, 0x1000000, v96
	v_and_b32_e32 v40, 0x10000, v96
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	v_add_nc_u32_e32 v34, 0, v61
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v38, v97, v98
.Ltmp4:
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u32_e64 s19, 0, v39
	v_cmp_eq_u32_e64 s20, 0, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v93, v93, 0xff800000, s19
	v_cndmask_b32_e64 v94, v94, 0xff800000, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v100, v98, v93, s0
	v_cndmask_b32_e64 v96, v97, v94, s0
	v_cndmask_b32_e64 v99, v94, v97, s0
	v_cndmask_b32_e64 v101, v93, v98, s0
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v39, v52, v88, v94
.Ltmp6:
	.loc	1 967 26                        ; attention.py:967:26
	ds_bpermute_b32 v100, v63, v100
	ds_bpermute_b32 v96, v63, v96
	ds_bpermute_b32 v99, v68, v99
	ds_bpermute_b32 v101, v68, v101
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v40, v93, v41, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v38, v39, v40, v38
.Ltmp8:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v40, v57, v57
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v39, v38, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp10:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v39, v86, v38, v39
	v_max_f32_e32 v38, v87, v87
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v102, v99, v96, s1
	v_cndmask_b32_e64 v96, v96, v99, s1
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v99, v101, v100, s1
	v_cndmask_b32_e64 v103, v100, v101, s1
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v101, v101, v101 :: v_dual_max_f32 v100, v100, v100
.Ltmp12:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v97, v97, v39
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v104, v92, v102, v96
.Ltmp14:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v93, v93, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v41, v41, v39 :: v_dual_max_f32 v100, v100, v101
	v_sub_f32_e32 v51, v51, v39
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v93, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v95, v95, v104, v100
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v100, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v100, v100 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v100, v100, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v95, v95, v100
.Ltmp18:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v57, v40, v95
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v40, v86, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v40, v40
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v100, 0, v40, s21
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v38, v38, v95
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s21, 0xff800000, v87
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v86, v89, v57
	v_sub_f32_e32 v89, v91, v57
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v100
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v95, v87, v38
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v87, v90, v57
	v_dual_sub_f32 v90, v92, v57 :: v_dual_mul_f32 v17, v17, v100
	v_sub_f32_e32 v91, v102, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v95, v95
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v92, v96, v57 :: v_dual_mul_f32 v19, v19, v100
	v_dual_sub_f32 v96, v103, v57 :: v_dual_mul_f32 v21, v21, v100
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v101, v87
	v_exp_f32_e32 v89, v89
	v_exp_f32_e32 v90, v90
	v_exp_f32_e32 v91, v91
	v_exp_f32_e32 v92, v92
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cndmask_b32_e64 v40, 0, v95, s21
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v95, v99, v57
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v96, v96
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v31, v31, v100
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v99, v86
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_dual_sub_f32 v52, v52, v39 :: v_dual_mul_f32 v23, v23, v100
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v95, v95
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v94, v94, v39 :: v_dual_mul_f32 v11, v11, v100
	v_dual_sub_f32 v98, v98, v39 :: v_dual_mul_f32 v13, v13, v100
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v86, v41
	v_exp_f32_e32 v41, v97
	v_exp_f32_e32 v102, v52
	v_exp_f32_e32 v52, v94
	v_exp_f32_e32 v94, v98
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v97, 0, v99, s9
	v_cndmask_b32_e64 v98, 0, v101, s10
	v_cndmask_b32_e64 v99, 0, v89, s11
	v_cndmask_b32_e64 v90, 0, v90, s12
	v_cndmask_b32_e64 v91, 0, v91, s13
	v_cndmask_b32_e64 v92, 0, v92, s14
	v_cndmask_b32_e64 v95, 0, v95, s15
	v_cndmask_b32_e64 v96, 0, v96, s16
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v87, v51
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v89, v93, 0, s19
	v_cndmask_b32_e64 v51, v41, 0, s18
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v41, v97, v98
	v_dual_add_f32 v90, v99, v90 :: v_dual_mul_f32 v1, v1, v100
	v_add_f32_e32 v91, v91, v92
.Ltmp20:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v93.h, v55.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v92, v95, v96 :: v_dual_add_f32 v41, v41, v90
.Ltmp22:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v88, v88, v39 :: v_dual_mul_f32 v9, v9, v100
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v15, v15, v100
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v90, v91, v92
.Ltmp24:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v91, 0, v102, s7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v103, v88
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v92.h, v55.l
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v88, v52, 0, s20
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v41, v41, v90
.Ltmp26:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v93.l, v91.h
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v87, v87, 0, s6
	v_cndmask_b32_e64 v86, 0, v86, s5
	v_cndmask_b32_e64 v52, v94, 0, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v90, v41 :: v_dual_and_b32 v93, 1, v93
.Ltmp28:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s5, v87, v87
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v5, v5, v100
	v_mul_f32_e32 v27, v27, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v90, v90 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v93, v91, v93, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v29, v29, v100
	v_mul_f32_e32 v32, v32, v100
	v_dual_mul_f32 v18, v18, v100 :: v_dual_add_f32 v41, v41, v90
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v90, v103, 0, s8
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v20, v20, v100
	v_mul_f32_e32 v22, v22, v100
	v_mul_f32_e32 v24, v24, v100
	v_mul_f32_e32 v10, v10, v100
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v92.l, v90.h
	v_cmp_o_f32_e64 s7, v90, v90
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v12, v12, v100
	v_mul_f32_e32 v14, v14, v100
	v_mul_f32_e32 v16, v16, v100
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v92, 1, v92
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v100
	v_mul_f32_e32 v4, v4, v100
	v_mul_f32_e32 v6, v6, v100
	v_mul_f32_e32 v7, v7, v100
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v92, v90, v92, 0x7fff
	v_mov_b16_e32 v92.l, v88.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v100
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v41, v59, v40
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v30, v30, v100
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v90.h, 0x7fff, v92.h, s7
	v_cmp_o_f32_e64 s7, v91, v91
	v_mov_b16_e32 v91.l, v89.h
	v_mov_b16_e32 v91.h, v55.l
	v_mov_b16_e32 v92.h, v55.l
	v_mov_b32_e32 v59, v41
	v_cndmask_b16 v90.l, 0x7fff, v93.h, s7
	v_cmp_o_f32_e64 s7, v89, v89
	v_and_b32_e32 v91, 1, v91
	v_and_b32_e32 v92, 1, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v91, v89, v91, 0x7fff
	v_add3_u32 v92, v88, v92, 0x7fff
	v_mov_b16_e32 v91.l, v86.h
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v89.h, 0x7fff, v91.h, s7
	v_cmp_o_f32_e64 s7, v88, v88
	v_mov_b16_e32 v88.l, v87.h
	v_mov_b16_e32 v88.h, v55.l
	v_mov_b16_e32 v91.h, v55.l
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v26, v26, v100
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v89.l, 0x7fff, v92.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v88, 1, v88
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v88, v87, v88, 0x7fff
	v_add3_u32 v91, v86, v91, 0x7fff
	v_mov_b16_e32 v87.l, v51.h
	v_mov_b16_e32 v87.h, v55.l
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v28, v28, v100
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v92.h, 0x7fff, v88.h, s5
	v_cmp_o_f32_e64 s5, v86, v86
	v_mov_b16_e32 v86.l, v52.h
	v_mov_b16_e32 v86.h, v55.l
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v3, v3, v100
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v87, 1, v87
	v_cndmask_b16 v92.l, 0x7fff, v91.h, s5
	v_cmp_o_f32_e64 s5, v52, v52
	v_and_b32_e32 v86, 1, v86
	v_permlanex16_b32 v91, v89, s34, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v87, v51, v87, 0x7fff
	v_permlanex16_b32 v93, v92, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v86, v52, v86, 0x7fff
	v_perm_b32 v88, v91, v89, v53
	v_perm_b32 v89, v91, v89, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v91, v93, v92, v54
	v_cndmask_b16 v52.h, 0x7fff, v86.h, s5
	v_cmp_o_f32_e64 s5, v51, v51
	v_permlanex16_b32 v51, v90, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v52.l, 0x7fff, v87.h, s5
	v_perm_b32 v86, v51, v90, v53
	v_perm_b32 v87, v51, v90, v54
	v_perm_b32 v90, v93, v92, v53
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s5, s33, 16
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v94, v52, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 903 13                        ; attention.py:903:13
	s_cmpk_lt_u32 s33, 0x7f0
	s_mov_b32 s33, s5
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v92, v94, v52, v53
	v_perm_b32 v93, v94, v52, v54
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[94:97], v34
	ds_load_b128 v[102:105], v34 offset:512
	ds_load_b128 v[110:113], v34 offset:1024
	ds_load_b128 v[118:121], v34 offset:1536
	ds_load_b128 v[98:101], v72
	ds_load_b128 v[106:109], v72 offset:512
	ds_load_b128 v[114:117], v72 offset:1024
	ds_load_b128 v[122:125], v72 offset:1536
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[94:101], v[86:93], v[25:32]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[102:109], v[86:93], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[110:117], v[86:93], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[118:125], v[86:93], v[1:8]
	v_dual_mov_b32 v86, v39 :: v_dual_mov_b32 v87, v38
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v34, s33, v73
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v36, s33, v77, 1
	v_add_lshl_u32 v37, s33, v78, 1
	v_add_lshl_u32 v38, s33, v79, 1
	v_add_lshl_u32 v39, s33, v80, 1
	.loc	1 907 32                        ; attention.py:907:32
	v_mad_u64_u32 v[34:35], null, v34, s28, v[42:43]
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v35, s33, v74, 1
	v_add_lshl_u32 v40, s33, v81, 1
	v_add_lshl_u32 v41, s33, v82, 1
	v_add_lshl_u32 v51, s33, v83, 1
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	buffer_load_b32 v34, v34, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v64, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 923 37                        ; attention.py:923:37
	s_clause 0x7
	buffer_load_u16 v95, v35, s[48:51], 0 offen
	buffer_load_u16 v94, v36, s[48:51], 0 offen
	buffer_load_u16 v93, v37, s[48:51], 0 offen
	buffer_load_u16 v92, v38, s[48:51], 0 offen
	buffer_load_u16 v91, v39, s[48:51], 0 offen
	buffer_load_u16 v90, v40, s[48:51], 0 offen
	buffer_load_u16 v89, v41, s[48:51], 0 offen
	buffer_load_u16 v88, v51, s[48:51], 0 offen
	.loc	1 908 32                        ; attention.py:908:32
	ds_load_b64 v[51:52], v65
	ds_load_b64 v[96:97], v69
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v40, v33
	.loc	1 908 32                        ; attention.py:908:32
	ds_load_b64 v[98:99], v70
	ds_load_b64 v[100:101], v71
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v41, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[51:52], v[43:44], v[34:41] neg_lo:[1,1,0]
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[96:97], v[47:48], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[98:99], v[45:46], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[100:101], v[49:50], v[34:41] neg_lo:[1,1,0]
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s6, vcc_lo
	s_cbranch_execz .LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 955 25                        ; attention.py:955:25
	v_add_nc_u32_e32 v51, s33, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v52, 31, v51
	v_add_co_u32 v51, s5, s24, v51
	v_add_co_ci_u32_e64 v52, null, s25, v52, s5
	global_load_b64 v[51:52], v[51:52], off
	s_branch .LBB0_1
.LBB0_4:
	.loc	1 903 13                        ; attention.py:903:13
	ds_bpermute_b32 v37, v60, v41
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v0, s29, v56
	.loc	1 1046 74 is_stmt 0             ; attention.py:1046:74
	v_lshrrev_b32_e32 v33, 1, v58
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v55.l
	v_mov_b16_e32 v38.h, v55.l
	v_mov_b16_e32 v40.h, v55.l
	s_mov_b32 s11, 0x31027000
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s29, v33
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 16, v33
	v_or_b32_e32 v34, 32, v33
	v_or_b32_e32 v36, 48, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s29, v35
	v_cmp_gt_i32_e64 s1, s29, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s4, s29, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v41, null, v37, v37, v26
	v_div_scale_f32 v42, null, v37, v37, v25
	v_div_scale_f32 v44, null, v37, v37, v27
	v_rcp_f32_e32 v45, v41
	v_div_scale_f32 v43, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v42
	v_rcp_f32_e32 v48, v44
	v_div_scale_f32 v49, vcc_lo, v26, v37, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v47, v43
	v_div_scale_f32 v50, s6, v25, v37, v25
	v_fma_f32 v52, -v41, v45, 1.0
	v_div_scale_f32 v51, s7, v28, v37, v28
	v_fma_f32 v56, -v42, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v44, v48, 1.0
	v_fmac_f32_e32 v45, v52, v45
	v_div_scale_f32 v52, null, v37, v37, v30
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v57, -v43, v47, 1.0
	v_fmac_f32_e32 v46, v56, v46
	v_fmac_f32_e32 v48, v58, v48
	v_mul_f32_e32 v56, v49, v45
	v_rcp_f32_e32 v61, v52
	v_fmac_f32_e32 v47, v57, v47
	v_mul_f32_e32 v57, v50, v46
	v_div_scale_f32 v66, null, v37, v37, v29
	v_fma_f32 v62, -v41, v56, v49
	v_div_scale_f32 v59, s8, v27, v37, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v42, v57, v50
	v_fmac_f32_e32 v56, v62, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v52, v61, 1.0
	v_mul_f32_e32 v58, v51, v47
	v_fmac_f32_e32 v57, v63, v46
	v_mul_f32_e32 v60, v59, v48
	v_fma_f32 v41, -v41, v56, v49
	v_rcp_f32_e32 v49, v66
	v_fmac_f32_e32 v61, v62, v61
	v_fma_f32 v42, -v42, v57, v50
	v_fma_f32 v64, -v43, v58, v51
	v_div_fmas_f32 v41, v41, v45, v56
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v65, -v44, v60, v59
	v_div_fmas_f32 v42, v42, v46, v57
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v41, v37, v26
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v60, v65, v48
	v_div_fixup_f32 v25, v42, v37, v25
	v_fma_f32 v42, -v66, v49, 1.0
	v_fmac_f32_e32 v58, v64, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v44, v60, v59
	v_div_scale_f32 v45, s9, v30, v37, v30
	v_fmac_f32_e32 v49, v42, v49
	v_fma_f32 v43, -v43, v58, v51
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v26.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v43, v47, v58
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v47.h, v55.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v43, v44, v48, v60
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v25, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v25, v41, v37, v28
	v_dual_mul_f32 v41, v45, v61 :: v_dual_and_b32 v28, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v27, v43, v37, v27
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v44.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v38, 0, v25, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_add3_u32 v26, v26, v28, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v25, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v39, s7, v29, v37, v29
	v_fma_f32 v43, -v52, v41, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v40.l, v27.h
	v_add3_u32 v28, v44, v25, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v26.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v39, v49
	v_dual_fmac_f32 v41, v43, v61 :: v_dual_and_b32 v40, 1, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v26.l, v38.h
	v_cndmask_b16 v25.l, 0x7fff, v28.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v27, v40, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v66, v42, v39
	v_fma_f32 v44, -v52, v41, v45
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v26.h, v55.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v43, null, v37, v37, v32
	v_fmac_f32_e32 v42, v40, v49
	v_div_scale_f32 v40, null, v37, v37, v31
	v_div_fmas_f32 v41, v44, v61, v41
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v66, v42, v39
	v_rcp_f32_e32 v45, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v38, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v30, v41, v37, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v49, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v29, v39, v37, v29
	v_fma_f32 v27, -v40, v45, 1.0
	v_div_scale_f32 v39, s7, v32, v37, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v47.l, v30.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_dual_fmac_f32 v45, v27, v45 :: v_dual_and_b32 v26, 1, v26
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v26, v38, v26, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v38, v43
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.l, 0x7fff, v28.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v27, s8, v31, v37, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v43, v38, 1.0
	v_dual_mul_f32 v41, v27, v45 :: v_dual_fmac_f32 v38, v42, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v40, v41, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v29.h
	v_mov_b16_e32 v42.h, v55.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v28, v39, v38 :: v_dual_fmac_f32 v41, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v44, -v43, v28, v39
	v_fma_f32 v27, -v40, v41, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v28, v44, v38
	v_div_scale_f32 v44, null, v37, v37, v18
	v_fma_f32 v39, -v43, v28, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v44
	v_div_scale_f32 v43, null, v37, v37, v17
	v_div_fmas_f32 v28, v39, v38, v28
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v38, v43
	v_div_fmas_f32 v27, v27, v45, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v28, v28, v37, v32
	v_fma_f32 v32, -v44, v40, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v45.h, v55.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v40, v32, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v43, v38, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s10, v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v32, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v46, 1, v47
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v32, s8, v17, v37, v17
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v30, v46, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v30, v27, v37, v31
	v_div_scale_f32 v31, s7, v18, v37, v18
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v28.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v27.h, 0x7fff, v39.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_mul_f32_e32 v41, v31, v40
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v55.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v47, v32, v38
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v45.l, v30.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v44, v41, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v42, 1, v42
	v_cmp_o_f32_e64 s7, v30, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v46, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v42, v29, v42, 0x7fff
	v_and_b32_e32 v29, 1, v39
	v_and_b32_e32 v39, 1, v45
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v43, v47, v32
	v_div_scale_f32 v46, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v28, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v44, v41, v31
	v_fmac_f32_e32 v47, v45, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v31, v46
	v_div_scale_f32 v44, null, v37, v37, v19
	v_div_fmas_f32 v40, v28, v40, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v43, v47, v32
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v41, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v30, v39, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v32, v38, v47
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v46, v31, 1.0
	v_div_scale_f32 v29, vcc_lo, v20, v37, v20
	v_div_fixup_f32 v18, v40, v37, v18
	v_div_fixup_f32 v17, v32, v37, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v31, v38, v31
	v_fma_f32 v32, -v44, v41, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.h, v55.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s6
	v_cndmask_b32_e64 v30, 0, v17, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_mul_f32_e32 v17, v29, v31
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v27.l, 0x7fff, v42.h, s9
	v_mov_b16_e32 v43.h, v55.l
	v_mov_b16_e32 v43.l, v18.h
	v_mov_b16_e32 v38.l, v30.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v32, v41
	v_div_scale_f32 v32, s8, v19, v37, v19
	v_fma_f32 v40, -v46, v17, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v38
	v_cndmask_b16 v28.l, 0x7fff, v39.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v42, v32, v41 :: v_dual_and_b32 v39, 1, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v17, v40, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v30, v38, 0x7fff
	s_mov_b32 s10, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v44, v42, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v18, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v46, v17, v29
	v_fmac_f32_e32 v42, v40, v41
	v_div_scale_f32 v40, null, v37, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v29, v31, v17
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v29, -v44, v42, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v31, v40
	v_div_scale_f32 v32, null, v37, v37, v21
	v_div_fmas_f32 v29, v29, v41, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v18, v17, v37, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v20, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.h, v55.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v29, v37, v19
	v_fma_f32 v29, -v40, v31, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s6
	v_cndmask_b32_e64 v19, 0, v19, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v31, v29, v31
	v_div_scale_f32 v29, s7, v22, v37, v22
	v_fma_f32 v30, -v32, v20, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v18.h
	v_mov_b16_e32 v39.h, v55.l
	v_mov_b16_e32 v41.l, v19.h
	v_cndmask_b16 v17.l, 0x7fff, v38.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v20, v30, v20
	v_div_scale_f32 v30, s8, v21, v37, v21
	v_mul_f32_e32 v42, v29, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v30, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v18, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v40, v42, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v32, v39, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v43, v31
	v_div_scale_f32 v43, null, v37, v37, v24
	v_fmac_f32_e32 v39, v44, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v18, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v40, v42, v29
	v_rcp_f32_e32 v40, v43
	v_div_scale_f32 v44, null, v37, v37, v23
	v_fma_f32 v18, -v32, v39, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v29, v29, v31, v42
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v31, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v41, v19, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v20, v18, v20, v39
	v_div_fixup_f32 v22, v29, v37, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v43, v40, 1.0
	v_div_scale_f32 v29, vcc_lo, v24, v37, v24
	v_div_fixup_f32 v20, v20, v37, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v22, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v19, v19
	v_mov_b16_e32 v19.h, v55.l
	v_cndmask_b16 v18.h, 0x7fff, v38.h, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v19.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v30, v40
	v_fma_f32 v30, -v44, v31, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v55.l
	v_mov_b16_e32 v39.l, v20.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v22, v29, v40 :: v_dual_and_b32 v19, 1, v19
	v_fmac_f32_e32 v31, v30, v31
	v_div_scale_f32 v30, s7, v23, v37, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v43, v22, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v19, v21, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v38, v30, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v41.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v22, v32, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v44, v38, v30
	v_fma_f32 v29, -v43, v22, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v32, v31
	v_div_scale_f32 v32, null, v37, v37, v10
	v_div_fmas_f32 v22, v29, v40, v22
	v_div_scale_f32 v40, null, v37, v37, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v44, v38, v30
	v_rcp_f32_e32 v30, v32
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v29, v29, v31, v38
	v_rcp_f32_e32 v31, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v21, v20, v39, 0x7fff
	v_mov_b16_e32 v39.h, v55.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v23, v29, v37, v23
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v29, -v32, v30, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v20, v22, v37, v24
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v23, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v23, s7, v10, v37, v10
	v_fma_f32 v24, -v40, v31, 1.0
	v_fmac_f32_e32 v30, v29, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v21.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v31, v24, v31
	v_mul_f32_e32 v29, v23, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v20.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v24, s8, v9, v37, v9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v32, v29, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	v_mov_b16_e32 v21.l, v22.h
	v_mov_b16_e32 v21.h, v55.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v29, v38, v30
	v_div_scale_f32 v38, null, v37, v37, v12
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v23, -v32, v29, v23
	v_rcp_f32_e32 v32, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v22, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v23, v23, v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v20, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v10, v23, v37, v10
	v_fma_f32 v39, -v38, v32, 1.0
	v_mul_f32_e32 v41, v24, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s7
	v_cmp_o_f32_e64 s7, v22, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v32, v39, v32
	v_fma_f32 v42, -v40, v41, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v29.l, 0x7fff, v21.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v42, v31
	v_div_scale_f32 v42, null, v37, v37, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v40, v41, v24
	v_rcp_f32_e32 v30, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v23, v24, v31, v41
	v_div_scale_f32 v24, vcc_lo, v12, v37, v12
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.h, v55.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v9, v23, v37, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v42, v30, 1.0
	v_mul_f32_e32 v20, v24, v32
	v_div_scale_f32 v23, s8, v11, v37, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v31, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v39, -v38, v20, v24
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v10.h
	v_mov_b16_e32 v31.h, v55.l
	v_mov_b16_e32 v41.l, v9.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v23, v30
	v_fmac_f32_e32 v20, v39, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v22, 1, v31
	v_and_b32_e32 v31, 1, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v42, v40, v23
	v_fma_f32 v24, -v38, v20, v24
	v_div_scale_f32 v38, null, v37, v37, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v10, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v39, v30
	v_div_scale_f32 v39, null, v37, v37, v13
	v_div_fmas_f32 v20, v24, v32, v20
	v_rcp_f32_e32 v24, v38
	v_fma_f32 v23, -v42, v40, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v32, v39
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v12, v20, v37, v12
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v23, v23, v30, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_add3_u32 v10, v9, v31, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v21, -v38, v24, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v40.h, v55.l
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v39, v32, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v40.l, v12.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v24, v21, v24
	v_div_scale_f32 v21, vcc_lo, v14, v37, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v32, v20, v32
	v_div_scale_f32 v20, s7, v13, v37, v13
	v_mul_f32_e32 v9, v21, v24
	v_div_fixup_f32 v11, v23, v37, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v22.l, 0x7fff, v10.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v30, v20, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v10, 1, v40
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v38, v9, v21
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v55.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v39, v30, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v12, v10, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v9, v31, v24
	v_div_scale_f32 v31, null, v37, v37, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v41, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v11.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v38, v9, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v39, v30, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v9, v21, v24, v9
	v_rcp_f32_e32 v21, v31
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v24, null, v37, v37, v15
	v_div_fmas_f32 v20, v20, v32, v30
	v_div_fixup_f32 v9, v9, v37, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_add3_u32 v23, v11, v23, 0x7fff
	v_mov_b16_e32 v30.h, v55.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v20, v37, v13
	v_rcp_f32_e32 v13, v24
	v_fma_f32 v14, -v31, v21, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v12, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v21, v14, v21
	v_div_scale_f32 v14, s7, v16, v37, v16
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v12.l, v9.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v24, v13, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.h, v55.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v32, v14, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v23.h, vcc_lo
	v_cmp_o_f32_e64 s9, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v20, v13
	v_div_scale_f32 v20, s8, v15, v37, v15
	v_fma_f32 v38, -v31, v32, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v12, 1, v12
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v23, v20, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.l, v11.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v32, v38, v21
	v_div_scale_f32 v38, null, v37, v37, v2
	v_fma_f32 v39, -v24, v23, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v12, v9, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v31, v32, v14
	v_rcp_f32_e32 v14, v38
	v_div_scale_f32 v31, null, v37, v37, v1
	v_fmac_f32_e32 v23, v39, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v9, v9, v21, v32
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v21, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v11, v11
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v24, v23, v20
	v_div_fixup_f32 v9, v9, v37, v16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v38, v14, 1.0
	v_div_scale_f32 v32, null, v37, v37, v4
	v_div_fmas_f32 v13, v20, v13, v23
	v_div_scale_f32 v16, vcc_lo, v2, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v14, v24, v14
	v_fma_f32 v20, -v31, v21, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v30, 1, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v20, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v30, v11, v30, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v11, v13, v37, v15
	v_mul_f32_e32 v13, v16, v14
	v_div_scale_f32 v15, s8, v1, v37, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.l, 0x7fff, v30.h, s7
	v_mov_b16_e32 v20.l, v9.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v23, -v38, v13, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v24, v15, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v20.h, v55.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.h, v55.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v23, v14
	v_fma_f32 v23, -v31, v24, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.l, v11.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v16, -v38, v13, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v24, v23, v21
	v_rcp_f32_e32 v23, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v13, v16, v14, v13
	v_fma_f32 v14, -v31, v24, v15
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v15, null, v37, v37, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v2, v13, v37, v2
	v_div_fmas_f32 v14, v14, v21, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v16, -v32, v23, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v1, v14, v37, v1
	v_fmac_f32_e32 v23, v16, v23
	v_div_scale_f32 v14, s7, v4, v37, v4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v16, v11, v30, 0x7fff
	v_mov_b16_e32 v30.l, v2.h
	v_mov_b16_e32 v30.h, v55.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v14, v23
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v24, -v32, v13, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v13, v24, v23 :: v_dual_and_b32 v20, 1, v20
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v20, v9, v20, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v9, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v14, -v32, v13, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v20.h, 0x7fff, v20.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_mov_b16_e32 v11.l, v1.h
	v_mov_b16_e32 v11.h, v55.l
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v15, v9, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v20.l, 0x7fff, v16.h, vcc_lo
	v_and_b32_e32 v16, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v2, v2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v9, v21, v9
	v_div_scale_f32 v21, s8, v3, v37, v3
	v_div_fmas_f32 v13, v14, v23, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v16, v2, v16, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v24, v21, v9 :: v_dual_and_b32 v11, 1, v11
	v_div_scale_f32 v14, null, v37, v37, v6
	v_div_fixup_f32 v4, v13, v37, v4
	v_fma_f32 v30, -v15, v24, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v11, v1, v11, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v13, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v24, v30, v9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.h, v55.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v2, -v15, v24, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v15.h, v55.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v2, v2, v9, v24
	v_div_scale_f32 v9, null, v37, v37, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v1.h, 0x7fff, v16.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v2, v37, v3
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v4, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v4, v9
	v_div_scale_f32 v16, null, v37, v37, v8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v1.l, 0x7fff, v11.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v11, -v14, v13, 1.0
	v_div_scale_f32 v24, null, v37, v37, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v23, v16
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v11, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v9, v4, 1.0
	v_div_scale_f32 v11, vcc_lo, v6, v37, v6
	v_div_scale_f32 v32, s7, v5, v37, v5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v30.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v11, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v16, v23, 1.0
	v_fmac_f32_e32 v4, v21, v4
	v_rcp_f32_e32 v21, v24
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v15.l, v3.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v14, v31, v11
	v_dual_fmac_f32 v23, v38, v23 :: v_dual_mul_f32 v40, v32, v4
	v_div_scale_f32 v38, s8, v8, v37, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v39, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v15, 1, v15
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v9, v40, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v24, v21, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v30, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v11, -v14, v31, v11
	v_fmac_f32_e32 v21, v41, v21
	v_div_scale_f32 v41, s9, v7, v37, v7
	v_mul_f32_e32 v42, v38, v23
	v_fmac_f32_e32 v40, v39, v4
	v_div_fmas_f32 v11, v11, v13, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v39, v41, v21
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v14, -v16, v42, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v3, v3
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v11, v37, v6
	v_fma_f32 v13, -v24, v39, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v30, v2, v30, 0x7fff
	v_mov_b16_e32 v11.h, v55.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v39, v13, v21
	v_fma_f32 v9, -v9, v40, v32
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v13.h, v55.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v14, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v14, v18, v29, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v4, v9, v4, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v3, v15, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v3, -v16, v42, v38
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v15, v12, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v4, v37, v5
	v_fma_f32 v5, -v24, v39, v41
	v_div_fmas_f32 v3, v3, v23, v42
	s_mov_b32 vcc_lo, s9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v5, v5, v21, v39
	v_div_fixup_f32 v3, v3, v37, v8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v8.l, v6.h
	v_mov_b16_e32 v8.h, v55.l
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v5, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v7.l, v4.h
	v_mov_b16_e32 v7.h, v55.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v30.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v11.l, v3.h
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v13.l, v5.h
	v_cmp_o_f32_e64 s6, v6, v6
	v_add3_u32 v2, v4, v7, 0x7fff
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v8, v6, v8, 0x7fff
	v_and_b32_e32 v7, 1, v13
	v_cmp_o_f32_e64 s7, v4, v4
	v_cmp_o_f32_e64 s8, v3, v3
	v_add3_u32 v6, v3, v11, 0x7fff
	v_cmp_o_f32_e64 s9, v5, v5
	v_add3_u32 v4, v5, v7, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s8
	v_cndmask_b32_e64 v5, v25, v27, s0
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s9
	v_cndmask_b32_e64 v7, v26, v28, s0
	v_cndmask_b32_e64 v8, v19, v17, s0
	v_cndmask_b32_e64 v11, v17, v19, s0
	v_cndmask_b32_e64 v17, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b32_e64 v13, v29, v18, s0
	v_cndmask_b32_e64 v12, v22, v12, s0
	v_cndmask_b32_e64 v16, v20, v10, s0
	v_cndmask_b32_e64 v10, v10, v20, s0
	v_cndmask_b32_e64 v18, v2, v9, s0
	v_cndmask_b32_e64 v2, v9, v2, s0
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v4, v27, v25, s0
	v_cndmask_b32_e64 v6, v28, v26, s0
	v_permlanex16_b32 v3, v5, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v14, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v1, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v10, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v2, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v3, v4, v53
	v_perm_b32 v2, v3, v4, v54
	v_perm_b32 v3, v5, v6, v53
	v_perm_b32 v4, v5, v6, v54
	v_perm_b32 v5, v7, v8, v53
	v_perm_b32 v6, v7, v8, v54
	v_perm_b32 v7, v9, v13, v53
	v_perm_b32 v8, v9, v13, v54
	v_perm_b32 v13, v14, v17, v53
	v_perm_b32 v14, v14, v17, v54
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v0, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v9, v11, v15, v53
	v_perm_b32 v10, v11, v15, v54
	v_perm_b32 v11, v12, v16, v53
	v_perm_b32 v12, v12, v16, v54
	v_perm_b32 v15, v19, v18, v53
	v_perm_b32 v16, v19, v18, v54
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v0, v35, 1
	v_add_lshl_u32 v19, v0, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v0, v36, 1
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s9, s27, 0xffff
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	s_mov_b32 s8, s26
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v17, s[8:11], 0 offen
	buffer_store_b128 v[5:8], v18, s[8:11], 0 offen
	buffer_store_b128 v[9:12], v19, s[8:11], 0 offen
	buffer_store_b128 v[13:16], v0, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp31:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 126
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 126
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10168
; TotalNumSgprs: 54
; NumVgprs: 126
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 54
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
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
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
