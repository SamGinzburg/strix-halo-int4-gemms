	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x60
	s_load_b256 s[4:11], s[0:1], 0x0
	v_dual_mov_b32 v48, 0x7632 :: v_dual_and_b32 v1, 1, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s12, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v1, 4, v1
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s14, s12, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s12, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_or_b32_e32 v3, s14, v2
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v67, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	s_load_b32 s20, s[0:1], 0x68
	.loc	1 773 86                        ; attention.py:773:86
	v_bfe_i32 v50, v0, 0, 1
	v_dual_mov_b32 v26, v24 :: v_dual_lshlrev_b32 v53, 2, v0
	.loc	1 773 26 is_stmt 0              ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s28, v3, v[1:2]
	.loc	1 776 61 is_stmt 1              ; attention.py:776:61
	v_cmp_gt_i32_e64 s2, s28, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s17, s5, 0xffff
	s_mov_b32 s16, s4
	v_dual_mov_b32 v99, 0xff800000 :: v_dual_lshlrev_b32 v58, 5, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s2
	v_dual_mov_b32 v32, 0 :: v_dual_cndmask_b32 v1, 0x80000000, v2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v44, 0x60, v0
	v_and_b32_e32 v45, 15, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v38, v32 :: v_dual_lshlrev_b32 v51, 1, v0
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[40:43], v1, s[16:19], 0 offen
	v_mov_b32_e32 v33, v32
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v44
	v_mov_b32_e32 v34, v32
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s17, s11, 0xffff
	s_mov_b32 s16, s10
	v_dual_mov_b32 v35, v32 :: v_dual_and_b32 v54, 0x70, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, v2, v45
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v60, v51, 30, v67
	v_dual_mov_b32 v39, v32 :: v_dual_and_b32 v50, 0x90, v50
	v_mov_b32_e32 v27, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s14, v66
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s12, v66
	v_mov_b32_e32 v36, v32
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x20
	s_load_b64 s[12:13], s[0:1], 0x38
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	v_lshrrev_b32_e32 v44, 2, v44
	s_add_i32 s0, s3, s0
	v_lshrrev_b32_e32 v54, 2, v54
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v60, 2, v60
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v55, 7, v0
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v46, v1, s[16:19], 0 offen
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s3, s1, 0x10007
	v_dual_mov_b32 v16, v24 :: v_dual_and_b32 v51, 24, v51
	s_add_i32 s1, s1, s3
	v_xor_b32_e32 v44, v53, v44
	v_xor_b32_e32 v50, v50, v54
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v54, 4, v60
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s1, s1, 0x80000
	v_dual_mov_b32 v47, 0x5410 :: v_dual_and_b32 v52, 16, v0
	s_sext_i32_i16 s1, s1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v68, 4, v0
	v_bfe_i32 v59, v0, 2, 1
	v_dual_mov_b32 v37, v32 :: v_dual_lshlrev_b32 v56, 2, v45
	v_dual_mov_b32 v25, v24 :: v_dual_and_b32 v58, 0x160, v58
	v_dual_mov_b32 v18, v24 :: v_dual_and_b32 v55, 0x700, v55
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v77, 0, v44
	v_lshl_or_b32 v45, v45, 5, v51
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_ashr_i32 s1, s1, 1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v49, 3, v0
	.loc	1 906 33                        ; attention.py:906:33
	s_lshl3_add_u32 s1, s0, s1
	v_dual_mov_b32 v29, v24 :: v_dual_add_nc_u32 v78, 0, v45
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v57, 28, v53
	v_dual_mov_b32 v20, v24 :: v_dual_add_nc_u32 v51, 0, v55
	v_and_or_b32 v53, 0x90, v59, v58
	v_xor_b32_e32 v55, 8, v45
	v_xor_b32_e32 v58, 16, v45
	v_xor_b32_e32 v59, 24, v45
	.loc	1 906 32 is_stmt 0              ; attention.py:906:32
	s_lshl_b32 s4, s1, 11
	.loc	1 997 21 is_stmt 1              ; attention.py:997:21
	s_lshl_b32 s31, s1, 7
	v_lshl_or_b32 v81, s1, 10, v68
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v52
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v79, v51, v50
	v_or_b32_e32 v86, s4, v49
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v83, 0, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v47, 0x1054, v47, s1
	v_cndmask_b32_e64 v48, 0x3276, v48, s1
	v_xor_b32_e32 v61, 16, v53
	v_dual_mov_b32 v19, v24 :: v_dual_add_nc_u32 v84, 0, v59
	v_lshl_or_b32 v47, v47, 8, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v48, v48, 8, v48
	v_mov_b32_e32 v23, v24
	v_mov_b32_e32 v9, v24
	v_mov_b32_e32 v21, v24
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v85, 0, v61
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v75, 2, v67
	v_or_b32_e32 v74, 4, v67
	v_or_b32_e32 v73, 6, v67
	v_or_b32_e32 v72, 8, v67
	v_or_b32_e32 v71, 10, v67
	v_or_b32_e32 v70, 12, v67
	v_or_b32_e32 v69, 14, v67
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s3, s20, 0x3fb8aa3b
	v_dual_mov_b32 v31, v24 :: v_dual_add_nc_u32 v80, 0, v53
	v_dual_mov_b32 v17, v24 :: v_dual_add_nc_u32 v82, 0, v55
	v_mov_b32_e32 v13, v24
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v1, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s29, v56
	v_or_b32_e32 v87, s4, v67
	v_or_b32_e32 v88, s4, v75
	v_or_b32_e32 v89, s4, v74
	v_or_b32_e32 v90, s4, v73
	v_or_b32_e32 v91, s4, v72
	v_or_b32_e32 v92, s4, v71
	v_or_b32_e32 v93, s4, v70
	v_or_b32_e32 v94, s4, v69
	v_mov_b32_e32 v76, v24
	s_and_b32 s7, s7, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s27, s27, 0xffff
	s_mov_b32 s15, 0
	s_mov_b32 s30, 0x76543210
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s20, s24
	s_mov_b32 s24, s26
	s_mov_b32 s21, s25
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	s_mov_b32 s16, s6
	s_mov_b32 s17, s7
	s_mov_b32 s25, s27
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	.loc	1 910 31                        ; attention.py:910:31
	v_cmp_gt_i32_e32 vcc_lo, s28, v57
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v44, v60, v40
	ds_bpermute_b32 v40, v54, v40
	ds_bpermute_b32 v45, v60, v41
	ds_bpermute_b32 v41, v54, v41
	ds_bpermute_b32 v49, v60, v42
	ds_bpermute_b32 v42, v54, v42
	ds_bpermute_b32 v50, v60, v43
	ds_bpermute_b32 v43, v54, v43
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v58, v40, v44, s1
	v_cndmask_b32_e64 v60, v44, v40, s1
	v_and_b32_e32 v40, 0x540054, v47
	v_and_b32_e32 v44, 0x760076, v48
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v59, v41, v45, s1
	v_cndmask_b32_e64 v61, v45, v41, s1
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v62, v42, v49, s1
	v_lshl_or_b32 v40, v40, 4, v40
	v_lshl_or_b32 v41, v44, 4, v44
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v11, v24 :: v_dual_lshlrev_b32 v46, 16, v46
	v_mov_b32_e32 v14, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v0, v24 :: v_dual_and_b32 v97, 0x7060706, v41
	.loc	1 928 41                        ; attention.py:928:41
	v_mul_f32_e32 v95, s3, v46
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v64, v49, v42, s1
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v63, v43, v50, s1
	v_cndmask_b32_e64 v65, v50, v43, s1
	v_and_b32_e32 v96, 0x5040504, v40
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v40, s15, v86
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s1, s15, 1
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v98, s15, v87, 1
	v_add_lshl_u32 v100, s15, v88, 1
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s3, s15, 4
	.loc	1 907 32                        ; attention.py:907:32
	v_mad_u64_u32 v[40:41], null, v40, s28, v[57:58]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	buffer_load_b32 v40, v40, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v77, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[48:49], v78
	ds_load_b64 v[50:51], v82
	ds_load_b64 v[52:53], v83
	ds_load_b64 v[54:55], v84
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[48:49], v[58:59], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[50:51], v[62:63], v[40:47] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v50, s15, v89, 1
	v_add_lshl_u32 v51, s15, v90, 1
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[52:53], v[60:61], v[40:47] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v52, s15, v91, 1
	v_add_lshl_u32 v53, s15, v92, 1
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[54:55], v[64:65], v[40:47] neg_lo:[1,1,0]
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v54, s15, v93, 1
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v48, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v40, s1, v81
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v49, v41
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s1, s3, s31
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s1, s1, s29
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[40:41], null, v40, s29, v[56:57]
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v41, s15, v94, 1
	s_clause 0x7
	buffer_load_u16 v55, v98, s[20:23], 0 offen
	buffer_load_u16 v98, v100, s[20:23], 0 offen
	buffer_load_u16 v50, v50, s[20:23], 0 offen
	buffer_load_u16 v51, v51, s[20:23], 0 offen
	buffer_load_u16 v52, v52, s[20:23], 0 offen
	buffer_load_u16 v53, v53, s[20:23], 0 offen
	buffer_load_u16 v54, v54, s[20:23], 0 offen
	buffer_load_u16 v41, v41, s[20:23], 0 offen
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v48, v95, v48
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v40, 0x80000000, v40, s0
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v100, v40, s[8:11], 0 offen
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v40, v95, v49
	v_mul_f32_e32 v47, v95, v47
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v55, 16, v55
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v49, 16, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v55, v48, v55
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v48, s1, v56, 1
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v98, v40, v49
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v40, v95, v42 :: v_dual_lshlrev_b32 v41, 16, v41
	v_mul_f32_e32 v42, v95, v43
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v48, 0x80000000, v48, s0
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v43, v95, v44
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[48:49], v48, s[24:27], 0 offen
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(1)
	v_bfe_i32 v101, v100, 0, 8
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v102, 0xffff0000, v48
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v44, v95, v45
	v_mul_f32_e32 v45, v95, v46
	.loc	1 923 37                        ; attention.py:923:37
	v_lshlrev_b32_e32 v46, 16, v50
	v_lshlrev_b32_e32 v50, 16, v51
	v_lshlrev_b32_e32 v51, 16, v52
	v_lshlrev_b32_e32 v52, 16, v53
	v_lshlrev_b32_e32 v53, 16, v54
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v54, v40, v46
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v46.h, v48.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v51, v43, v51 :: v_dual_mul_f32 v48, v44, v52
	v_mul_f32_e32 v52, v45, v53
	v_dual_mul_f32 v53, v47, v41 :: v_dual_mul_f32 v50, v42, v50
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v40, 0xff800000, v55, s2
	v_cndmask_b32_e64 v41, 0xff800000, v98, s2
	v_cndmask_b32_e64 v42, 0xff800000, v54, s2
	v_cndmask_b32_e64 v44, 0xff800000, v51, s2
	v_cndmask_b32_e64 v43, 0xff800000, v50, s2
	v_cndmask_b32_e64 v45, 0xff800000, v48, s2
	v_cndmask_b32_e64 v47, 0xff800000, v52, s2
	v_cndmask_b32_e64 v48, 0xff800000, v53, s2
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v50, v40, v41, v42
.Ltmp2:
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v46.l, v100.l, 15
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v51, v43, v44, v45
.Ltmp4:
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v55, 8, v100
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v52, v47, v48
.Ltmp6:
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v98, 24, v100
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v46.l
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v51, v50, v51, v52
.Ltmp8:
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v50.h, v49.l
	v_and_b32_e32 v52, 0xffff0000, v49
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v49.l, 4, v100.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v50.l, v101.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v49.h, 0, -16, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v49.l, v49.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s3, 0, v50.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v53.l, v46.l, v49.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v46.l, v49.l, -16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v53, v53, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v54.l, v49.l, v46.l, s3
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v49, v55, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v46.l, v49.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_i16_e64 s1, 0, v46.l
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v46.l, v100.h
	v_bfe_i32 v49, v46, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v46.l, v49.l
	v_cmp_gt_i16_e64 s3, 0, v46.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v46.l, v100.h, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s4, 7, v46.l
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b16 v49.l, 0, -16, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b16 v101.l, v46.l, v49.l
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	v_bfe_i32 v49, v98, 0, 8
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v101, v101, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v46.l, v49.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v101, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v46.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v46.l, v55.l, 15
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v46.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b16 v49.l, 0, -16, s5
	v_or_b16 v50.l, v46.l, v49.l
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_lshrrev_b16 v46.l, 4, v55.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v46.l, v46.l, 15
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v49.l, v46.l, -16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v55.l, v46.l, v49.l, s1
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_lshrrev_b32_e32 v49, 20, v100
	v_and_b16 v46.l, v49.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v49.l, v46.l, -16
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v100.l, v46.l, v49.l, s3
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v46.l, v98.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v100, v100, 0, 16
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v46.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v49.l, 0, -16, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v103.l, v46.l, v49.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v46.l, 4, v98.l
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v98, v51, s30, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v49.l, v46.l, -16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v98, v99, v51, v98
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v51, v55, 0, 16
	v_bfe_i32 v55, v50, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v49.l, v46.l, v49.l, s4
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v46.l, 0
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v41, v41, v98
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v43, v43, v98
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v49, v49, 0, 16
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v50.l, v46.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v53, v46, v53
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v45, v45, v98
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v49, v49
	v_mul_f32_e32 v101, v50, v101
	v_mul_f32_e32 v50, v50, v100
	v_bfe_i32 v100, v103, 0, 16
	v_mul_f32_e32 v55, v102, v55
	v_bfe_i32 v54, v54, 0, 16
	v_mul_f32_e32 v49, v52, v49
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_cmp_o_f32_e64 s1, v53, v53
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v100, v100
	v_mul_f32_e32 v51, v102, v51
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 971 49 is_stmt 1              ; attention.py:971:49
	v_exp_f32_e32 v41, v41
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s7, v49, v49
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v52, v52, v100
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v100.h, v46.l
	v_mov_b16_e32 v100.l, v53.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v54, v46, v54
	.loc	1 971 49 is_stmt 1              ; attention.py:971:49
	v_exp_f32_e32 v43, v43
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s4, v101, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v47, v47, v98 :: v_dual_and_b32 v100, 1, v100
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s3, v54, v54
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v108, 0, v41, s2
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v47, v47
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_add3_u32 v53, v53, v100, 0x7fff
	v_mov_b16_e32 v100.h, v46.l
	v_mov_b16_e32 v100.l, v54.h
	v_mov_b16_e32 v53.l, v55.h
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v110, 0, v43, s2
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v43.h, v46.l
	v_mov_b16_e32 v46.h, v46.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v100, 1, v100
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v112, 0, v45, s2
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v45.h, v46.l
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v115, 0, v47, s2
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v42, v42, v98
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_add3_u32 v54, v54, v100, 0x7fff
	v_cndmask_b16 v54.l, 0x7fff, v53.h, s1
	v_mov_b16_e32 v53.h, v46.l
	v_cmp_o_f32_e64 s1, v55, v55
	v_mov_b16_e32 v100.h, v46.l
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s3
	v_cmp_o_f32_e64 s3, v51, v51
	v_and_b32_e32 v53, 1, v53
	v_mov_b16_e32 v100.l, v101.h
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v42, v42
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v44, v44, v98
	v_sub_f32_e32 v48, v48, v98
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_add3_u32 v53, v55, v53, 0x7fff
	v_mov_b16_e32 v55.h, v46.l
	v_mov_b16_e32 v55.l, v51.h
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v53.l, v108.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v100, 1, v100
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v48, v48
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v55, 1, v55
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v111, 0, v42, s2
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v100, v101, v100, 0x7fff
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v42.h, v46.l
	v_mov_b16_e32 v42.l, v110.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v51, v51, v55, 0x7fff
	v_mov_b16_e32 v55.h, v46.l
	v_mov_b16_e32 v55.l, v50.h
	v_cndmask_b16 v51.l, 0x7fff, v53.h, s1
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v53.h, v46.l
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v40, v40, v98
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v43.l, v111.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v55, 1, v55
	v_cmp_o_f32_e64 s5, v50, v50
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v41, 1, v53
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v40, v40
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v43, 1, v43
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v50, v50, v55, 0x7fff
	v_mov_b16_e32 v55.h, v46.l
	v_mov_b16_e32 v55.l, v52.h
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s3
	v_cndmask_b16 v50.l, 0x7fff, v100.h, s4
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s5
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s1, v108, v108
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v55, 1, v55
	v_cmp_o_f32_e64 s6, v52, v52
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v109, 0, v40, s2
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v42, 1, v42
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v113, 0, v44, s2
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v52, v52, v55, 0x7fff
	v_mov_b16_e32 v55.h, v46.l
	v_mov_b16_e32 v55.l, v49.h
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s3, v109, v109
	v_add3_u32 v42, v110, v42, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v40.l, 0x7fff, v52.h, s6
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v43, v111, v43, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v55, 1, v55
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v44.h, v46.l
	v_mov_b16_e32 v44.l, v112.h
	v_mov_b16_e32 v45.l, v113.h
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v114, 0, v48, s2
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v49, v49, v55, 0x7fff
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v55.h, v46.l
	v_mov_b16_e32 v55.l, v109.h
	v_and_b32_e32 v44, 1, v44
	v_and_b32_e32 v45, 1, v45
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v40.h, 0x7fff, v49.h, s7
	ds_store_2addr_b32 v79, v54, v51 offset1:8
	ds_store_2addr_b32 v79, v50, v40 offset0:16 offset1:24
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v49, 1, v55
	v_add3_u32 v40, v108, v41, 0x7fff
	v_add3_u32 v44, v112, v44, 0x7fff
	v_add3_u32 v45, v113, v45, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v41, v109, v49, 0x7fff
	v_cndmask_b16 v49.h, 0x7fff, v40.h, s1
	v_cmp_o_f32_e64 s1, v110, v110
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v49.l, 0x7fff, v41.h, s3
	v_cmp_o_f32_e64 s3, v111, v111
	v_permlanex16_b32 v41, v49, s30, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v40, v41, v49, v96
	v_perm_b32 v41, v41, v49, v97
	v_cndmask_b16 v49.h, 0x7fff, v42.h, s1
	v_cndmask_b16 v49.l, 0x7fff, v43.h, s3
	v_cmp_o_f32_e64 s1, v112, v112
	v_cmp_o_f32_e64 s3, v113, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v43, v49, s30, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v42, v43, v49, v96
	v_perm_b32 v43, v43, v49, v97
	v_cndmask_b16 v49.h, 0x7fff, v44.h, s1
	v_cndmask_b16 v49.l, 0x7fff, v45.h, s3
	v_cmp_o_f32_e64 s1, v114, v114
	v_cmp_o_f32_e64 s3, v115, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v45, v49, s30, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v44, v45, v49, v96
	v_perm_b32 v45, v45, v49, v97
	v_mov_b16_e32 v49.h, v46.l
	v_mov_b16_e32 v46.l, v114.h
	v_mov_b16_e32 v49.l, v115.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v46, 1, v46
	v_and_b32_e32 v47, 1, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v46, v114, v46, 0x7fff
	v_add3_u32 v47, v115, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.h, 0x7fff, v46.h, s1
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s3
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v47, v48, s30, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v46, v47, v48, v96
	v_perm_b32 v47, v47, v48, v97
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v48, v99, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v48, v48
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v99, 0, v48, s1
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	ds_load_b128 v[52:55], v85
	ds_load_b128 v[48:51], v80
	ds_load_b128 v[100:103], v80 offset:512
	ds_load_b128 v[104:107], v85 offset:512
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s1, s15, 16
	s_cmpk_lt_u32 s15, 0x7f0
	s_mov_b32 s15, s1
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v24, v24, v99
	v_mul_f32_e32 v25, v25, v99
	v_mul_f32_e32 v26, v26, v99
	v_mul_f32_e32 v27, v27, v99
	v_mul_f32_e32 v28, v28, v99
	v_mul_f32_e32 v29, v29, v99
	v_mul_f32_e32 v30, v30, v99
	v_mul_f32_e32 v31, v31, v99
	v_mul_f32_e32 v16, v16, v99
	v_mul_f32_e32 v17, v17, v99
	v_mul_f32_e32 v18, v18, v99
	v_mul_f32_e32 v19, v19, v99
	v_mul_f32_e32 v20, v20, v99
	v_mul_f32_e32 v21, v21, v99
	v_mul_f32_e32 v22, v22, v99
	v_mul_f32_e32 v23, v23, v99
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[48:55], v[40:47], v[24:31]
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v99
	v_mul_f32_e32 v9, v9, v99
	v_mul_f32_e32 v10, v10, v99
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[100:107], v[40:47], v[16:23]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[104:107], v85 offset:1024
	ds_load_b128 v[100:103], v80 offset:1024
	ds_load_b128 v[48:51], v80 offset:1536
	ds_load_b128 v[52:55], v85 offset:1536
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v11, v11, v99
	v_mul_f32_e32 v12, v12, v99
	v_mul_f32_e32 v13, v13, v99
	v_mul_f32_e32 v14, v14, v99
	v_mul_f32_e32 v15, v15, v99
	v_mul_f32_e32 v0, v0, v99
	v_mul_f32_e32 v1, v1, v99
	v_mul_f32_e32 v2, v2, v99
	v_mul_f32_e32 v3, v3, v99
	v_mul_f32_e32 v4, v4, v99
	v_mul_f32_e32 v5, v5, v99
	v_mul_f32_e32 v6, v6, v99
	v_mul_f32_e32 v7, v7, v99
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[100:107], v[40:47], v[8:15]
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v100, v109, v108 :: v_dual_add_f32 v101, v111, v110
	v_dual_add_f32 v102, v113, v112 :: v_dual_add_f32 v103, v115, v114
