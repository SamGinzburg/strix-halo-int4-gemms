	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s20, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_bfe_u32 v65, v0, 4, 4
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v41, 0x7f, v0
	v_lshrrev_b32_e32 v67, 5, v0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_bfe_i32 v42, v0, 7, 1
	v_bfe_i32 v71, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v5, v8 :: v_dual_lshlrev_b32 v72, 4, v0
	v_or_b32_e32 v73, 0x3f0, v0
	v_or_b32_e32 v74, 0x7f0, v0
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s14, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s12, s4, 2
	v_mov_b32_e32 v9, v8
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s12
	v_mov_b32_e32 v24, v8
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_readfirstlane_b32 s5, v1
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	s_cvt_u32_f32 s5, s5
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v35, v8
	s_mul_i32 s8, s8, s5
	v_mov_b32_e32 v34, v8
	s_mul_hi_u32 s8, s5, s8
	v_mov_b32_e32 v33, v8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	v_mov_b32_e32 v56, v8
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v55, v8
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	v_mov_b32_e32 v54, v8
	s_cselect_b32 s4, s9, s5
	v_mov_b32_e32 v53, v8
	s_xor_b32 s4, s4, s8
	v_mov_b32_e32 v52, v8
	s_sub_i32 s13, s4, s8
	v_mov_b32_e32 v51, v8
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s18, s13, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s13, s13, s12
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s18
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s13
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s19, s4, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s13, s2
	s_abs_i32 s22, s19
	v_mov_b32_e32 v50, v8
	s_cvt_f32_u32 s4, s22
	s_sub_i32 s17, 0, s22
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v64, v8
	v_rcp_iflag_f32_e32 v1, s4
	s_load_b256 s[4:11], s[0:1], 0x0
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v48, v8
	v_readfirstlane_b32 s16, v1
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v44, v8
	s_mul_f32 s16, s16, 0x4f7ffffe
	v_mov_b32_e32 v43, v8
	v_dual_mov_b32 v7, v8 :: v_dual_and_b32 v42, 0x88, v42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s16, s16
	s_mul_i32 s17, s17, s16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_xor_b32_e32 v70, v42, v41
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_hi_u32 s12, s16, s17
	v_mov_b32_e32 v6, v8
	s_add_i32 s16, s16, s12
	v_mov_b32_e32 v42, v8
	s_mul_hi_u32 s12, s13, s16
	s_xor_b32 s16, s2, s19
	s_mul_i32 s17, s12, s22
	s_ashr_i32 s21, s16, 31
	s_sub_i32 s13, s13, s17
	s_add_i32 s23, s12, 1
	s_sub_i32 s24, s13, s22
	s_cmp_ge_u32 s13, s22
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[6:7]
	s_cselect_b32 s6, s23, s12
	s_cselect_b32 s7, s24, s13
	s_add_i32 s12, s6, 1
	s_cmp_ge_u32 s7, s22
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s6, s12, s6
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s23, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s22, s6, s21
	s_mov_b32 s6, 0x7ffffffe
	s_sub_i32 s12, s22, s21
	v_mov_b32_e32 v41, v8
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s13, s12, s19
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s19, s7
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s13
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	s_mul_i32 s13, s14, s23
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s18
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s18, s15, s23
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s3, s2, 4
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s2, s12, 7
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s20, 1
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_add_nc_u32_e32 v75, 0, v70
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v68, 2, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v69, 15, v0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s20, 34
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v66, 0x7c, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_mad_u64_u32 v[1:2], null, s14, v69, v[65:66]
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_mad_u64_u32 v[2:3], null, s15, v67, v[66:67]
	v_mov_b32_e32 v3, v8
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_add3_u32 v1, s13, s3, v1
	s_load_b64 s[12:13], s[0:1], 0x20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v2, s18, s2, v2
	.loc	1 117 22 is_stmt 0              ; generate_amdgcn.py:117:22
	s_mov_b32 s18, s6
	.loc	1 111 22 is_stmt 1              ; generate_amdgcn.py:111:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_add_nc_u32 v76, 0, v68
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_u8 v77, v1, s[4:7], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b32 v78, v2, s[16:19], 0 offen
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_dual_mov_b32 v15, v8 :: v_dual_add_nc_u32 v70, 0, v69
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt vmcnt(1)
	ds_store_b8 v75, v77 offset:2048
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v76, v78
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	v_add3_u32 v1, s23, v67, 16
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v2, 0x70, v72
	v_add3_u32 v3, s23, v69, 16
	s_lshl_b32 s18, s22, 7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v1, s15, v1
	v_and_or_b32 v2, 0x88, v71, v2
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s1, s20, 1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_mul_lo_u32 v3, s14, v3
	s_lshl_b32 s19, s21, 7
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s1, s1, 15
	v_xor_b32_e32 v4, 8, v2
	v_dual_mov_b32 v42, v41 :: v_dual_add_nc_u32 v77, 0, v2
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add3_u32 v1, v1, s18, v66
	v_dual_mov_b32 v44, v41 :: v_dual_add_nc_u32 v81, 0, v73
	v_add3_u32 v78, v3, s3, v65
	v_dual_mov_b32 v43, v41 :: v_dual_add_nc_u32 v80, 0, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v79, s19, v1
	v_dual_mov_b32 v45, v41 :: v_dual_add_nc_u32 v82, 0, v74
	v_mov_b32_e32 v46, v41
	v_mov_b32_e32 v47, v41
	v_mov_b32_e32 v48, v41
	v_mov_b32_e32 v57, v41
	v_mov_b32_e32 v58, v41
	v_mov_b32_e32 v59, v41
	v_mov_b32_e32 v60, v41
	v_mov_b32_e32 v61, v41
	v_mov_b32_e32 v62, v41
	v_mov_b32_e32 v63, v41
	v_mov_b32_e32 v64, v41
	v_mov_b32_e32 v49, v41
	v_mov_b32_e32 v50, v41
	v_mov_b32_e32 v51, v41
	v_mov_b32_e32 v52, v41
	v_mov_b32_e32 v53, v41
	v_mov_b32_e32 v54, v41
	v_mov_b32_e32 v55, v41
	v_mov_b32_e32 v56, v41
	v_mov_b32_e32 v33, v41
	v_mov_b32_e32 v34, v41
	v_mov_b32_e32 v35, v41
	v_mov_b32_e32 v36, v41
	v_mov_b32_e32 v37, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_e32 v39, v41
	v_mov_b32_e32 v40, v41
	v_mov_b32_e32 v25, v41
	v_mov_b32_e32 v26, v41
	v_mov_b32_e32 v27, v41
	v_mov_b32_e32 v28, v41
	v_mov_b32_e32 v29, v41
	v_mov_b32_e32 v30, v41
	v_mov_b32_e32 v31, v41
	v_mov_b32_e32 v32, v41
	v_mov_b32_e32 v17, v41
	v_mov_b32_e32 v18, v41
	v_mov_b32_e32 v19, v41
	v_mov_b32_e32 v20, v41
	v_mov_b32_e32 v21, v41
	v_mov_b32_e32 v22, v41
	v_mov_b32_e32 v23, v41
	v_mov_b32_e32 v24, v41
	v_mov_b32_e32 v9, v41
	v_mov_b32_e32 v10, v41
	v_mov_b32_e32 v11, v41
	v_mov_b32_e32 v12, v41
	v_mov_b32_e32 v13, v41
	v_mov_b32_e32 v14, v41
	v_mov_b32_e32 v15, v41
	v_mov_b32_e32 v16, v41
	v_mov_b32_e32 v1, v41
	v_mov_b32_e32 v2, v41
	v_mov_b32_e32 v3, v41
	v_mov_b32_e32 v4, v41
	v_mov_b32_e32 v5, v41
	v_mov_b32_e32 v6, v41
	v_mov_b32_e32 v7, v41
	v_mov_b32_e32 v8, v41
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s1, s1, 4
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_lshl_b32 s0, s15, 4
	s_add_i32 s1, s1, -1
	s_lshl_b32 s14, s14, 4
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_u8 v83, v78, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v85, v70 offset:640
	ds_load_u8 v86, v70 offset:512
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	ds_load_b64 v[67:68], v77 offset:2048
	ds_load_b64 v[65:66], v80 offset:2048
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b32 v84, v79, s[16:19], 0 offen
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v79, s0, v79
	v_add_nc_u32_e32 v78, s14, v78
	s_add_i32 s1, s1, -1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s1, 0
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v70 offset:896
	ds_load_u8 v87, v70 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v70 offset:128
	ds_load_u8 v87, v70
	ds_load_u8 v88, v70 offset:16
	ds_load_u8 v89, v70 offset:32
	ds_load_u8 v90, v70 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v85, v87, v85, 0xc0c0004
	ds_load_u8 v87, v70 offset:384
	ds_load_u8 v91, v70 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v91, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v85
	v_wmma_i32_16x16x16_iu4 v[41:48], v[85:86], v[67:68], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v85, v70 offset:1664
	ds_load_u8 v86, v70 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v70 offset:1920
	ds_load_u8 v87, v70 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v70 offset:1152
	ds_load_u8 v87, v70 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v87, v85, 0xc0c0004
	ds_load_u8 v87, v70 offset:1408
	ds_load_u8 v91, v70 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v91, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v85
	v_wmma_i32_16x16x16_iu4 v[41:48], v[85:86], v[65:66], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v85, v70 offset:656
	ds_load_u8 v86, v70 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v70 offset:912
	ds_load_u8 v87, v70 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v70 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v88, v85, 0xc0c0004
	ds_load_u8 v87, v70 offset:400
	ds_load_u8 v88, v70 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v85
	v_wmma_i32_16x16x16_iu4 v[57:64], v[85:86], v[67:68], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v85, v70 offset:1680
	ds_load_u8 v86, v70 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v70 offset:1936
	ds_load_u8 v87, v70 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v70 offset:1168
	ds_load_u8 v87, v70 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v87, v85, 0xc0c0004
	ds_load_u8 v87, v70 offset:1424
	ds_load_u8 v88, v70 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v85
	v_wmma_i32_16x16x16_iu4 v[57:64], v[85:86], v[65:66], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v85, v70 offset:672
	ds_load_u8 v86, v70 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v70 offset:928
	ds_load_u8 v87, v70 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v70 offset:416
	ds_load_u8 v88, v70 offset:288
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v70 offset:160
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v89, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v85
	v_wmma_i32_16x16x16_iu4 v[49:56], v[85:86], v[67:68], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v85, v70 offset:1696
	ds_load_u8 v86, v70 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v70 offset:1952
	ds_load_u8 v87, v70 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v70 offset:1184
	ds_load_u8 v87, v70 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v87, v85, 0xc0c0004
	ds_load_u8 v87, v70 offset:1440
	ds_load_u8 v88, v70 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v85
	v_wmma_i32_16x16x16_iu4 v[49:56], v[85:86], v[65:66], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v85, v70 offset:688
	ds_load_u8 v86, v70 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v70 offset:944
	ds_load_u8 v87, v70 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v70 offset:432
	ds_load_u8 v88, v70 offset:304
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v70 offset:176
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v90, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v85
	v_wmma_i32_16x16x16_iu4 v[33:40], v[85:86], v[67:68], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v85, v70 offset:1712
	ds_load_u8 v86, v70 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v70 offset:1968
	ds_load_u8 v87, v70 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v70 offset:1200
	ds_load_u8 v87, v70 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v87, v85, 0xc0c0004
	ds_load_u8 v87, v70 offset:1456
	ds_load_u8 v88, v70 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v85
	v_wmma_i32_16x16x16_iu4 v[33:40], v[85:86], v[65:66], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v85, v70 offset:704
	ds_load_u8 v86, v70 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v70 offset:960
	ds_load_u8 v87, v70 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v70 offset:192
	ds_load_u8 v87, v70 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v87, v85, 0xc0c0004
	ds_load_u8 v87, v70 offset:448
	ds_load_u8 v88, v70 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v85
	v_wmma_i32_16x16x16_iu4 v[25:32], v[85:86], v[67:68], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v85, v70 offset:1728
	ds_load_u8 v86, v70 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v70 offset:1984
	ds_load_u8 v87, v70 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v70 offset:1216
	ds_load_u8 v87, v70 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v87, v85, 0xc0c0004
	ds_load_u8 v87, v70 offset:1472
	ds_load_u8 v88, v70 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v85
	v_wmma_i32_16x16x16_iu4 v[25:32], v[85:86], v[65:66], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v85, v70 offset:720
	ds_load_u8 v86, v70 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v70 offset:976
	ds_load_u8 v87, v70 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v70 offset:208
	ds_load_u8 v87, v70 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v87, v85, 0xc0c0004
	ds_load_u8 v87, v70 offset:464
	ds_load_u8 v88, v70 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v85
	v_wmma_i32_16x16x16_iu4 v[17:24], v[85:86], v[67:68], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v85, v70 offset:1744
	ds_load_u8 v86, v70 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v70 offset:2000
	ds_load_u8 v87, v70 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v70 offset:1232
	ds_load_u8 v87, v70 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v87, v85, 0xc0c0004
	ds_load_u8 v87, v70 offset:1488
	ds_load_u8 v88, v70 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v85
	v_wmma_i32_16x16x16_iu4 v[17:24], v[85:86], v[65:66], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v85, v70 offset:736
	ds_load_u8 v86, v70 offset:608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v70 offset:992
	ds_load_u8 v87, v70 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v70 offset:224
	ds_load_u8 v87, v70 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v87, v85, 0xc0c0004
	ds_load_u8 v87, v70 offset:480
	ds_load_u8 v88, v70 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v85
	v_wmma_i32_16x16x16_iu4 v[9:16], v[85:86], v[67:68], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v85, v70 offset:1760
	ds_load_u8 v86, v70 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v70 offset:2016
	ds_load_u8 v87, v70 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v70 offset:1248
	ds_load_u8 v87, v70 offset:1120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v87, v85, 0xc0c0004
	ds_load_u8 v87, v70 offset:1504
	ds_load_u8 v88, v70 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v87, 16, v85
	v_wmma_i32_16x16x16_iu4 v[9:16], v[85:86], v[65:66], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v85, v70 offset:240
	ds_load_u8 v86, v70 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v70 offset:496
	ds_load_u8 v87, v70 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v86, 16, v85
	ds_load_u8 v86, v70 offset:752
	ds_load_u8 v87, v70 offset:624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v81
	ds_load_u8 v88, v70 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v86, v87, 16, v86
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[67:68], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v67, v70 offset:1264
	ds_load_u8 v68, v70 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v70 offset:1520
	ds_load_u8 v85, v70 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v85, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v68, 16, v67
	ds_load_u8 v68, v70 offset:1776
	ds_load_u8 v85, v70 offset:1648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v85, v68, 0xc0c0004
	ds_load_u8 v85, v82
	ds_load_u8 v86, v70 offset:1904
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v75, v83 offset:2048
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v76, v84
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v68, v85, 16, v68
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[65:66], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_and_b32_e32 v65, 0x70, v72
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v73, 0, v73
	v_add_nc_u32_e32 v74, 0, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_and_or_b32 v67, 0x88, v71, v65
	v_xad_u32 v65, v67, 8, 0
	v_add_nc_u32_e32 v67, 0, v67
	ds_load_b64 v[67:68], v67 offset:2048
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v71, v70 offset:640
	ds_load_u8 v72, v70 offset:512
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	ds_load_b64 v[65:66], v65 offset:2048
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v70 offset:896
	ds_load_u8 v75, v70 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v70 offset:128
	ds_load_u8 v75, v70
	ds_load_u8 v76, v70 offset:16
	ds_load_u8 v77, v70 offset:32
	ds_load_u8 v78, v70 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v70 offset:384
	ds_load_u8 v79, v70 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v79, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[41:48], v[71:72], v[67:68], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v71, v70 offset:1664
	ds_load_u8 v72, v70 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v70 offset:1920
	ds_load_u8 v75, v70 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v70 offset:1152
	ds_load_u8 v75, v70 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v70 offset:1408
	ds_load_u8 v79, v70 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v79, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[41:48], v[71:72], v[65:66], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v71, v70 offset:656
	ds_load_u8 v72, v70 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v70 offset:912
	ds_load_u8 v75, v70 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v70 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v76, v71, 0xc0c0004
	ds_load_u8 v75, v70 offset:400
	ds_load_u8 v76, v70 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[57:64], v[71:72], v[67:68], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v71, v70 offset:1680
	ds_load_u8 v72, v70 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v70 offset:1936
	ds_load_u8 v75, v70 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v70 offset:1168
	ds_load_u8 v75, v70 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v70 offset:1424
	ds_load_u8 v76, v70 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[57:64], v[71:72], v[65:66], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v71, v70 offset:672
	ds_load_u8 v72, v70 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v70 offset:928
	ds_load_u8 v75, v70 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	ds_load_u8 v75, v70 offset:416
	ds_load_u8 v76, v70 offset:288
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v70 offset:160
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v77, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[49:56], v[71:72], v[67:68], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v71, v70 offset:1696
	ds_load_u8 v72, v70 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v70 offset:1952
	ds_load_u8 v75, v70 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v70 offset:1184
	ds_load_u8 v75, v70 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v70 offset:1440
	ds_load_u8 v76, v70 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[49:56], v[71:72], v[65:66], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v71, v70 offset:688
	ds_load_u8 v72, v70 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v70 offset:944
	ds_load_u8 v75, v70 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	ds_load_u8 v75, v70 offset:432
	ds_load_u8 v76, v70 offset:304
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v70 offset:176
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v78, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[67:68], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v71, v70 offset:1712
	ds_load_u8 v72, v70 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v70 offset:1968
	ds_load_u8 v75, v70 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v70 offset:1200
	ds_load_u8 v75, v70 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v70 offset:1456
	ds_load_u8 v76, v70 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[65:66], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v71, v70 offset:704
	ds_load_u8 v72, v70 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v70 offset:960
	ds_load_u8 v75, v70 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v70 offset:192
	ds_load_u8 v75, v70 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v70 offset:448
	ds_load_u8 v76, v70 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[67:68], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v71, v70 offset:1728
	ds_load_u8 v72, v70 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v70 offset:1984
	ds_load_u8 v75, v70 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v70 offset:1216
	ds_load_u8 v75, v70 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v70 offset:1472
	ds_load_u8 v76, v70 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[65:66], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v71, v70 offset:720
	ds_load_u8 v72, v70 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v70 offset:976
	ds_load_u8 v75, v70 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v70 offset:208
	ds_load_u8 v75, v70 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v70 offset:464
	ds_load_u8 v76, v70 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[17:24], v[71:72], v[67:68], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v71, v70 offset:1744
	ds_load_u8 v72, v70 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v70 offset:2000
	ds_load_u8 v75, v70 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v70 offset:1232
	ds_load_u8 v75, v70 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v70 offset:1488
	ds_load_u8 v76, v70 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[17:24], v[71:72], v[65:66], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v71, v70 offset:736
	ds_load_u8 v72, v70 offset:608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v70 offset:992
	ds_load_u8 v75, v70 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v70 offset:224
	ds_load_u8 v75, v70 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v70 offset:480
	ds_load_u8 v76, v70 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[9:16], v[71:72], v[67:68], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v71, v70 offset:1760
	ds_load_u8 v72, v70 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v70 offset:2016
	ds_load_u8 v75, v70 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v72, 16, v71
	ds_load_u8 v71, v70 offset:1248
	ds_load_u8 v75, v70 offset:1120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v70 offset:1504
	ds_load_u8 v76, v70 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v75, 16, v71
	v_wmma_i32_16x16x16_iu4 v[9:16], v[71:72], v[65:66], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v71, v70 offset:240
	ds_load_u8 v72, v70 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v70 offset:496
	ds_load_u8 v75, v70 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v72, 16, v71
	ds_load_u8 v72, v70 offset:752
	ds_load_u8 v75, v70 offset:624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	ds_load_u8 v75, v70 offset:880
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v72, v73, 16, v72
	v_wmma_i32_16x16x16_iu4 v[1:8], v[71:72], v[67:68], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v67, v70 offset:1264
	ds_load_u8 v68, v70 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v70 offset:1520
	ds_load_u8 v71, v70 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v71, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v68, 16, v67
	ds_load_u8 v68, v70 offset:1776
	ds_load_u8 v71, v70 offset:1648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v71, v68, 0xc0c0004
	ds_load_u8 v70, v70 offset:1904
	ds_load_u8 v71, v74
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v68, v70, 16, v68
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[65:66], v[1:8] neg_lo:[1,1,0]
.LBB0_5:                                ; %._crit_edge._crit_edge
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v66, s3, v69
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s8
	v_lshlrev_b32_e32 v66, 1, v66
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v65, 4, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v131, v1
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_and_or_b32 v65, v65, 1, s2
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 127 15 is_stmt 1              ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v132, v3
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s3, s3, s15
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s6
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v66
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_lshlrev_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v67, 4, v65
	v_or_b32_e32 v68, 8, v65
	v_or_b32_e32 v70, 12, v65
	v_or_b32_e32 v71, 16, v65
	v_or_b32_e32 v72, 20, v65
	v_or_b32_e32 v73, 24, v65
	v_or_b32_e32 v99, 28, v65
	s_clause 0x7
	buffer_load_u16 v67, v67, s[4:7], 0 offen
	buffer_load_u16 v68, v68, s[4:7], 0 offen
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	buffer_load_u16 v71, v71, s[4:7], 0 offen
	buffer_load_u16 v72, v72, s[4:7], 0 offen
	buffer_load_u16 v73, v73, s[4:7], 0 offen
	buffer_load_u16 v99, v99, s[4:7], 0 offen
	buffer_load_u16 v100, v65, s[4:7], 0 offen
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v66, 16, v67
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v67, 16, v68
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v68, 16, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v68, v1, v68
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v44, v68, v44
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v70, 16, v71
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v71, 16, v72
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v72, 16, v73
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v73, 16, v99
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v73, v1, v73
	v_mul_f32_e32 v66, v1, v66
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v98, 0x80, v65
	v_or_b32_e32 v101, 0x84, v65
	v_or_b32_e32 v102, 0x88, v65
	v_or_b32_e32 v90, 0x60, v65
	v_or_b32_e32 v103, 0x8c, v65
	v_or_b32_e32 v91, 0x64, v65
	v_or_b32_e32 v104, 0x90, v65
	v_or_b32_e32 v105, 0x94, v65
	v_or_b32_e32 v106, 0x98, v65
	v_or_b32_e32 v107, 0x9c, v65
	v_or_b32_e32 v92, 0x68, v65
	s_clause 0x7
	buffer_load_u16 v98, v98, s[4:7], 0 offen
	buffer_load_u16 v101, v101, s[4:7], 0 offen
	buffer_load_u16 v102, v102, s[4:7], 0 offen
	buffer_load_u16 v103, v103, s[4:7], 0 offen
	buffer_load_u16 v104, v104, s[4:7], 0 offen
	buffer_load_u16 v105, v105, s[4:7], 0 offen
	buffer_load_u16 v106, v106, s[4:7], 0 offen
	buffer_load_u16 v107, v107, s[4:7], 0 offen
	v_or_b32_e32 v82, 64, v65
	v_or_b32_e32 v93, 0x6c, v65
	v_or_b32_e32 v83, 0x44, v65
	v_or_b32_e32 v94, 0x70, v65
	v_or_b32_e32 v95, 0x74, v65
	v_or_b32_e32 v96, 0x78, v65
	v_or_b32_e32 v97, 0x7c, v65
	v_or_b32_e32 v84, 0x48, v65
	s_clause 0x7
	buffer_load_u16 v90, v90, s[4:7], 0 offen
	buffer_load_u16 v91, v91, s[4:7], 0 offen
	buffer_load_u16 v92, v92, s[4:7], 0 offen
	buffer_load_u16 v93, v93, s[4:7], 0 offen
	buffer_load_u16 v94, v94, s[4:7], 0 offen
	buffer_load_u16 v95, v95, s[4:7], 0 offen
	buffer_load_u16 v96, v96, s[4:7], 0 offen
	buffer_load_u16 v97, v97, s[4:7], 0 offen
	v_or_b32_e32 v85, 0x4c, v65
	v_or_b32_e32 v86, 0x50, v65
	v_or_b32_e32 v87, 0x54, v65
	v_or_b32_e32 v88, 0x58, v65
	v_or_b32_e32 v89, 0x5c, v65
	s_clause 0x7
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	buffer_load_u16 v84, v84, s[4:7], 0 offen
	buffer_load_u16 v85, v85, s[4:7], 0 offen
	buffer_load_u16 v86, v86, s[4:7], 0 offen
	buffer_load_u16 v87, v87, s[4:7], 0 offen
	buffer_load_u16 v88, v88, s[4:7], 0 offen
	buffer_load_u16 v89, v89, s[4:7], 0 offen
	v_or_b32_e32 v74, 32, v65
	v_or_b32_e32 v75, 36, v65
	v_or_b32_e32 v76, 40, v65
	v_or_b32_e32 v77, 44, v65
	v_or_b32_e32 v78, 48, v65
	v_or_b32_e32 v79, 52, v65
	v_or_b32_e32 v80, 56, v65
	v_or_b32_e32 v81, 60, v65
	v_or_b32_e32 v108, 0xa0, v65
	v_or_b32_e32 v116, 0xc0, v65
	s_clause 0x7
	buffer_load_u16 v74, v74, s[4:7], 0 offen
	buffer_load_u16 v75, v75, s[4:7], 0 offen
	buffer_load_u16 v76, v76, s[4:7], 0 offen
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	buffer_load_u16 v78, v78, s[4:7], 0 offen
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	v_or_b32_e32 v109, 0xa4, v65
	v_or_b32_e32 v117, 0xc4, v65
	v_or_b32_e32 v110, 0xa8, v65
	v_or_b32_e32 v118, 0xc8, v65
	v_or_b32_e32 v124, 0xe0, v65
	v_or_b32_e32 v111, 0xac, v65
	v_or_b32_e32 v119, 0xcc, v65
	v_or_b32_e32 v125, 0xe4, v65
	v_or_b32_e32 v112, 0xb0, v65
	v_or_b32_e32 v113, 0xb4, v65
	v_or_b32_e32 v114, 0xb8, v65
	v_or_b32_e32 v115, 0xbc, v65
	v_or_b32_e32 v120, 0xd0, v65
	v_or_b32_e32 v121, 0xd4, v65
	v_or_b32_e32 v122, 0xd8, v65
	v_or_b32_e32 v123, 0xdc, v65
	v_or_b32_e32 v126, 0xe8, v65
	s_clause 0xf
	buffer_load_u16 v108, v108, s[4:7], 0 offen
	buffer_load_u16 v109, v109, s[4:7], 0 offen
	buffer_load_u16 v110, v110, s[4:7], 0 offen
	buffer_load_u16 v111, v111, s[4:7], 0 offen
	buffer_load_u16 v112, v112, s[4:7], 0 offen
	buffer_load_u16 v113, v113, s[4:7], 0 offen
	buffer_load_u16 v114, v114, s[4:7], 0 offen
	buffer_load_u16 v115, v115, s[4:7], 0 offen
	buffer_load_u16 v116, v116, s[4:7], 0 offen
	buffer_load_u16 v117, v117, s[4:7], 0 offen
	buffer_load_u16 v118, v118, s[4:7], 0 offen
	buffer_load_u16 v119, v119, s[4:7], 0 offen
	buffer_load_u16 v120, v120, s[4:7], 0 offen
	buffer_load_u16 v121, v121, s[4:7], 0 offen
	buffer_load_u16 v122, v122, s[4:7], 0 offen
	buffer_load_u16 v123, v123, s[4:7], 0 offen
	v_or_b32_e32 v127, 0xec, v65
	v_or_b32_e32 v128, 0xf0, v65
	v_or_b32_e32 v129, 0xf4, v65
	v_or_b32_e32 v130, 0xf8, v65
	v_or_b32_e32 v65, 0xfc, v65
	s_clause 0x7
	buffer_load_u16 v124, v124, s[4:7], 0 offen
	buffer_load_u16 v125, v125, s[4:7], 0 offen
	buffer_load_u16 v126, v126, s[4:7], 0 offen
	buffer_load_u16 v127, v127, s[4:7], 0 offen
	buffer_load_u16 v128, v128, s[4:7], 0 offen
	buffer_load_u16 v129, v129, s[4:7], 0 offen
	buffer_load_u16 v130, v130, s[4:7], 0 offen
	buffer_load_u16 v65, v65, s[4:7], 0 offen
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v42, v66, v42
	v_mul_f32_e32 v48, v73, v48
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v42, v42
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(54)
	v_lshlrev_b32_e32 v99, 16, v101
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v101, 16, v103
	v_lshlrev_b32_e32 v98, 16, v98
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v103, 16, v105
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v105, 16, v107
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v101, v1, v101
	v_mul_f32_e32 v98, v1, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v28, v101, v28 :: v_dual_mul_f32 v25, v98, v25
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v95, 16, v95
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v95, v1, v95 :: v_dual_lshlrev_b32 v92, 16, v92
	s_waitcnt vmcnt(32)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v92, v1, v92 :: v_dual_lshlrev_b32 v89, 16, v89
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v86, 16, v86
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v38, v95, v38 :: v_dual_mul_f32 v35, v92, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v89, v1, v89
	v_dual_mul_f32 v86, v1, v86 :: v_dual_lshlrev_b32 v83, 16, v83
	s_waitcnt vmcnt(25)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v83, v1, v83 :: v_dual_lshlrev_b32 v80, 16, v80
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v77, 16, v77
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v53, v86, v53 :: v_dual_mul_f32 v56, v89, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v80, v1, v80
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v50, v83, v50 :: v_dual_mul_f32 v77, v1, v77
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v70, v1, v70 :: v_dual_lshlrev_b32 v3, 16, v100
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v100, 16, v102
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v63, v80, v63 :: v_dual_lshlrev_b32 v102, 16, v104
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v107, 16, v109
	v_lshlrev_b32_e32 v104, 16, v106
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v109, 16, v111
	v_lshlrev_b32_e32 v106, 16, v108
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v111, 16, v113
	v_lshlrev_b32_e32 v108, 16, v110
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v113, 16, v115
	v_lshlrev_b32_e32 v110, 16, v112
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v115, 16, v117
	v_lshlrev_b32_e32 v112, 16, v114
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v117, 16, v119
	v_lshlrev_b32_e32 v114, 16, v116
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v119, 16, v121
	v_lshlrev_b32_e32 v116, 16, v118
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v121, 16, v123
	v_lshlrev_b32_e32 v118, 16, v120
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v123, 16, v125
	v_lshlrev_b32_e32 v120, 16, v122
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v125, 16, v127
	v_lshlrev_b32_e32 v122, 16, v124
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v127, 16, v129
	v_lshlrev_b32_e32 v124, 16, v126
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v65, 16, v65
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v3, v1, v3 :: v_dual_lshlrev_b32 v126, 16, v128
	v_mul_f32_e32 v127, v1, v127
	v_mul_f32_e32 v124, v1, v124
	v_mul_f32_e32 v121, v1, v121
	v_mul_f32_e32 v118, v1, v118
	v_mul_f32_e32 v115, v1, v115
	v_mul_f32_e32 v112, v1, v112
	v_mul_f32_e32 v109, v1, v109
	v_mul_f32_e32 v106, v1, v106
	v_mul_f32_e32 v103, v1, v103
	v_dual_mul_f32 v100, v1, v100 :: v_dual_lshlrev_b32 v97, 16, v97
	v_dual_mul_f32 v65, v1, v65 :: v_dual_lshlrev_b32 v94, 16, v94
	v_mul_f32_e32 v126, v1, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v97, v1, v97
	v_dual_mul_f32 v94, v1, v94 :: v_dual_lshlrev_b32 v91, 16, v91
	v_dual_mul_f32 v123, v1, v123 :: v_dual_lshlrev_b32 v88, 16, v88
	v_mul_f32_e32 v120, v1, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v91, v1, v91
	v_dual_mul_f32 v88, v1, v88 :: v_dual_lshlrev_b32 v85, 16, v85
	v_dual_mul_f32 v117, v1, v117 :: v_dual_lshlrev_b32 v82, 16, v82
	v_mul_f32_e32 v114, v1, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v85, v1, v85
	v_dual_mul_f32 v82, v1, v82 :: v_dual_lshlrev_b32 v79, 16, v79
	v_dual_mul_f32 v111, v1, v111 :: v_dual_lshlrev_b32 v76, 16, v76
	v_mul_f32_e32 v108, v1, v108
	v_mul_f32_e32 v105, v1, v105
	v_mul_f32_e32 v102, v1, v102
	v_dual_mul_f32 v99, v1, v99 :: v_dual_lshlrev_b32 v96, 16, v96
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v93, 16, v93
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v79, v1, v79
	v_dual_mul_f32 v76, v1, v76 :: v_dual_lshlrev_b32 v75, 16, v75
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v74, 16, v74
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v96, v1, v96
	v_dual_mul_f32 v93, v1, v93 :: v_dual_lshlrev_b32 v90, 16, v90
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v41, v3, v41 :: v_dual_lshlrev_b32 v128, 16, v130
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v90, v1, v90 :: v_dual_lshlrev_b32 v87, 16, v87
	v_dual_mul_f32 v75, v1, v75 :: v_dual_lshlrev_b32 v84, 16, v84
	v_mul_f32_e32 v74, v1, v74
	v_mul_f32_e32 v67, v1, v67
	v_mul_f32_e32 v128, v1, v128
	v_mul_f32_e32 v125, v1, v125
	v_mul_f32_e32 v122, v1, v122
	v_mul_f32_e32 v87, v1, v87
	v_dual_mul_f32 v84, v1, v84 :: v_dual_lshlrev_b32 v81, 16, v81
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v43, v67, v43 :: v_dual_lshlrev_b32 v78, 16, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v66, v122, v131 :: v_dual_mul_f32 v67, v123, v2
	.loc	1 190 18 is_stmt 1              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v2, s15, v69
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_bfe_u32 v69, v41, 16, 1
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v81, v1, v81
	v_mul_f32_e32 v78, v1, v78
	v_mul_f32_e32 v71, v1, v71
	v_dual_mul_f32 v72, v1, v72 :: v_dual_mul_f32 v45, v70, v45
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v7, v128, v7 :: v_dual_mul_f32 v8, v65, v8
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_bfe_u32 v65, v42, 16, 1
	v_bfe_u32 v70, v43, 16, 1
	v_add3_u32 v69, v41, v69, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_bfe_u32 v41, v44, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v46, v71, v46 :: v_dual_mul_f32 v47, v72, v47
	v_mul_f32_e32 v58, v75, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v65, v42, v65, 0x7fff
	v_add3_u32 v42, v43, v70, 0x7fff
	v_cmp_o_f32_e64 s1, v43, v43
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add3_u32 v2, s3, s2, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v41, v44, v41, 0x7fff
	v_cmp_o_f32_e64 s2, v44, v44
	v_bfe_u32 v44, v45, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v65.h, s0
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s1
	v_bfe_u32 v42, v46, 16, 1
	v_bfe_u32 v65, v47, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v69.h, vcc_lo
	v_add3_u32 v44, v45, v44, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_bfe_u32 v45, v48, 16, 1
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v57, v74, v57 :: v_dual_mul_f32 v60, v77, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v42, v46, v42, 0x7fff
	v_cmp_o_f32_e64 s0, v46, v46
	v_add3_u32 v46, v47, v65, 0x7fff
	v_cmp_o_f32_e64 s1, v47, v47
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v59, v76, v59 :: v_dual_mul_f32 v62, v79, v62
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v45, v48, v45, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v61, v78, v61 :: v_dual_mul_f32 v64, v81, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s2
	v_cmp_o_f32_e64 s2, v48, v48
	v_cndmask_b16 v42.l, 0x7fff, v44.h, vcc_lo
	v_bfe_u32 v44, v57, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v46.h, s1
	v_bfe_u32 v46, v58, 16, 1
	v_bfe_u32 v48, v60, 16, 1
	v_bfe_u32 v47, v59, 16, 1
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s0
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s2
	v_add3_u32 v44, v57, v44, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_add3_u32 v46, v58, v46, 0x7fff
	v_cmp_o_f32_e64 s0, v58, v58
	v_add3_u32 v48, v60, v48, 0x7fff
	v_cmp_o_f32_e64 s2, v60, v60
	v_bfe_u32 v57, v61, 16, 1
	v_add3_u32 v47, v59, v47, 0x7fff
	v_cmp_o_f32_e64 s1, v59, v59
	v_cndmask_b16 v44.l, 0x7fff, v44.h, vcc_lo
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s0
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s2
	v_add3_u32 v48, v61, v57, 0x7fff
	v_bfe_u32 v57, v63, 16, 1
	v_bfe_u32 v58, v64, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s1
	v_bfe_u32 v47, v62, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v49, v82, v49 :: v_dual_mul_f32 v52, v85, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v51, v84, v51 :: v_dual_mul_f32 v54, v87, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v63, v57, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_add3_u32 v58, v64, v58, 0x7fff
	v_cmp_o_f32_e64 s2, v64, v64
	v_add3_u32 v47, v62, v47, 0x7fff
	v_cndmask_b16 v47.l, 0x7fff, v48.h, vcc_lo
	v_bfe_u32 v48, v49, 16, 1
	v_cmp_o_f32_e64 s0, v62, v62
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s1
	v_cndmask_b16 v57.h, 0x7fff, v58.h, s2
	v_bfe_u32 v58, v50, 16, 1
	v_bfe_u32 v59, v51, 16, 1
	v_add3_u32 v48, v49, v48, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_bfe_u32 v49, v52, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v55, v88, v55 :: v_dual_mul_f32 v34, v91, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s0
	v_add3_u32 v58, v50, v58, 0x7fff
	v_cmp_o_f32_e64 s0, v50, v50
	v_add3_u32 v50, v51, v59, 0x7fff
	v_cmp_o_f32_e64 s1, v51, v51
	v_bfe_u32 v51, v53, 16, 1
	v_add3_u32 v49, v52, v49, 0x7fff
	v_cmp_o_f32_e64 s2, v52, v52
	v_cndmask_b16 v48.l, 0x7fff, v48.h, vcc_lo
	v_cndmask_b16 v49.l, 0x7fff, v50.h, s1
	v_bfe_u32 v50, v54, 16, 1
	v_add3_u32 v51, v53, v51, 0x7fff
	v_bfe_u32 v52, v55, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_bfe_u32 v53, v56, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v33, v90, v33 :: v_dual_mul_f32 v36, v93, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s2
	v_add3_u32 v50, v54, v50, 0x7fff
	v_add3_u32 v52, v55, v52, 0x7fff
	v_cmp_o_f32_e64 s1, v55, v55
	v_add3_u32 v53, v56, v53, 0x7fff
	v_cmp_o_f32_e64 s2, v56, v56
	v_cndmask_b16 v50.l, 0x7fff, v51.h, vcc_lo
	v_bfe_u32 v51, v33, 16, 1
	v_cndmask_b16 v48.h, 0x7fff, v58.h, s0
	v_cmp_o_f32_e64 s0, v54, v54
	v_cndmask_b16 v52.l, 0x7fff, v52.h, s1
	v_cndmask_b16 v52.h, 0x7fff, v53.h, s2
	v_bfe_u32 v53, v34, 16, 1
	v_bfe_u32 v54, v35, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v37, v94, v37 :: v_dual_mul_f32 v40, v97, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v33, v51, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_bfe_u32 v33, v36, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v39, v96, v39 :: v_dual_mul_f32 v26, v99, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s0
	v_add3_u32 v53, v34, v53, 0x7fff
	v_cmp_o_f32_e64 s0, v34, v34
	v_add3_u32 v34, v35, v54, 0x7fff
	v_cmp_o_f32_e64 s1, v35, v35
	v_add3_u32 v33, v36, v33, 0x7fff
	v_cmp_o_f32_e64 s2, v36, v36
	v_bfe_u32 v36, v37, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v51.h, vcc_lo
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s1
	v_bfe_u32 v34, v38, 16, 1
	v_bfe_u32 v51, v39, 16, 1
	v_add3_u32 v36, v37, v36, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_bfe_u32 v37, v40, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v27, v100, v27 :: v_dual_mul_f32 v30, v103, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v35.h, 0x7fff, v53.h, s0
	v_add3_u32 v34, v38, v34, 0x7fff
	v_cmp_o_f32_e64 s0, v38, v38
	v_add3_u32 v38, v39, v51, 0x7fff
	v_cmp_o_f32_e64 s1, v39, v39
	v_cndmask_b16 v34.l, 0x7fff, v36.h, vcc_lo
	v_bfe_u32 v36, v25, 16, 1
	v_add3_u32 v37, v40, v37, 0x7fff
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v119, v1, v119
	v_mul_f32_e32 v116, v1, v116
	v_mul_f32_e32 v113, v1, v113
	v_mul_f32_e32 v110, v1, v110
	v_mul_f32_e32 v107, v1, v107
	v_mul_f32_e32 v104, v1, v104
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s1
	v_bfe_u32 v38, v26, 16, 1
	v_bfe_u32 v39, v27, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v29, v102, v29 :: v_dual_mul_f32 v32, v105, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s2
	v_cmp_o_f32_e64 s2, v40, v40
	v_add3_u32 v36, v25, v36, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_bfe_u32 v25, v28, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v31, v104, v31 :: v_dual_mul_f32 v20, v109, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s0
	v_add3_u32 v38, v26, v38, 0x7fff
	v_cmp_o_f32_e64 s0, v26, v26
	v_add3_u32 v26, v27, v39, 0x7fff
	v_cmp_o_f32_e64 s1, v27, v27
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s2
	v_add3_u32 v25, v28, v25, 0x7fff
	v_cmp_o_f32_e64 s2, v28, v28
	v_bfe_u32 v28, v29, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v36.h, vcc_lo
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s1
	v_bfe_u32 v26, v30, 16, 1
	v_bfe_u32 v36, v31, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v17, v106, v17 :: v_dual_mul_f32 v22, v111, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v28, v29, v28, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_bfe_u32 v29, v32, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v18, v107, v18 :: v_dual_and_b32 v3, 16, v0
	v_dual_mul_f32 v19, v108, v19 :: v_dual_mul_f32 v24, v113, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v27.h, 0x7fff, v38.h, s0
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s0, v30, v30
	v_add3_u32 v30, v31, v36, 0x7fff
	v_cmp_o_f32_e64 s1, v31, v31
	v_cndmask_b16 v26.l, 0x7fff, v28.h, vcc_lo
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v29, v32, v29, 0x7fff
	v_bfe_u32 v31, v19, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s1
	v_bfe_u32 v30, v18, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v21, v110, v21 :: v_dual_mul_f32 v10, v115, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s2
	v_cmp_o_f32_e64 s2, v32, v32
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_bfe_u32 v17, v20, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v23, v112, v23 :: v_dual_mul_f32 v12, v117, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s0
	v_add3_u32 v30, v18, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v18, v18
	v_add3_u32 v18, v19, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v19, v19
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s2
	v_add3_u32 v17, v20, v17, 0x7fff
	v_cmp_o_f32_e64 s2, v20, v20
	v_bfe_u32 v20, v21, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s1
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v28, v23, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v9, v114, v9 :: v_dual_mul_f32 v14, v119, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v20, v21, v20, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_bfe_u32 v21, v24, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v11, v116, v11 :: v_dual_mul_f32 v16, v121, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.h, 0x7fff, v30.h, s0
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v22, v22
	v_add3_u32 v22, v23, v28, 0x7fff
	v_cmp_o_f32_e64 s1, v23, v23
	v_cndmask_b16 v18.l, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v9, 16, 1
	v_add3_u32 v21, v24, v21, 0x7fff
	v_bfe_u32 v23, v11, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s1
	v_bfe_u32 v22, v10, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v13, v118, v13 :: v_dual_mul_f32 v68, v124, v132
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s2
	v_cmp_o_f32_e64 s2, v24, v24
	v_add3_u32 v20, v9, v20, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_bfe_u32 v9, v12, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v15, v120, v15 :: v_dual_mul_f32 v4, v125, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	v_add3_u32 v22, v10, v22, 0x7fff
	v_cmp_o_f32_e64 s0, v10, v10
	v_add3_u32 v10, v11, v23, 0x7fff
	v_cmp_o_f32_e64 s1, v11, v11
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s2
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cmp_o_f32_e64 s2, v12, v12
	v_bfe_u32 v12, v13, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s1
	v_bfe_u32 v10, v14, 16, 1
	v_bfe_u32 v20, v15, 16, 1
	v_add3_u32 v12, v13, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_bfe_u32 v13, v16, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v22.h, s0
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s0, v14, v14
	v_add3_u32 v14, v15, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v15, v15
	v_cndmask_b16 v10.l, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v12, v66, 16, 1
	v_bfe_u32 v15, v68, 16, 1
	v_add3_u32 v13, v16, v13, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s1
	v_bfe_u32 v14, v67, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v5, v126, v5 :: v_dual_mul_f32 v6, v127, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s2
	v_cmp_o_f32_e64 s2, v16, v16
	v_add3_u32 v12, v66, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_bfe_u32 v16, v4, 16, 1
	v_add3_u32 v15, v68, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v68, v68
	v_add3_u32 v14, v67, v14, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s0
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s2
	v_cmp_o_f32_e64 s0, v67, v67
	v_add3_u32 v16, v4, v16, 0x7fff
	v_cmp_o_f32_e64 s2, v4, v4
	v_cndmask_b16 v4.l, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v12, v5, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s1
	v_bfe_u32 v15, v6, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v14.h, s0
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_add3_u32 v12, v5, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v6, v6
	v_add3_u32 v15, v6, v15, 0x7fff
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e64 s3, 0, v3
	v_cndmask_b16 v3.l, 0x7fff, v12.h, vcc_lo
	v_and_b32_e32 v0, 0x1e0, v0
	v_cndmask_b16 v3.h, 0x7fff, v15.h, s0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v31, v34, v35, s3
	v_cndmask_b32_e64 v32, v35, v34, s3
	v_cndmask_b32_e64 v34, v37, v33, s3
	v_cndmask_b32_e64 v33, v33, v37, s3
	v_cndmask_b32_e64 v37, v10, v11, s3
	v_cndmask_b32_e64 v10, v11, v10, s3
	v_cndmask_b32_e64 v39, v3, v4, s3
	v_cndmask_b32_e64 v3, v4, v3, s3
	v_mov_b32_e32 v4, 0x5410
	v_mov_b32_e32 v11, 0x7632
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_nc_u32_e32 v0, 32, v1
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s2
	v_cndmask_b32_e64 v4, 0x1054, v4, s3
	v_cndmask_b32_e64 v11, 0x3276, v11, s3
	v_bfe_u32 v16, v7, 16, 1
	v_bfe_u32 v5, v8, 16, 1
	v_cmp_o_f32_e64 s1, v7, v7
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v11, v11, 8, v11
	v_add3_u32 v6, v7, v16, 0x7fff
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s2, v8, v8
	v_and_b32_e32 v4, 0x540054, v4
	v_and_b32_e32 v11, 0x760076, v11
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s1
	v_cndmask_b32_e64 v7, v43, v42, s3
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s2
	v_cndmask_b32_e64 v12, v41, v45, s3
	v_cndmask_b32_e64 v16, v44, v47, s3
	v_cndmask_b32_e64 v22, v46, v57, s3
	v_cndmask_b32_e64 v24, v48, v50, s3
	v_cndmask_b32_e64 v30, v49, v52, s3
	v_cndmask_b32_e64 v35, v26, v27, s3
	v_cndmask_b32_e64 v26, v27, v26, s3
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v11, v11, 4, v11
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e64 v6, v42, v43, s3
	v_cndmask_b32_e64 v8, v45, v41, s3
	v_cndmask_b32_e64 v15, v47, v44, s3
	v_cndmask_b32_e64 v20, v57, v46, s3
	v_cndmask_b32_e64 v28, v52, v49, s3
	v_cndmask_b32_e64 v27, v29, v25, s3
	v_cndmask_b32_e64 v25, v25, v29, s3
	v_cndmask_b32_e64 v29, v18, v19, s3
	v_cndmask_b32_e64 v18, v19, v18, s3
	v_cndmask_b32_e64 v38, v13, v9, s3
	v_cndmask_b32_e64 v9, v9, v13, s3
	v_cndmask_b32_e64 v40, v5, v14, s3
	v_cndmask_b32_e64 v5, v14, v5, s3
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v33, 0x5040504, v4
	v_and_b32_e32 v41, 0x7060706, v11
	v_cndmask_b32_e64 v23, v50, v48, s3
	v_add_nc_u32_e32 v2, 64, v1
	v_cndmask_b32_e64 v36, v21, v17, s3
	v_cndmask_b32_e64 v17, v17, v21, s3
	v_permlanex16_b32 v21, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v7, v6, v33
	v_perm_b32 v4, v7, v6, v41
	v_perm_b32 v5, v12, v8, v33
	v_perm_b32 v6, v12, v8, v41
	v_perm_b32 v7, v13, v15, v33
	v_perm_b32 v8, v13, v15, v41
	v_perm_b32 v9, v14, v20, v33
	v_perm_b32 v10, v14, v20, v41
	v_perm_b32 v13, v19, v28, v33
	v_perm_b32 v14, v19, v28, v41
	v_perm_b32 v19, v24, v35, v33
	v_perm_b32 v20, v24, v35, v41
	v_dual_cndmask_b32 v35, 0x80000000, v1 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_perm_b32 v11, v16, v23, v33
	v_perm_b32 v12, v16, v23, v41
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_mov_b32 s15, s7
	s_clause 0x2
	buffer_store_b128 v[3:6], v35, s[12:15], 0 offen
	buffer_store_b128 v[7:10], v0, s[12:15], 0 offen
	buffer_store_b128 v[11:14], v2, s[12:15], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v1
	v_permlanex16_b32 v25, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v2, 0x80, v1
	v_permlanex16_b32 v26, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v3, 0xa0, v1
	v_add_nc_u32_e32 v4, 0xc0, v1
	v_add_nc_u32_e32 v1, 0xe0, v1
	v_perm_b32 v15, v21, v31, v33
	v_perm_b32 v16, v21, v31, v41
	v_perm_b32 v17, v22, v34, v33
	v_perm_b32 v18, v22, v34, v41
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_perm_b32 v21, v25, v27, v33
	v_perm_b32 v22, v25, v27, v41
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_perm_b32 v23, v26, v29, v33
	v_perm_b32 v24, v26, v29, v41
	v_perm_b32 v25, v30, v36, v33
	v_perm_b32 v26, v30, v36, v41
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_perm_b32 v27, v32, v37, v33
	v_perm_b32 v28, v32, v37, v41
	v_perm_b32 v29, v42, v38, v33
	v_perm_b32 v30, v42, v38, v41
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_perm_b32 v31, v43, v39, v33
	v_perm_b32 v32, v43, v39, v41
	v_perm_b32 v33, v44, v40, v33
	v_perm_b32 v34, v44, v40, v41
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[15:18], v0, s[12:15], 0 offen
	buffer_store_b128 v[19:22], v2, s[12:15], 0 offen
	buffer_store_b128 v[23:26], v3, s[12:15], 0 offen
	buffer_store_b128 v[27:30], v4, s[12:15], 0 offen
	buffer_store_b128 v[31:34], v1, s[12:15], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 133
		.amdhsa_next_free_sgpr 25
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 133
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 25
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12376
; TotalNumSgprs: 27
; NumVgprs: 133
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 27
; NumVGPRsForWavesPerEU: 133
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	105                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     27
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     133
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