.Ltmp12:
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[48:55], v[40:47], v[0:7]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v100, v100, v101 :: v_dual_add_f32 v101, v102, v103
	v_add_f32_e32 v100, v100, v101
	v_mov_b32_e32 v101, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v76, v100, s30, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v76, v100, v76
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp16:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v76, v101, v99 :: v_dual_mov_b32 v99, v98
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v32, null, v76, v76, v24
	v_div_scale_f32 v33, null, v76, v76, v25
	v_div_scale_f32 v34, null, v76, v76, v26
	v_rcp_f32_e32 v35, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v38, vcc_lo, v24, v76, v24
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, s0, v25, v76, v25
	v_div_scale_f32 v42, null, v76, v76, v27
	v_div_scale_f32 v48, s3, v27, v76, v27
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v32, v35, 1.0
	v_fma_f32 v41, -v33, v36, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s13, s13, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v34, v37, 1.0
	s_mov_b32 s15, 0x31027000
	v_dual_fmac_f32 v35, v40, v35 :: v_dual_fmac_f32 v36, v41, v36
	v_div_scale_f32 v40, s1, v26, v76, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v43, v37
	v_dual_mul_f32 v43, v38, v35 :: v_dual_mul_f32 v44, v39, v36
	v_rcp_f32_e32 v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v32, v43, v38
	v_fma_f32 v47, -v33, v44, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v43, v46, v35 :: v_dual_fmac_f32 v44, v47, v36
	v_div_scale_f32 v46, null, v76, v76, v28
	v_fma_f32 v49, -v42, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v32, v43, v38
	v_fma_f32 v33, -v33, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v38, v46
	v_div_scale_f32 v39, null, v76, v76, v29
	v_div_fmas_f32 v32, v32, v35, v43
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v76
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v44
	v_rcp_f32_e32 v43, v39
	v_div_scale_f32 v44, null, v76, v76, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v46, v38, 1.0
	v_div_fixup_f32 v25, v33, v76, v25
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v47, v44
	v_div_fixup_f32 v24, v32, v76, v24
	v_fmac_f32_e32 v38, v36, v38
	v_mul_f32_e32 v45, v40, v37
	v_div_scale_f32 v36, null, v76, v76, v30
	v_fmac_f32_e32 v41, v49, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v34, v45, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v50, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v34, v45, v40
	v_fma_f32 v34, -v39, v43, 1.0
	v_div_fmas_f32 v33, v33, v37, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v43, v34, v43
	v_rcp_f32_e32 v34, v36
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v33, v76, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v36, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v35, v48, v41 :: v_dual_fmac_f32 v34, v45, v34
	v_fma_f32 v32, -v42, v35, v48
	v_fma_f32 v45, -v44, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v45, s5, v31, v76, v31
	v_fmac_f32_e32 v35, v32, v41
	v_div_scale_f32 v32, s4, v28, v76, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v42, v35, v48
	v_mul_f32_e32 v40, v32, v38
	v_div_scale_f32 v42, s1, v29, v76, v29
	v_div_scale_f32 v48, null, v76, v76, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v37, v41, v35
	v_fma_f32 v37, -v46, v40, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v42, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v27, v35, v76, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v37, v38
	v_div_scale_f32 v37, null, v76, v76, v16
	v_fma_f32 v33, -v39, v41, v42
	v_div_scale_f32 v35, s3, v30, v76, v30
	v_fma_f32 v32, -v46, v40, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v37
	v_fmac_f32_e32 v41, v33, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v32, v38, v40
	v_mul_f32_e32 v40, v45, v47
	v_fma_f32 v38, -v39, v41, v42
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v28, v32, v76, v28
	v_fma_f32 v42, -v37, v46, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v42, v46
	v_div_fmas_f32 v38, v38, v43, v41
	v_fma_f32 v41, -v44, v40, v45
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s1, v16, v76, v16
	v_div_scale_f32 v43, null, v76, v76, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v41, v47
	v_div_scale_f32 v41, s3, v17, v76, v17
	v_mul_f32_e32 v33, v35, v34
	v_div_fixup_f32 v29, v38, v76, v29
	v_div_scale_f32 v38, null, v76, v76, v18
	v_fma_f32 v39, -v36, v33, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v33, v39, v34
	v_rcp_f32_e32 v39, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v36, v33, v35
	v_div_fmas_f32 v32, v32, v34, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v48, v39, 1.0
	v_fma_f32 v33, -v44, v40, v45
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v76, v76, v21
	v_fmac_f32_e32 v39, v36, v39
	v_mul_f32_e32 v35, v42, v46
	v_rcp_f32_e32 v36, v38
	v_div_fixup_f32 v30, v32, v76, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v37, v35, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v34, v46
	v_rcp_f32_e32 v34, v43
	v_fma_f32 v44, -v38, v36, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v37, v35, v42
	v_div_scale_f32 v37, s4, v18, v76, v18
	v_fmac_f32_e32 v36, v44, v36
	v_div_scale_f32 v44, null, v76, v76, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v43, v34, 1.0
	v_fmac_f32_e32 v34, v42, v34
	v_div_fmas_f32 v33, v33, v47, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v42, s1, v19, v76, v19
	v_div_fmas_f32 v32, v32, v46, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v31, v33, v76, v31
	v_rcp_f32_e32 v35, v44
	v_mul_f32_e32 v46, v42, v34
	v_mul_f32_e32 v40, v41, v39
	v_div_fixup_f32 v16, v32, v76, v16
	v_rcp_f32_e32 v47, v45
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v48, v40, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v33, v39
	v_mul_f32_e32 v33, v37, v36
	v_fma_f32 v32, -v48, v40, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v38, v33, v37
	v_fma_f32 v48, -v44, v35, 1.0
	v_div_fmas_f32 v32, v32, v39, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v41, v36
	v_fma_f32 v39, -v43, v46, v42
	v_fmac_f32_e32 v35, v48, v35
	v_div_scale_f32 v40, s3, v20, v76, v20
	v_fma_f32 v41, -v45, v47, 1.0
	v_div_fixup_f32 v17, v32, v76, v17
	v_fma_f32 v32, -v38, v33, v37
	v_fmac_f32_e32 v46, v39, v34
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v37, v40, v35
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v38, s5, v21, v76, v21
	v_div_fmas_f32 v32, v32, v36, v33
	v_fma_f32 v33, -v43, v46, v42
	v_div_scale_f32 v43, null, v76, v76, v23
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v44, v37, v40
	v_mul_f32_e32 v42, v38, v47
	v_div_fmas_f32 v33, v33, v34, v46
	v_rcp_f32_e32 v34, v43
	v_div_fixup_f32 v18, v32, v76, v18
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v36, -v45, v42, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, null, v76, v76, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v44, v37, v40
	v_fmac_f32_e32 v42, v36, v47
	v_div_fixup_f32 v19, v33, v76, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v34, 1.0
	v_rcp_f32_e32 v41, v39
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v45, v42, v38
	v_div_scale_f32 v38, s3, v23, v76, v23
	v_fmac_f32_e32 v34, v36, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v32, v76, v20
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v76, v76, v9
	v_mul_f32_e32 v44, v38, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v39, v41, 1.0
	v_div_scale_f32 v33, s1, v22, v76, v22
	v_div_scale_f32 v36, null, v76, v76, v8
	v_fma_f32 v32, -v43, v44, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v32, v34
	v_div_fmas_f32 v35, v35, v47, v42
	v_div_scale_f32 v32, s4, v8, v76, v8
	v_fmac_f32_e32 v41, v46, v41
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v21, v35, v76, v21
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v47, null, v76, v76, v11
	v_mul_f32_e32 v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v49, v47
	v_fma_f32 v42, -v39, v37, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v45, v35, 1.0
	v_fmac_f32_e32 v35, v46, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v42, v41
	v_fma_f32 v42, -v36, v40, 1.0
	v_fma_f32 v33, -v39, v37, v33
	v_div_scale_f32 v39, null, v76, v76, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v42, v40
	v_div_fmas_f32 v33, v33, v41, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v37, -v43, v44, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, s1, v9, v76, v9
	v_div_fixup_f32 v22, v33, v76, v22
	v_div_fmas_f32 v34, v37, v34, v44
	v_mul_f32_e32 v38, v32, v40
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v39, v42, 1.0
	v_div_fixup_f32 v23, v34, v76, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v46, -v36, v38, v32
	v_fma_f32 v34, -v47, v49, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, s5, v10, v76, v10
	v_fmac_f32_e32 v38, v46, v40
	v_fmac_f32_e32 v49, v34, v49
	v_div_scale_f32 v34, s3, v11, v76, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v32, -v36, v38, v32
	v_div_scale_f32 v36, null, v76, v76, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v39, v44, v43
	v_div_fmas_f32 v32, v32, v40, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v33, v42
	v_mul_f32_e32 v48, v41, v35
	v_rcp_f32_e32 v33, v36
	v_div_fixup_f32 v8, v32, v76, v8
	v_fma_f32 v37, -v45, v48, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v48, v37, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v36, v33, 1.0
	v_fma_f32 v37, -v45, v48, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, s1, v12, v76, v12
	v_div_fmas_f32 v35, v37, v35, v48
	v_fma_f32 v37, -v39, v44, v43
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v32, v40, v33
	v_div_scale_f32 v39, null, v76, v76, v13
	v_div_fmas_f32 v37, v37, v42, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v9, v35, v76, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v10, v37, v76, v10
	v_div_scale_f32 v37, null, v76, v76, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v43, v37
	v_mul_f32_e32 v38, v34, v49
	v_fma_f32 v35, -v39, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v47, v38, v34
	v_fmac_f32_e32 v38, v42, v49
	v_fma_f32 v42, -v36, v32, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v47, v38, v34
	v_fmac_f32_e32 v32, v42, v33
	v_div_scale_f32 v42, null, v76, v76, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v49, v38
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v34, v76, v11
	v_fma_f32 v34, -v36, v32, v40
	v_fma_f32 v40, -v37, v43, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v34, v33, v32
	v_fmac_f32_e32 v43, v40, v43
	v_div_scale_f32 v40, null, v76, v76, v1
	v_div_scale_f32 v33, null, v76, v76, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v32, v76, v12
	v_fma_f32 v32, -v42, v44, 1.0
	v_fmac_f32_e32 v41, v35, v41
	v_div_scale_f32 v35, s4, v13, v76, v13
	v_rcp_f32_e32 v46, v40
	v_fmac_f32_e32 v44, v32, v44
	v_div_scale_f32 v34, s1, v14, v76, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v38, v35, v41
	v_div_scale_f32 v32, s3, v15, v76, v15
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v47, s4, v0, v76, v0
	v_fma_f32 v36, -v39, v38, v35
	v_fma_f32 v48, -v40, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v48, v46
	v_fmac_f32_e32 v38, v36, v41
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v48, s5, v1, v76, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v39, v38, v35
	v_mul_f32_e32 v39, v34, v43
	v_div_fmas_f32 v35, v35, v41, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v33, v36, 1.0
	v_fma_f32 v38, -v37, v39, v34
	v_mul_f32_e32 v41, v32, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v13, v35, v76, v13
	v_fmac_f32_e32 v36, v45, v36
	v_div_scale_f32 v45, null, v76, v76, v2
	v_fmac_f32_e32 v39, v38, v43
	v_fma_f32 v38, -v42, v41, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v50, v47, v36
	v_rcp_f32_e32 v49, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v37, v39, v34
	v_fmac_f32_e32 v41, v38, v44
	v_fma_f32 v35, -v33, v50, v47
	v_mul_f32_e32 v37, v48, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v43, v39
	v_fma_f32 v32, -v42, v41, v32
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v38, -v45, v49, 1.0
	v_fmac_f32_e32 v50, v35, v36
	v_fma_f32 v35, -v40, v37, v48
	v_div_fmas_f32 v32, v32, v44, v41
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v49, v38, v49
	v_fma_f32 v33, -v33, v50, v47
	v_fmac_f32_e32 v37, v35, v46
	v_div_scale_f32 v38, s1, v2, v76, v2
	v_div_scale_f32 v39, null, v76, v76, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v36, v50
	v_fma_f32 v36, -v40, v37, v48
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v35, v38, v49
	v_div_fixup_f32 v15, v32, v76, v15
	v_div_fixup_f32 v0, v33, v76, v0
	v_div_fmas_f32 v36, v36, v46, v37
	v_div_scale_f32 v33, null, v76, v76, v4
	v_fma_f32 v40, -v45, v35, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v36, v76, v1
	v_div_scale_f32 v36, null, v76, v76, v6
	v_fmac_f32_e32 v35, v40, v49
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v14, v34, v76, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v43, null, v76, v76, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v39, v41, 1.0
	v_fma_f32 v47, -v36, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v47, v40
	v_fma_f32 v32, -v45, v35, v38
	v_rcp_f32_e32 v45, v43
	v_div_scale_f32 v47, s4, v6, v76, v6
	v_div_fmas_f32 v32, v32, v49, v35
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, vcc_lo, v3, v76, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v51, v47, v40
	v_div_fixup_f32 v2, v32, v76, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v43, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v33, v35, 1.0
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v49, s5, v7, v76, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v32, v35
	v_div_scale_f32 v32, s1, v4, v76, v4
	v_fmac_f32_e32 v41, v34, v41
	v_div_scale_f32 v34, null, v76, v76, v5
	v_mul_f32_e32 v48, v32, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v37, v41
	v_rcp_f32_e32 v38, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v39, v42, v37
	v_fmac_f32_e32 v42, v46, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v34, v38, 1.0
	v_fma_f32 v46, -v33, v48, v32
	v_fma_f32 v37, -v39, v42, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v44, s3, v5, v76, v5
	v_fmac_f32_e32 v48, v46, v35
	v_fma_f32 v46, -v36, v51, v47
	v_mul_f32_e32 v52, v49, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v50, v44, v38
	v_div_fmas_f32 v37, v37, v41, v42
	v_fma_f32 v32, -v33, v48, v32
	v_fmac_f32_e32 v51, v46, v40
	v_fma_f32 v33, -v43, v52, v49
	v_fma_f32 v39, -v34, v50, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v3, v37, v76, v3
	v_div_fmas_f32 v32, v32, v35, v48
	v_fmac_f32_e32 v52, v33, v45
	v_fmac_f32_e32 v50, v39, v38
	v_fma_f32 v33, -v36, v51, v47
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v32, v76, v4
	v_fma_f32 v35, -v43, v52, v49
	v_fma_f32 v34, -v34, v50, v44
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s29, v66
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v67
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v38, v50
	s_mov_b32 vcc_lo, s4
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 62, v68
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v40, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v34, v76, v5
	v_div_fmas_f32 v35, v35, v45, v52
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s29, v67
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v33, v76, v6
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 16, v67
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v7, v35, v76, v7
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_add_nc_u32_e32 v35, v32, v67
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 32, v67
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	s_mul_i32 s0, s29, s14
	s_mov_b32 s14, 0x7ffffffe
	v_add_nc_u32_e32 v32, s0, v32
	v_add_lshl_u32 v35, v35, s0, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s29, v33
	v_cmp_gt_i32_e64 s1, s29, v34
	v_cmp_gt_i32_e64 s3, s29, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v38, v32, v67, 2
	v_add_lshl_u32 v39, v32, v75, 2
	v_add_lshl_u32 v40, v32, v74, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v38, s[12:15], 0 offen
	buffer_store_b32 v25, v39, s[12:15], 0 offen
	buffer_store_b32 v26, v40, s[12:15], 0 offen
	v_add_lshl_u32 v24, v32, v73, 2
	v_add_lshl_u32 v25, v32, v72, 2
	v_add_lshl_u32 v26, v32, v71, 2
	v_add_lshl_u32 v38, v32, v70, 2
	v_add_lshl_u32 v39, v32, v69, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_clause 0x4
	buffer_store_b32 v27, v24, s[12:15], 0 offen
	buffer_store_b32 v28, v25, s[12:15], 0 offen
	buffer_store_b32 v29, v26, s[12:15], 0 offen
	buffer_store_b32 v30, v38, s[12:15], 0 offen
	buffer_store_b32 v31, v39, s[12:15], 0 offen
	v_add_lshl_u32 v24, v32, v33, 2
	v_add_nc_u32_e32 v25, 0x48, v35
	v_add_nc_u32_e32 v26, 0x50, v35
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v27, 0x58, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_nc_u32_e32 v28, 0x60, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[12:15], 0 offen
	buffer_store_b32 v17, v25, s[12:15], 0 offen
	buffer_store_b32 v18, v26, s[12:15], 0 offen
	v_add_nc_u32_e32 v17, 0x68, v35
	v_add_nc_u32_e32 v18, 0x70, v35
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	buffer_store_b32 v19, v27, s[12:15], 0 offen
	v_add_nc_u32_e32 v19, 0x78, v35
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	buffer_store_b32 v20, v16, s[12:15], 0 offen
	v_add_lshl_u32 v16, v32, v34, 2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v21, v17, s[12:15], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v35
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v22, v18, s[12:15], 0 offen
	buffer_store_b32 v23, v19, s[12:15], 0 offen
	buffer_store_b32 v8, v16, s[12:15], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v35
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v35
	v_add_nc_u32_e32 v18, 0xa0, v35
	v_add_nc_u32_e32 v19, 0xa8, v35
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[12:15], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	buffer_store_b32 v10, v8, s[12:15], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v35
	s_clause 0x2
	buffer_store_b32 v11, v9, s[12:15], 0 offen
	buffer_store_b32 v12, v16, s[12:15], 0 offen
	buffer_store_b32 v13, v17, s[12:15], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v35
	v_add_lshl_u32 v10, v32, v36, 2
	v_add_nc_u32_e32 v11, 0xc8, v35
	v_add_nc_u32_e32 v12, 0xd0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[12:15], 0 offen
	buffer_store_b32 v15, v9, s[12:15], 0 offen
	buffer_store_b32 v0, v10, s[12:15], 0 offen
	buffer_store_b32 v1, v11, s[12:15], 0 offen
	buffer_store_b32 v2, v12, s[12:15], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v35
	v_add_nc_u32_e32 v1, 0xe0, v35
	v_add_nc_u32_e32 v2, 0xe8, v35
	v_add_nc_u32_e32 v8, 0xf0, v35
	v_add_lshl_u32 v9, v32, v37, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v3, v0, s[12:15], 0 offen
	buffer_store_b32 v4, v1, s[12:15], 0 offen
	buffer_store_b32 v5, v2, s[12:15], 0 offen
	buffer_store_b32 v6, v8, s[12:15], 0 offen
	buffer_store_b32 v7, v9, s[12:15], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp17:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 116
		.amdhsa_next_free_sgpr 32
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
		.amdhsa_inst_pref_size 61
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 116
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7716
; TotalNumSgprs: 34
; NumVgprs: 116
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 34
; NumVGPRsForWavesPerEU: 116
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     116
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
