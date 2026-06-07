	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s10, s2
	v_dual_mov_b32 v13, 0 :: v_dual_lshlrev_b32 v8, 2, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_bfe_u32 v2, v0, 4, 4
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 2, v0
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v9, 15, v0
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v10, 0x7f, v0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s8, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s12, s6, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s8, s8, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s12, s12, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s6, s6, 4
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s5
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s9
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s9, v1
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	s_mul_f32 s9, s9, 0x4f7ffffe
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s9, s9
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	s_mul_i32 s11, s11, s9
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	s_mul_hi_u32 s11, s9, s11
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	s_sub_i32 s10, s10, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s10, s8
	s_cmp_ge_u32 s10, s8
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s10, s8
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	s_cselect_b32 s8, s12, s9
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	s_xor_b32 s8, s8, s11
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	s_sub_i32 s16, s8, s11
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s6, s16
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s16, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s6, s6, 1
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s18, s6
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	s_cvt_f32_u32 s17, s18
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v76, v0, 4, 1
	v_bfe_i32 v77, v0, 3, 1
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v78, 4, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s10, 0, s18
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s17, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v1, 12, v8
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s27, s11
	v_and_b32_e32 v8, 0x77c, v8
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_cvt_u32_f32 s17, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s17
	s_mul_hi_u32 s5, s17, s10
	s_abs_i32 s10, s2
	s_add_i32 s17, s17, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s6
	s_mul_i32 s19, s5, s18
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s19, s10, s19
	s_add_i32 s20, s5, 1
	s_sub_i32 s21, s19, s18
	s_cmp_ge_u32 s19, s18
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s20, s5
	s_cselect_b32 s19, s21, s19
	s_add_i32 s20, s5, 1
	s_cmp_ge_u32 s19, s18
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s26, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s20, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s20, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s19, s5, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s4, 31
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s20
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s19, s17
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s40, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s5, s6
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s18, s3, 4
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s4
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mad_u64_u32 v[5:6], null, s40, v3, v[1:2]
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v4, s18, v9
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 4
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v7, s18, v1
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_or_b32_e32 v6, s33, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s6, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s21, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s40, v4
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 16, v4
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s40, v7
	.loc	1 156 51                        ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 16, v7
	.loc	1 162 34 is_stmt 1              ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[6:7], null, v6, s40, v[4:5]
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s20, 5
.Ltmp21:
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	s_mul_i32 s2, s6, s40
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s21, 31
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add3_u32 v4, s18, s2, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s5
	s_and_b32 s16, vcc_lo, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e64 v5, 0x80000000, v6, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s16
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u8 v5, v5, s[8:11], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b32 v4, v4, s[24:27], 0 offen
	s_load_b64 s[4:5], s[0:1], 0x20
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_bfe_i32 v6, v0, 7, 1
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_bfe_i32 v7, v0, 5, 1
	v_mov_b32_e32 v72, 0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s35, s34, -1
	s_mov_b32 s16, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v6, 0x88, v6
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v7, 0x88, v7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lt_i32 s21, 64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v6, v6, v10
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xor_b32_e32 v7, v7, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v79, 0, v6
	v_add_nc_u32_e32 v80, 0, v7
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v79, v5 offset:2048
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v80, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	v_lshl_or_b32 v3, s19, 7, v3
	s_lshl_b32 s1, s17, 8
	s_lshl_b32 s17, s17, 7
	v_dual_mov_b32 v51, 0 :: v_dual_and_b32 v4, 0x70, v78
	s_lshl_b32 s0, s19, 8
	v_subrev_nc_u32_e32 v3, s17, v3
	s_add_i32 s44, s18, 16
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v2, s33, v2
	v_add_nc_u32_e32 v5, s33, v9
	v_and_or_b32 v4, 0x88, v77, v4
	v_sub_nc_u32_e32 v81, s40, v1
	v_lshlrev_b32_e32 v82, 1, v76
	v_mad_u64_u32 v[10:11], null, s40, v3, v[1:2]
	v_mul_lo_u32 v5, s34, v5
	v_xor_b32_e32 v6, 8, v4
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v84, 0, v4
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v72, 0
	v_mad_u64_u32 v[11:12], null, s40, v2, v[9:10]
	v_lshlrev_b32_e32 v83, 1, v5
	v_add_nc_u32_e32 v85, 0, v6
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v12, 0
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_max_i32 s41, s35, 1
	s_sub_i32 s42, s0, s1
	s_lshl_b32 s43, s7, 1
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_add_nc_u32_e32 v88, s44, v9
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v89, s44, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v87, s42, v82
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s44, v81
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s41, s41, -1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s1, s40, v88
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s42, s42, s43
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v88, 0x80000000, v89, s1
	buffer_load_u8 v88, v88, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v163, v83, s[28:31], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v164, v87, s[36:39], 0 offen
	buffer_load_u16 v165, v87, s[36:39], 0 offen offset:4
	buffer_load_u16 v166, v87, s[36:39], 0 offen offset:8
	buffer_load_u16 v167, v87, s[36:39], 0 offen offset:12
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_b64 v[103:106], v84 offset1:32
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[159:160], v84 offset:2048
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_b64 v[119:122], v84 offset0:64 offset1:96
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[161:162], v85 offset:2048
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_b64 v[135:138], v84 offset0:128 offset1:160
	ds_load_2addr_b64 v[129:132], v85 offset1:32
	ds_load_2addr_b64 v[139:142], v85 offset0:64 offset1:96
	ds_load_2addr_b64 v[143:146], v85 offset0:128 offset1:160
	ds_load_2addr_b64 v[151:154], v84 offset0:192 offset1:224
	ds_load_2addr_b64 v[155:158], v85 offset0:192 offset1:224
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[103:104], v[159:160], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[105:106], v[159:160], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[119:120], v[159:160], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[121:122], v[159:160], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[135:136], v[159:160], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[129:130], v[161:162], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[131:132], v[161:162], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[137:138], v[159:160], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[139:140], v[161:162], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[141:142], v[161:162], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[143:144], v[161:162], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[145:146], v[161:162], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[151:152], v[159:160], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[153:154], v[159:160], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[155:156], v[161:162], v[137:144] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[145:152], v[157:158], v[161:162], v[145:152] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v162, 16, v165
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v160, 16, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v90, v90, v160
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v75, v90, v162
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v92, v92, v160 :: v_dual_lshlrev_b32 v163, 16, v166
	v_mul_f32_e32 v91, v91, v160
	v_mul_f32_e32 v89, v89, v160
	v_dual_mul_f32 v116, v116, v160 :: v_dual_add_nc_u32 v83, 2, v83
	v_mul_f32_e32 v94, v94, v160
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v74, v91, v163
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x6
	buffer_load_u16 v153, v87, s[36:39], 0 offen offset:16
	buffer_load_u16 v154, v87, s[36:39], 0 offen offset:20
	buffer_load_u16 v155, v87, s[36:39], 0 offen offset:24
	buffer_load_u16 v156, v87, s[36:39], 0 offen offset:28
	buffer_load_u16 v157, v87, s[36:39], 0 offen offset:32
	buffer_load_u16 v158, v87, s[36:39], 0 offen offset:36
	buffer_load_u16 v159, v87, s[36:39], 0 offen offset:40
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v93, v93, v160
	v_mul_f32_e32 v97, v97, v160
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v91, v87, s[36:39], 0 offen offset:60
	buffer_load_u16 v163, v87, s[36:39], 0 offen offset:64
	buffer_load_u16 v90, v87, s[36:39], 0 offen offset:52
	buffer_load_u16 v162, v87, s[36:39], 0 offen offset:56
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v101, v101, v160
	v_mul_f32_e32 v96, v96, v160
	v_mul_f32_e32 v98, v98, v160
	v_mul_f32_e32 v106, v106, v160
	v_mul_f32_e32 v100, v100, v160
	v_mul_f32_e32 v108, v108, v160
	v_mul_f32_e32 v110, v110, v160
	v_mul_f32_e32 v102, v102, v160
	v_mul_f32_e32 v118, v118, v160
	v_mul_f32_e32 v114, v114, v160
	v_mul_f32_e32 v120, v120, v160
	v_mul_f32_e32 v112, v112, v160
	v_mul_f32_e32 v115, v115, v160
	v_mul_f32_e32 v104, v104, v160
	v_mul_f32_e32 v142, v142, v160
	v_mul_f32_e32 v125, v125, v160
	v_mul_f32_e32 v126, v126, v160
	v_mul_f32_e32 v127, v127, v160
	v_mul_f32_e32 v136, v136, v160
	v_mul_f32_e32 v140, v140, v160
	v_mul_f32_e32 v117, v117, v160
	v_mul_f32_e32 v138, v138, v160
	v_mul_f32_e32 v119, v119, v160
	v_mul_f32_e32 v128, v128, v160
	v_mul_f32_e32 v132, v132, v160
	v_mul_f32_e32 v150, v150, v160
	v_mul_f32_e32 v121, v121, v160
	v_mul_f32_e32 v130, v130, v160
	v_mul_f32_e32 v134, v134, v160
	v_mul_f32_e32 v122, v122, v160
	v_mul_f32_e32 v124, v124, v160
	v_mul_f32_e32 v152, v152, v160
	v_mul_f32_e32 v131, v131, v160
	v_mul_f32_e32 v144, v144, v160
	v_mul_f32_e32 v148, v148, v160
	v_mul_f32_e32 v123, v123, v160
	v_mul_f32_e32 v129, v129, v160
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v146, v146, v160 :: v_dual_lshlrev_b32 v153, 16, v153
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v154, 16, v154
	v_lshlrev_b32_e32 v161, 16, v164
	v_lshlrev_b32_e32 v164, 16, v167
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v72, v93, v153
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v93, v87, s[36:39], 0 offen offset:76
	buffer_load_u16 v153, v87, s[36:39], 0 offen offset:80
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v71, v94, v154
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v94, v87, s[36:39], 0 offen offset:84
	buffer_load_u16 v154, v87, s[36:39], 0 offen offset:88
	v_lshlrev_b32_e32 v155, 16, v155
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v95, v95, v160 :: v_dual_lshlrev_b32 v158, 16, v158
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v68, v97, v157 :: v_dual_fmac_f32 v73, v92, v164
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v92, v87, s[36:39], 0 offen offset:68
	buffer_load_u16 v164, v87, s[36:39], 0 offen offset:72
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v51, v89, v161 :: v_dual_add_nc_u32 v86, s44, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v89, v87, s[36:39], 0 offen offset:44
	buffer_load_u16 v161, v87, s[36:39], 0 offen offset:48
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v105, v105, v160
	v_mul_f32_e32 v107, v107, v160
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v70, v95, v155
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v95, v87, s[36:39], 0 offen offset:92
	buffer_load_u16 v155, v87, s[36:39], 0 offen offset:96
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v67, v98, v158 :: v_dual_lshlrev_b32 v156, 16, v156
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v162, 16, v162
	v_lshlrev_b32_e32 v159, 16, v159
	s_clause 0x1
	buffer_load_u16 v98, v87, s[36:39], 0 offen offset:116
	buffer_load_u16 v158, v87, s[36:39], 0 offen offset:120
	v_lshlrev_b32_e32 v90, 16, v90
	v_lshlrev_b32_e32 v91, 16, v91
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v113, v113, v160
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v97, v87, s[36:39], 0 offen offset:108
	buffer_load_u16 v157, v87, s[36:39], 0 offen offset:112
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v86, 0x80000000, v86, s0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v63, v102, v90
	v_fmac_f32_e32 v61, v104, v91
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v90, v87, s[36:39], 0 offen offset:148
	buffer_load_u16 v102, v87, s[36:39], 0 offen offset:152
	buffer_load_u16 v91, v87, s[36:39], 0 offen offset:164
	buffer_load_u16 v104, v87, s[36:39], 0 offen offset:168
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	buffer_load_b32 v86, v86, s[24:27], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s44, s44, 16
	s_cmp_lg_u32 s41, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v93, 16, v93
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v94, 16, v94
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(15)
	v_dual_fmac_f32 v57, v108, v93 :: v_dual_lshlrev_b32 v154, 16, v154
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v93, v87, s[36:39], 0 offen offset:196
	buffer_load_u16 v108, v87, s[36:39], 0 offen offset:200
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(16)
	v_dual_fmac_f32 v55, v110, v94 :: v_dual_lshlrev_b32 v92, 16, v92
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v164, 16, v164
	v_lshlrev_b32_e32 v163, 16, v163
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v89, 16, v89
	s_clause 0x1
	buffer_load_u16 v94, v87, s[36:39], 0 offen offset:212
	buffer_load_u16 v110, v87, s[36:39], 0 offen offset:216
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v58, v107, v164
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v103, v103, v160 :: v_dual_fmac_f32 v60, v105, v163
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v161, 16, v161
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v65, v100, v89
	s_waitcnt vmcnt(14)
	v_dual_fmac_f32 v62, v103, v162 :: v_dual_lshlrev_b32 v95, 16, v95
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v99, v99, v160 :: v_dual_fmac_f32 v64, v101, v161
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v69, v96, v156
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v96, v87, s[36:39], 0 offen offset:100
	buffer_load_u16 v156, v87, s[36:39], 0 offen offset:104
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(14)
	v_dual_fmac_f32 v53, v112, v95 :: v_dual_lshlrev_b32 v98, 16, v98
	v_fmac_f32_e32 v66, v99, v159
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0xd
	buffer_load_u16 v99, v87, s[36:39], 0 offen offset:124
	buffer_load_u16 v159, v87, s[36:39], 0 offen offset:128
	buffer_load_u16 v89, v87, s[36:39], 0 offen offset:132
	buffer_load_u16 v100, v87, s[36:39], 0 offen offset:136
	buffer_load_u16 v101, v87, s[36:39], 0 offen offset:140
	buffer_load_u16 v161, v87, s[36:39], 0 offen offset:144
	buffer_load_u16 v103, v87, s[36:39], 0 offen offset:156
	buffer_load_u16 v162, v87, s[36:39], 0 offen offset:160
	buffer_load_u16 v105, v87, s[36:39], 0 offen offset:172
	buffer_load_u16 v163, v87, s[36:39], 0 offen offset:176
	buffer_load_u16 v107, v87, s[36:39], 0 offen offset:188
	buffer_load_u16 v164, v87, s[36:39], 0 offen offset:192
	buffer_load_u16 v95, v87, s[36:39], 0 offen offset:228
	buffer_load_u16 v112, v87, s[36:39], 0 offen offset:232
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v157, 16, v157
	v_lshlrev_b32_e32 v97, 16, v97
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v90, 16, v90
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v102, 16, v102
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v91, 16, v91
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v139, v139, v160
	v_dual_mul_f32 v143, v143, v160 :: v_dual_fmac_f32 v48, v116, v97
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v47, v117, v157 :: v_dual_fmac_f32 v46, v118, v98
	v_fmac_f32_e32 v45, v119, v158
	v_fmac_f32_e32 v38, v126, v90
	v_dual_fmac_f32 v37, v127, v102 :: v_dual_fmac_f32 v34, v130, v91
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v93, 16, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v149, v149, v160 :: v_dual_fmac_f32 v26, v138, v93
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v94, 16, v94
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v110, 16, v110
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v22, v142, v94
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v96, 16, v96
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(13)
	v_dual_fmac_f32 v50, v114, v96 :: v_dual_lshlrev_b32 v99, 16, v99
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v111, v111, v160 :: v_dual_fmac_f32 v52, v113, v155
	v_mul_f32_e32 v109, v109, v160
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v113, v87, s[36:39], 0 offen offset:236
	buffer_load_u16 v155, v87, s[36:39], 0 offen offset:240
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(13)
	v_dual_fmac_f32 v54, v111, v154 :: v_dual_lshlrev_b32 v89, 16, v89
	v_dual_fmac_f32 v59, v106, v92 :: v_dual_fmac_f32 v56, v109, v153
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x8
	buffer_load_u16 v92, v87, s[36:39], 0 offen offset:180
	buffer_load_u16 v106, v87, s[36:39], 0 offen offset:184
	buffer_load_u16 v109, v87, s[36:39], 0 offen offset:204
	buffer_load_u16 v153, v87, s[36:39], 0 offen offset:208
	buffer_load_u16 v111, v87, s[36:39], 0 offen offset:220
	buffer_load_u16 v154, v87, s[36:39], 0 offen offset:224
	buffer_load_u16 v96, v87, s[36:39], 0 offen offset:244
	buffer_load_u16 v114, v87, s[36:39], 0 offen offset:248
	buffer_load_u16 v87, v87, s[36:39], 0 offen offset:252
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v100, 16, v100
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v101, 16, v101
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v161, 16, v161
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v103, 16, v103
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v162, 16, v162
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v43, v121, v159 :: v_dual_lshlrev_b32 v104, 16, v104
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v105, 16, v105
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v163, 16, v163
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v107, 16, v107
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v164, 16, v164
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v35, v129, v162 :: v_dual_lshlrev_b32 v108, 16, v108
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v95, 16, v95
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v133, v133, v160 :: v_dual_fmac_f32 v44, v120, v99
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v112, 16, v112
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v135, v135, v160 :: v_dual_fmac_f32 v42, v122, v89
	v_dual_mul_f32 v137, v137, v160 :: v_dual_fmac_f32 v40, v124, v101
	v_dual_mul_f32 v141, v141, v160 :: v_dual_fmac_f32 v36, v128, v103
	v_dual_mul_f32 v145, v145, v160 :: v_dual_fmac_f32 v32, v132, v105
	v_dual_mul_f32 v147, v147, v160 :: v_dual_fmac_f32 v28, v136, v107
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v49, v115, v156
	v_fmac_f32_e32 v39, v125, v161
	v_dual_fmac_f32 v33, v131, v104 :: v_dual_fmac_f32 v18, v146, v95
	v_fmac_f32_e32 v31, v133, v163
	v_fmac_f32_e32 v17, v147, v112
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v79, v88 offset:2048
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_store_b32 v80, v86
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v113, 16, v113
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v155, 16, v155
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v27, v137, v164 :: v_dual_fmac_f32 v16, v148, v113
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v92, 16, v92
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v106, 16, v106
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v109, 16, v109
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v111, 16, v111
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v29, v135, v106 :: v_dual_lshlrev_b32 v96, 16, v96
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v114, 16, v114
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v87, 16, v87
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v151, v151, v160 :: v_dual_fmac_f32 v24, v140, v109
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v41, v123, v100 :: v_dual_fmac_f32 v20, v144, v111
	v_dual_fmac_f32 v30, v134, v92 :: v_dual_fmac_f32 v23, v141, v153
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v25, v139, v108 :: v_dual_fmac_f32 v12, v152, v87
	v_dual_fmac_f32 v21, v143, v110 :: v_dual_fmac_f32 v14, v150, v96
	v_fmac_f32_e32 v19, v145, v154
	v_fmac_f32_e32 v15, v149, v155
	v_fmac_f32_e32 v13, v151, v114
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow106
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v1, 16, v0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_mov_b32_e32 v133, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s16, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v133, s23 :: v_dual_and_b32 v2, 0x70, v78
	v_dual_mov_b32 v132, s22 :: v_dual_mov_b32 v129, s19
	v_mov_b32_e32 v131, s21
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_or_b32 v2, 0x88, v77, v2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v130, s20 :: v_dual_mov_b32 v127, s17
	v_mov_b32_e32 v128, s18
	v_mov_b32_e32 v126, s16
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v8, 0, v2
	v_xad_u32 v77, v2, 8, 0
	ds_load_2addr_b64 v[2:5], v8 offset1:32
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[6:7], v8 offset:2048
	ds_load_b64 v[10:11], v77 offset:2048
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_2addr_b64 v[107:110], v8 offset0:64 offset1:96
	ds_load_2addr_b64 v[134:137], v8 offset0:128 offset1:160
	ds_load_2addr_b64 v[142:145], v8 offset0:192 offset1:224
	ds_load_2addr_b64 v[146:149], v77 offset1:32
	ds_load_2addr_b64 v[150:153], v77 offset0:64 offset1:96
	ds_load_2addr_b64 v[154:157], v77 offset0:192 offset1:224
	ds_load_2addr_b64 v[158:161], v77 offset0:128 offset1:160
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[2:3], v[6:7], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[4:5], v[6:7], v[126:133] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[93:100], v[107:108], v[6:7], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[109:110], v[6:7], v[126:133] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[109:116], v[134:135], v[6:7], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[136:137], v[6:7], v[126:133] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[142:143], v[6:7], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[144:145], v[6:7], v[126:133] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[146:147], v[10:11], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[148:149], v[10:11], v[85:92] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[93:100], v[150:151], v[10:11], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[152:153], v[10:11], v[101:108] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[109:116], v[158:159], v[10:11], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[160:161], v[10:11], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[154:155], v[10:11], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[156:157], v[10:11], v[126:133] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v77
	v_cvt_f32_i32_e32 v3, v78
	v_cvt_f32_i32_e32 v4, v79
	v_cvt_f32_i32_e32 v5, v80
	v_cvt_f32_i32_e32 v6, v81
	v_cvt_f32_i32_e32 v7, v82
	v_cvt_f32_i32_e32 v8, v83
	v_cvt_f32_i32_e32 v10, v84
	v_cvt_f32_i32_e32 v11, v85
	v_cvt_f32_i32_e32 v79, v86
	v_cvt_f32_i32_e32 v80, v87
	v_cvt_f32_i32_e32 v81, v88
	v_cvt_f32_i32_e32 v82, v89
	v_cvt_f32_i32_e32 v83, v90
	v_cvt_f32_i32_e32 v84, v91
	v_cvt_f32_i32_e32 v85, v92
	v_cvt_f32_i32_e32 v86, v93
	v_cvt_f32_i32_e32 v87, v94
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v89, v96
	v_cvt_f32_i32_e32 v90, v97
	v_cvt_f32_i32_e32 v91, v98
	v_cvt_f32_i32_e32 v92, v99
	v_cvt_f32_i32_e32 v93, v100
	v_cvt_f32_i32_e32 v94, v101
	v_cvt_f32_i32_e32 v95, v102
	v_cvt_f32_i32_e32 v96, v103
	v_cvt_f32_i32_e32 v97, v104
	v_cvt_f32_i32_e32 v98, v105
	v_cvt_f32_i32_e32 v99, v106
	v_cvt_f32_i32_e32 v100, v107
	v_cvt_f32_i32_e32 v101, v108
	v_cvt_f32_i32_e32 v102, v109
	v_cvt_f32_i32_e32 v103, v110
	v_cvt_f32_i32_e32 v104, v111
	v_cvt_f32_i32_e32 v105, v112
	v_cvt_f32_i32_e32 v106, v113
	v_cvt_f32_i32_e32 v107, v114
	v_cvt_f32_i32_e32 v108, v115
	v_cvt_f32_i32_e32 v109, v116
	v_cvt_f32_i32_e32 v110, v117
	v_cvt_f32_i32_e32 v111, v118
	v_cvt_f32_i32_e32 v112, v119
	v_cvt_f32_i32_e32 v113, v120
	v_cvt_f32_i32_e32 v114, v121
	v_cvt_f32_i32_e32 v115, v122
	v_cvt_f32_i32_e32 v116, v123
	v_cvt_f32_i32_e32 v117, v124
	v_cvt_f32_i32_e32 v118, v134
	v_cvt_f32_i32_e32 v119, v135
	v_cvt_f32_i32_e32 v120, v136
	v_cvt_f32_i32_e32 v121, v137
	v_cvt_f32_i32_e32 v122, v138
	v_cvt_f32_i32_e32 v123, v139
	v_cvt_f32_i32_e32 v124, v140
	v_cvt_f32_i32_e32 v125, v141
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
.LBB0_5:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v77, s34, v9
	s_mul_i32 s0, s33, s34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s35, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s13, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s8, s12
	v_add_lshl_u32 v77, s0, v77, 1
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s1, s7
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s7
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s6, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v76, s0, v76, 1
	s_mov_b32 s0, 0x76543210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s5, s5, 0xffff
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v77, v77, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v78, 0x80000000, v76, s2
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	buffer_load_u16 v78, v78, s[8:11], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v77, 16, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v134, 4, v76
	v_add_nc_u32_e32 v135, 8, v76
	v_add_nc_u32_e32 v136, 12, v76
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v4, v4, v77 :: v_dual_add_nc_u32 v137, 16, v76
	v_dual_mul_f32 v7, v7, v77 :: v_dual_add_nc_u32 v138, 20, v76
	v_dual_mul_f32 v6, v6, v77 :: v_dual_add_nc_u32 v139, 24, v76
	v_dual_mul_f32 v11, v11, v77 :: v_dual_add_nc_u32 v140, 28, v76
	v_dual_mul_f32 v8, v8, v77 :: v_dual_add_nc_u32 v141, 32, v76
	v_dual_mul_f32 v79, v79, v77 :: v_dual_add_nc_u32 v142, 36, v76
	v_dual_mul_f32 v10, v10, v77 :: v_dual_add_nc_u32 v143, 40, v76
	v_dual_mul_f32 v81, v81, v77 :: v_dual_add_nc_u32 v144, 44, v76
	v_dual_mul_f32 v80, v80, v77 :: v_dual_add_nc_u32 v145, 48, v76
	v_dual_mul_f32 v83, v83, v77 :: v_dual_add_nc_u32 v146, 52, v76
	v_dual_mul_f32 v82, v82, v77 :: v_dual_add_nc_u32 v147, 56, v76
	v_dual_mul_f32 v85, v85, v77 :: v_dual_add_nc_u32 v148, 60, v76
	v_dual_mul_f32 v84, v84, v77 :: v_dual_add_nc_u32 v149, 64, v76
	v_dual_mul_f32 v87, v87, v77 :: v_dual_add_nc_u32 v150, 0x44, v76
	v_dual_mul_f32 v86, v86, v77 :: v_dual_add_nc_u32 v151, 0x48, v76
	v_dual_mul_f32 v89, v89, v77 :: v_dual_add_nc_u32 v152, 0x4c, v76
	v_dual_mul_f32 v88, v88, v77 :: v_dual_add_nc_u32 v153, 0x50, v76
	v_dual_mul_f32 v91, v91, v77 :: v_dual_add_nc_u32 v154, 0x54, v76
	v_dual_mul_f32 v90, v90, v77 :: v_dual_add_nc_u32 v155, 0x58, v76
	v_dual_mul_f32 v93, v93, v77 :: v_dual_add_nc_u32 v156, 0x5c, v76
	v_mul_f32_e32 v3, v3, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v134, 0x80000000, v134, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v2, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v5, v5, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v136, 0x80000000, v136, s2
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	s_clause 0x16
	buffer_load_u16 v134, v134, s[8:11], 0 offen
	buffer_load_u16 v135, v135, s[8:11], 0 offen
	buffer_load_u16 v136, v136, s[8:11], 0 offen
	buffer_load_u16 v137, v137, s[8:11], 0 offen
	buffer_load_u16 v138, v138, s[8:11], 0 offen
	buffer_load_u16 v139, v139, s[8:11], 0 offen
	buffer_load_u16 v140, v140, s[8:11], 0 offen
	buffer_load_u16 v141, v141, s[8:11], 0 offen
	buffer_load_u16 v142, v142, s[8:11], 0 offen
	buffer_load_u16 v143, v143, s[8:11], 0 offen
	buffer_load_u16 v144, v144, s[8:11], 0 offen
	buffer_load_u16 v145, v145, s[8:11], 0 offen
	buffer_load_u16 v146, v146, s[8:11], 0 offen
	buffer_load_u16 v147, v147, s[8:11], 0 offen
	buffer_load_u16 v148, v148, s[8:11], 0 offen
	buffer_load_u16 v149, v149, s[8:11], 0 offen
	buffer_load_u16 v150, v150, s[8:11], 0 offen
	buffer_load_u16 v151, v151, s[8:11], 0 offen
	buffer_load_u16 v152, v152, s[8:11], 0 offen
	buffer_load_u16 v153, v153, s[8:11], 0 offen
	buffer_load_u16 v154, v154, s[8:11], 0 offen
	buffer_load_u16 v155, v155, s[8:11], 0 offen
	buffer_load_u16 v156, v156, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v105, v105, v77 :: v_dual_add_nc_u32 v160, 0x6c, v76
	v_mul_f32_e32 v97, v97, v77
	v_dual_mul_f32 v96, v96, v77 :: v_dual_add_nc_u32 v161, 0x70, v76
	v_mul_f32_e32 v109, v109, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v92, v92, v77 :: v_dual_add_nc_u32 v157, 0x60, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v95, v95, v77 :: v_dual_add_nc_u32 v158, 0x64, v76
	v_dual_mul_f32 v94, v94, v77 :: v_dual_add_nc_u32 v159, 0x68, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v160, v160, s[8:11], 0 offen
	buffer_load_u16 v161, v161, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v99, v99, v77 :: v_dual_add_nc_u32 v162, 0x74, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	v_cndmask_b32_e64 v158, 0x80000000, v158, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v98, v98, v77
	v_mul_f32_e32 v100, v100, v77
	v_mul_f32_e32 v102, v102, v77
	v_mul_f32_e32 v103, v103, v77
	v_mul_f32_e32 v104, v104, v77
	v_mul_f32_e32 v106, v106, v77
	v_mul_f32_e32 v107, v107, v77
	v_mul_f32_e32 v108, v108, v77
	v_mul_f32_e32 v110, v110, v77
	v_mul_f32_e32 v111, v111, v77
	v_mul_f32_e32 v112, v112, v77
	v_mul_f32_e32 v113, v113, v77
	v_mul_f32_e32 v114, v114, v77
	v_mul_f32_e32 v115, v115, v77
	v_mul_f32_e32 v116, v116, v77
	v_mul_f32_e32 v117, v117, v77
	v_mul_f32_e32 v118, v118, v77
	v_mul_f32_e32 v119, v119, v77
	v_mul_f32_e32 v120, v120, v77
	v_mul_f32_e32 v121, v121, v77
	v_mul_f32_e32 v122, v122, v77
	v_mul_f32_e32 v123, v123, v77
	v_mul_f32_e32 v124, v124, v77
	v_mul_f32_e32 v125, v125, v77
	v_mul_f32_e32 v126, v126, v77
	v_mul_f32_e32 v127, v127, v77
	v_mul_f32_e32 v128, v128, v77
	v_mul_f32_e32 v129, v129, v77
	v_mul_f32_e32 v130, v130, v77
	v_mul_f32_e32 v131, v131, v77
	v_mul_f32_e32 v132, v132, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	s_clause 0x2
	buffer_load_u16 v157, v157, s[8:11], 0 offen
	buffer_load_u16 v158, v158, s[8:11], 0 offen
	buffer_load_u16 v159, v159, s[8:11], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v101, v101, v77
	v_mul_f32_e32 v77, v133, v77
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v133, 0x78, v76
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v133, 0x80000000, v133, s2
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v134, 16, v134
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v135, 16, v135
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v136, 16, v136
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v137, 16, v137
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v138, 16, v138
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v134, v75
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v134, 0x80, v76
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v139, 16, v139
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v135, v74
	v_fma_f32 v5, v5, v136, v73
	v_fma_f32 v6, v6, v137, v72
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v134, 0x80000000, v134, s2
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v140, 16, v140
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v138, v71
	v_fma_f32 v8, v8, v139, v70
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v143, 16, v143
	buffer_load_u16 v134, v134, s[8:11], 0 offen
	v_lshlrev_b32_e32 v78, 16, v78
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v144, 16, v144
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v148, 16, v148
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v75, v3, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v10, v140, v69
	v_fma_f32 v78, v2, v78, v51
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v2, 0x7c, v76
	v_lshlrev_b32_e32 v142, 16, v142
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v80, v80, v143, v66
	v_fma_f32 v81, v81, v144, v65
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v146, 16, v146
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x2
	buffer_load_u16 v162, v162, s[8:11], 0 offen
	buffer_load_u16 v133, v133, s[8:11], 0 offen
	buffer_load_u16 v2, v2, s[8:11], 0 offen
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v85, v85, v148, v61
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v3, v3, v3 :: v_dual_add_nc_u32 v148, 0xb8, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v150, 16, v150
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v74, v4, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v141, 16, v141
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v73, v5, s2
	v_cndmask_b32_e64 v6, v72, v6, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v145, 16, v145
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v71, v7, s2
	v_cndmask_b32_e64 v8, v70, v8, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v79, v79, v142, v67
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v147, 16, v147
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v83, v83, v146, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v8, v8, v8 :: v_dual_lshlrev_b32 v149, 16, v149
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v151, 16, v151
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	s_waitcnt vmcnt(13)
	v_dual_max_f32 v5, v5, v5 :: v_dual_lshlrev_b32 v152, 16, v152
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v69, v10, s2
	v_cndmask_b32_e64 v66, v66, v80, s2
	v_cndmask_b32_e64 v65, v65, v81, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v3, 0, v3
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v87, v87, v150, v59
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v7, v7, v7 :: v_dual_add_nc_u32 v150, 0xc0, v76
	v_max_f32_e32 v4, v4, v4
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v11, v141, v68
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v6, v6, v6
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v82, v82, v145, v64
	v_fma_f32 v84, v84, v147, v62
	v_fma_f32 v88, v88, v151, v58
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v155, 16, v155
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v51, v51, v78, s2
	v_cndmask_b32_e64 v11, v68, v11, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v67, v67, v79, s2
	v_cndmask_b32_e64 v64, v64, v82, s2
	v_cndmask_b32_e64 v63, v63, v83, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v61, v61, v85, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	s_waitcnt vmcnt(5)
	v_dual_max_f32 v79, 0, v8 :: v_dual_lshlrev_b32 v158, 16, v158
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v159, 16, v159
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v75, 0, v4
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v91, v91, v154, v55
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v154, 0xd0, v76
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v78, 0, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v96, v96, v159, v49
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v8, v65, v65 :: v_dual_add_nc_u32 v159, 0xe4, v76
	v_max_f32_e32 v4, v10, v10
	v_max_f32_e32 v7, v66, v66
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v161, 16, v161
	v_add_nc_u32_e32 v135, 0x84, v76
	v_add_nc_u32_e32 v136, 0x88, v76
	v_add_nc_u32_e32 v137, 0x8c, v76
	v_add_nc_u32_e32 v138, 0x90, v76
	v_add_nc_u32_e32 v139, 0x94, v76
	v_add_nc_u32_e32 v140, 0x98, v76
	v_add_nc_u32_e32 v141, 0x9c, v76
	v_add_nc_u32_e32 v142, 0xa0, v76
	v_add_nc_u32_e32 v143, 0xa4, v76
	v_add_nc_u32_e32 v144, 0xa8, v76
	v_add_nc_u32_e32 v145, 0xac, v76
	v_add_nc_u32_e32 v146, 0xb0, v76
	v_add_nc_u32_e32 v147, 0xb4, v76
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v86, v86, v149, v60
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v149, 0xbc, v76
	v_add_nc_u32_e32 v151, 0xc4, v76
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v89, v89, v152, v57
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v152, 0xc8, v76
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v90, v90, v153, v56
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v153, 0xcc, v76
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v92, v92, v155, v54
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v155, 0xd4, v76
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v93, v93, v156, v53
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v156, 0xd8, v76
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v94, v94, v157, v52
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v157, 0xdc, v76
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v95, v95, v158, v50
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v158, 0xe0, v76
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v97, v97, v160, v48
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v160, 0xe8, v76
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v62, v62, v84, s2
	v_cndmask_b32_e64 v58, v58, v88, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v80, 0, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v98, v98, v161, v47
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v161, 0xec, v76
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v7, v61, v61
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	v_cndmask_b32_e64 v136, 0x80000000, v136, s2
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	v_cndmask_b32_e64 v158, 0x80000000, v158, s2
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v60, v60, v86, s2
	v_cndmask_b32_e64 v59, v59, v87, s2
	v_cndmask_b32_e64 v56, v56, v90, s2
	v_cndmask_b32_e64 v55, v55, v91, s2
	v_cndmask_b32_e64 v57, v57, v89, s2
	v_cndmask_b32_e64 v53, v53, v93, s2
	v_cndmask_b32_e64 v50, v50, v95, s2
	v_cndmask_b32_e64 v54, v54, v92, s2
	v_cndmask_b32_e64 v52, v52, v94, s2
	v_cndmask_b32_e64 v49, v49, v96, s2
	v_cndmask_b32_e64 v47, v47, v98, s2
	v_cndmask_b32_e64 v48, v48, v97, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v65, 0, v4
	v_max_f32_e32 v4, v64, v64
	v_max_f32_e32 v81, 0, v8
	v_max_f32_e32 v8, v60, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v60, 0, v4
	v_max_f32_e32 v4, v59, v59
	v_max_f32_e32 v64, 0, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v8, v55, v55 :: v_dual_max_f32 v55, 0, v4
	v_dual_max_f32 v4, v54, v54 :: v_dual_max_f32 v59, 0, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v8, v49, v49 :: v_dual_mul_f32 v55, v55, v55
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v59, v59, v59 :: v_dual_max_f32 v54, 0, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v162, 16, v162
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v133, 16, v133
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v99, v99, v162, v46
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v162, 0xf0, v76
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v100, v100, v133, v45
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v133, 0xf4, v76
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v101, v101, v2, v44
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v2, 0xf8, v76
	v_add_nc_u32_e32 v76, 0xfc, v76
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v133, 0x80000000, v133, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v45, v45, v100, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	s_clause 0x1e
	buffer_load_u16 v135, v135, s[8:11], 0 offen
	buffer_load_u16 v136, v136, s[8:11], 0 offen
	buffer_load_u16 v137, v137, s[8:11], 0 offen
	buffer_load_u16 v138, v138, s[8:11], 0 offen
	buffer_load_u16 v139, v139, s[8:11], 0 offen
	buffer_load_u16 v140, v140, s[8:11], 0 offen
	buffer_load_u16 v141, v141, s[8:11], 0 offen
	buffer_load_u16 v142, v142, s[8:11], 0 offen
	buffer_load_u16 v143, v143, s[8:11], 0 offen
	buffer_load_u16 v144, v144, s[8:11], 0 offen
	buffer_load_u16 v145, v145, s[8:11], 0 offen
	buffer_load_u16 v146, v146, s[8:11], 0 offen
	buffer_load_u16 v147, v147, s[8:11], 0 offen
	buffer_load_u16 v148, v148, s[8:11], 0 offen
	buffer_load_u16 v149, v149, s[8:11], 0 offen
	buffer_load_u16 v150, v150, s[8:11], 0 offen
	buffer_load_u16 v151, v151, s[8:11], 0 offen
	buffer_load_u16 v152, v152, s[8:11], 0 offen
	buffer_load_u16 v153, v153, s[8:11], 0 offen
	buffer_load_u16 v154, v154, s[8:11], 0 offen
	buffer_load_u16 v155, v155, s[8:11], 0 offen
	buffer_load_u16 v156, v156, s[8:11], 0 offen
	buffer_load_u16 v157, v157, s[8:11], 0 offen
	buffer_load_u16 v158, v158, s[8:11], 0 offen
	buffer_load_u16 v159, v159, s[8:11], 0 offen
	buffer_load_u16 v160, v160, s[8:11], 0 offen
	buffer_load_u16 v161, v161, s[8:11], 0 offen
	buffer_load_u16 v162, v162, s[8:11], 0 offen
	buffer_load_u16 v133, v133, s[8:11], 0 offen
	buffer_load_u16 v163, v2, s[8:11], 0 offen
	buffer_load_u16 v76, v76, s[8:11], 0 offen
	v_lshlrev_b32_e32 v2, 16, v134
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v46, v46, v99, s2
	v_cndmask_b32_e64 v44, v44, v101, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v8, v44, v44
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v134, 16, v135
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v103, v103, v134, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v42, v103, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v133, 16, v133
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v131, v131, v133, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v76, v77, v76, v12
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v77, 0, v6 :: v_dual_max_f32 v6, v67, v67
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v14, v131, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v73, v12, v76, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v76, 0, v5 :: v_dual_max_f32 v5, v11, v11
	v_max_f32_e32 v67, 0, v6
	v_dual_max_f32 v6, v62, v62 :: v_dual_lshlrev_b32 v135, 16, v136
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v136, 16, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v66, 0, v5 :: v_dual_max_f32 v5, v63, v63
	v_max_f32_e32 v63, 0, v7
	v_max_f32_e32 v7, v56, v56
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v137, 16, v138
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v61, 0, v5 :: v_dual_lshlrev_b32 v138, 16, v139
	v_max_f32_e32 v5, v58, v58
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v139, 16, v140
	v_lshlrev_b32_e32 v140, 16, v141
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v58, 0, v7 :: v_dual_lshlrev_b32 v141, 16, v142
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v105, v105, v136, v40
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v62, 0, v6
	v_max_f32_e32 v6, v57, v57
	v_max_f32_e32 v56, 0, v5
	v_max_f32_e32 v5, v53, v53
	v_dual_max_f32 v7, v50, v50 :: v_dual_lshlrev_b32 v142, 16, v143
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v143, 16, v144
	v_lshlrev_b32_e32 v144, 16, v145
	v_lshlrev_b32_e32 v145, 16, v146
	v_lshlrev_b32_e32 v146, 16, v147
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v50, 0, v5 :: v_dual_lshlrev_b32 v147, 16, v148
	v_dual_max_f32 v5, v47, v47 :: v_dual_lshlrev_b32 v148, 16, v149
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v149, 16, v150
	v_lshlrev_b32_e32 v150, 16, v151
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v110, v110, v141, v35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v40, v105, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v57, 0, v6 :: v_dual_max_f32 v6, v52, v52
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v151, 16, v152
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v53, 0, v7
	v_max_f32_e32 v7, v45, v45
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v152, 16, v153
	v_lshlrev_b32_e32 v153, 16, v154
	v_lshlrev_b32_e32 v154, 16, v155
	v_lshlrev_b32_e32 v155, 16, v156
	v_lshlrev_b32_e32 v156, 16, v157
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v108, v108, v139, v37
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v35, v110, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v52, 0, v6
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v120, v120, v151, v25
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v47, 0, v7
	v_max_f32_e32 v7, v40, v40
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v102, v102, v2, v43
	v_fma_f32 v104, v104, v135, v41
	v_fma_f32 v115, v115, v146, v30
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v37, v108, s2
	v_cndmask_b32_e64 v25, v25, v120, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v45, 0, v5
	v_dual_max_f32 v5, v42, v42 :: v_dual_max_f32 v42, 0, v7
	v_max_f32_e32 v7, v35, v35
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v106, v106, v137, v39
	v_fma_f32 v107, v107, v138, v38
	v_fma_f32 v113, v113, v144, v32
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v43, v43, v102, s2
	v_cndmask_b32_e64 v41, v41, v104, s2
	v_cndmask_b32_e64 v30, v30, v115, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v6, v46, v46
	v_max_f32_e32 v40, 0, v5
	v_max_f32_e32 v5, v37, v37
	v_max_f32_e32 v37, 0, v7
	v_max_f32_e32 v49, 0, v4
	v_dual_max_f32 v4, v48, v48 :: v_dual_lshlrev_b32 v157, 16, v158
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v111, v111, v142, v34
	v_fma_f32 v112, v112, v143, v33
	v_fma_f32 v118, v118, v149, v27
	v_fma_f32 v125, v125, v156, v20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v39, v106, s2
	v_cndmask_b32_e64 v38, v38, v107, s2
	v_cndmask_b32_e64 v32, v32, v113, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v44, 0, v4
	v_max_f32_e32 v46, 0, v6
	v_max_f32_e32 v4, v43, v43
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v158, 16, v159
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v6, v41, v41 :: v_dual_lshlrev_b32 v159, 16, v160
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v160, 16, v161
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v48, 0, v8 :: v_dual_lshlrev_b32 v161, 16, v162
	v_max_f32_e32 v7, v30, v30
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v116, v116, v147, v29
	v_fma_f32 v117, v117, v148, v28
	v_fma_f32 v124, v124, v155, v21
	v_fma_f32 v130, v130, v161, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v34, v111, s2
	v_cndmask_b32_e64 v33, v33, v112, s2
	v_cndmask_b32_e64 v68, v27, v118, s2
	v_cndmask_b32_e64 v20, v20, v125, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v8, v39, v39 :: v_dual_max_f32 v39, 0, v4
	v_max_f32_e32 v35, 0, v5
	v_dual_max_f32 v5, v32, v32 :: v_dual_max_f32 v32, 0, v7
	v_dual_max_f32 v7, v25, v25 :: v_dual_max_f32 v4, v38, v38
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v109, v109, v140, v36
	v_fma_f32 v121, v121, v152, v24
	v_fma_f32 v122, v122, v153, v23
	v_fma_f32 v127, v127, v158, v18
	v_fma_f32 v128, v128, v159, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v29, v116, s2
	v_cndmask_b32_e64 v28, v28, v117, s2
	v_cndmask_b32_e64 v70, v21, v124, s2
	v_cndmask_b32_e64 v15, v15, v130, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v30, 0, v5 :: v_dual_max_f32 v5, v68, v68
	v_dual_max_f32 v43, 0, v8 :: v_dual_lshlrev_b32 v162, 16, v163
	v_dual_max_f32 v8, v34, v34 :: v_dual_max_f32 v21, 0, v7
	v_max_f32_e32 v34, 0, v4
	v_dual_max_f32 v4, v33, v33 :: v_dual_max_f32 v7, v20, v20
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v114, v114, v145, v31
	v_fma_f32 v123, v123, v154, v22
	v_fma_f32 v126, v126, v157, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v36, v109, s2
	v_cndmask_b32_e64 v24, v24, v121, s2
	v_cndmask_b32_e64 v23, v23, v122, s2
	v_cndmask_b32_e64 v71, v18, v127, s2
	v_cndmask_b32_e64 v17, v17, v128, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v38, 0, v8
	v_max_f32_e32 v8, v29, v29
	v_max_f32_e32 v18, 0, v7
	v_max_f32_e32 v7, v15, v15
	v_max_f32_e32 v29, 0, v4
	v_max_f32_e32 v4, v28, v28
	v_max_f32_e32 v10, v14, v14
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v14, v3, v3
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v119, v119, v150, v26
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v31, v114, s2
	v_cndmask_b32_e64 v69, v22, v123, s2
	v_cndmask_b32_e64 v19, v19, v126, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v41, 0, v6
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v129, v129, v160, v16
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v6, v36, v36
	v_max_f32_e32 v27, 0, v8
	v_max_f32_e32 v8, v24, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v14.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v28, 0, v4
	v_max_f32_e32 v4, v23, v23
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v26, v119, s2
	v_cndmask_b32_e64 v72, v16, v129, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v16, v51, v51
	v_max_f32_e32 v22, 0, v8
	v_max_f32_e32 v8, v19, v19
	v_max_f32_e32 v36, 0, v6
	v_max_f32_e32 v20, 0, v4
	v_max_f32_e32 v4, v71, v71
	v_max_f32_e32 v6, v31, v31
	v_max_f32_e32 v74, 0, v16
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v33, v76, v76
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v132, v132, v162, v13
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v15, 0, v4
	v_max_f32_e32 v31, 0, v6
	v_max_f32_e32 v6, v26, v26
	v_max_f32_e32 v26, 0, v5
	v_max_f32_e32 v5, v69, v69
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.h, 0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v51, v13, v132, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v25, 0, v6
	v_max_f32_e32 v13, 0, v8
	v_max_f32_e32 v19, 0, v5
	v_max_f32_e32 v5, v17, v17
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v17, v74, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.h, v4.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v8, 0, v7 :: v_dual_mul_f32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v11, 0, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v17.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v5, v51, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v3
	v_mov_b16_e32 v51.h, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v63, v63, v63 :: v_dual_and_b32 v24, 1, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v33.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v6, v70, v70 :: v_dual_max_f32 v7, 0, v5
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v68, v79, v79
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v17, v24, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v24, v77, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v16, 0, v6
	v_max_f32_e32 v6, v72, v72
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v60, v60, v60
	v_dual_mul_f32 v62, v62, v62 :: v_dual_mul_f32 v49, v49, v49
	v_mul_f32_e32 v58, v58, v58
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v12, 0, v6
	v_max_f32_e32 v6, v73, v73
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v53, v53, v53
	v_dual_mul_f32 v45, v45, v45 :: v_dual_mul_f32 v56, v56, v56
	v_dual_mul_f32 v50, v50, v50 :: v_dual_mul_f32 v47, v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v5, 0, v6
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v6, s7, v9
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v9, v75, v75 :: v_dual_mul_f32 v52, v52, v52
	v_dual_mul_f32 v44, v44, v44 :: v_dual_mul_f32 v39, v39, v39
	v_mul_f32_e32 v46, v46, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v51.l, v9.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v41, v41, v41
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v3, s33, s6, v6
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v14, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 188 19 is_stmt 1              ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v23, v78, v78 :: v_dual_and_b32 v14, 1, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v17.h
	v_and_b32_e32 v17, 1, v4
	v_mov_b16_e32 v51.l, v24.h
	v_mov_b16_e32 v4.l, v23.h
	v_add3_u32 v14, v9, v14, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v43, v43, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v33, v17, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v17, v65, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v51, 1, v51
	v_and_b32_e32 v33, 1, v4
	v_mov_b16_e32 v65.l, v68.h
	v_mov_b16_e32 v65.h, v4.h
	v_mov_b16_e32 v4.l, v17.h
	v_add3_u32 v24, v24, v51, 0x7fff
	v_mov_b16_e32 v9.l, v14.h
	v_add3_u32 v14, v23, v33, 0x7fff
	v_and_b32_e32 v23, 1, v65
	v_and_b32_e32 v33, 1, v4
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v51, v66, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v14.l, v24.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v24, v67, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v68, v23, 0x7fff
	v_add3_u32 v17, v17, v33, 0x7fff
	v_mov_b16_e32 v33.l, v51.h
	v_mov_b16_e32 v33.h, v4.h
	v_mov_b16_e32 v4.l, v24.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v66, v80, v80 :: v_dual_mul_f32 v65, v81, v81
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v23.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v23, 1, v33
	v_and_b32_e32 v33, 1, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v67.l, v66.h
	v_mov_b16_e32 v67.h, v4.h
	v_mov_b16_e32 v4.l, v65.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v10, 0, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v51, v23, 0x7fff
	v_add3_u32 v23, v24, v33, 0x7fff
	v_and_b32_e32 v33, 1, v67
	v_mov_b16_e32 v67.l, v60.h
	v_and_b32_e32 v24, 1, v4
	v_mov_b16_e32 v23.l, v51.h
	v_mov_b16_e32 v4.l, v61.h
	v_add3_u32 v33, v66, v33, 0x7fff
	v_and_b32_e32 v51, 1, v67
	v_add3_u32 v24, v65, v24, 0x7fff
	v_mov_b16_e32 v65.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v35, v35, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v33.h
	v_and_b32_e32 v33, 1, v4
	v_add3_u32 v51, v60, v51, 0x7fff
	v_mov_b16_e32 v4.l, v63.h
	v_mov_b16_e32 v60.l, v62.h
	v_mov_b16_e32 v60.h, v4.h
	v_add3_u32 v33, v61, v33, 0x7fff
	v_mov_b16_e32 v33.l, v51.h
	v_and_b32_e32 v61, 1, v4
	v_mov_b16_e32 v4.l, v55.h
	v_and_b32_e32 v60, 1, v60
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v48, v48, v48 :: v_dual_mul_f32 v37, v37, v37
	v_dual_mul_f32 v40, v40, v40 :: v_dual_mul_f32 v29, v29, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v51, v62, v60, 0x7fff
	v_and_b32_e32 v62, 1, v4
	v_add3_u32 v60, v63, v61, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v31, v31, v31 :: v_dual_mul_f32 v36, v36, v36
	v_mul_f32_e32 v25, v25, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v55, v55, v62, 0x7fff
	v_mov_b16_e32 v62.l, v58.h
	v_mov_b16_e32 v62.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v64, v64, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v60.l, v51.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v51, v57, v57
	v_dual_mul_f32 v27, v27, v27 :: v_dual_mul_f32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v65.l, v64.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v19, v19, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v51.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v21, v21, v21 :: v_dual_mul_f32 v30, v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v65
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v13, v13, v13
	v_dual_mul_f32 v5, v5, v5 :: v_dual_mul_f32 v26, v26, v26
	v_mul_f32_e32 v11, v11, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v57, v64, v61, 0x7fff
	v_mov_b16_e32 v61.l, v56.h
	v_mov_b16_e32 v61.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v28, v28, v28 :: v_dual_mul_f32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v55.l, v57.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v22, v22, v22 :: v_dual_and_b32 v57, 1, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v4
	v_mov_b16_e32 v4.l, v59.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v18, v18, v18
	v_mul_f32_e32 v10, v10, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v56, v56, v57, 0x7fff
	v_add3_u32 v51, v51, v61, 0x7fff
	v_and_b32_e32 v61, 1, v62
	v_mov_b16_e32 v62.l, v49.h
	v_and_b32_e32 v57, 1, v4
	v_mov_b16_e32 v51.l, v56.h
	v_mov_b16_e32 v4.l, v50.h
	v_add3_u32 v56, v58, v61, 0x7fff
	v_and_b32_e32 v58, 1, v62
	v_add3_u32 v57, v59, v57, 0x7fff
	v_mov_b16_e32 v59.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v20, v20, v20 :: v_dual_mul_f32 v7, v7, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.l, v56.h
	v_and_b32_e32 v56, 1, v4
	v_add3_u32 v49, v49, v58, 0x7fff
	v_mov_b16_e32 v4.l, v53.h
	v_mov_b16_e32 v58.l, v52.h
	v_mov_b16_e32 v58.h, v4.h
	v_add3_u32 v50, v50, v56, 0x7fff
	v_mov_b16_e32 v50.l, v49.h
	v_and_b32_e32 v56, 1, v4
	v_mov_b16_e32 v4.l, v44.h
	v_and_b32_e32 v58, 1, v58
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v12, v12, v12
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v2, 1, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	v_add3_u32 v49, v52, v58, 0x7fff
	v_add3_u32 v52, v53, v56, 0x7fff
	v_and_b32_e32 v56, 1, v4
	v_mov_b16_e32 v4.l, v46.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v54, v54, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v52.l, v49.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v44, v56, 0x7fff
	v_mov_b16_e32 v59.l, v54.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v53, 1, v59
	v_add3_u32 v49, v54, v53, 0x7fff
	v_mov_b16_e32 v53.l, v45.h
	v_mov_b16_e32 v53.h, v4.h
	v_mov_b16_e32 v54.l, v47.h
	v_mov_b16_e32 v54.h, v4.h
	v_mov_b16_e32 v44.l, v49.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v49, 1, v53
	v_and_b32_e32 v53, 1, v4
	v_mov_b16_e32 v4.l, v48.h
	v_add3_u32 v45, v45, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v49, 1, v4
	v_add3_u32 v46, v46, v53, 0x7fff
	v_and_b32_e32 v53, 1, v54
	v_mov_b16_e32 v54.l, v39.h
	v_mov_b16_e32 v46.l, v45.h
	v_mov_b16_e32 v4.l, v40.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v42, v42, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v45, v47, v53, 0x7fff
	v_add3_u32 v47, v48, v49, 0x7fff
	v_and_b32_e32 v48, 1, v54
	v_mov_b16_e32 v49.l, v43.h
	v_mov_b16_e32 v49.h, v4.h
	v_mov_b16_e32 v47.l, v45.h
	v_and_b32_e32 v45, 1, v4
	v_add3_u32 v39, v39, v48, 0x7fff
	v_mov_b16_e32 v4.l, v42.h
	v_mov_b16_e32 v48.l, v41.h
	v_mov_b16_e32 v48.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v34, v34, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v40, v45, 0x7fff
	v_and_b32_e32 v45, 1, v4
	v_mov_b16_e32 v40.l, v39.h
	v_and_b32_e32 v48, 1, v48
	v_mov_b16_e32 v4.l, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v39, v41, v48, 0x7fff
	v_add3_u32 v41, v42, v45, 0x7fff
	v_and_b32_e32 v42, 1, v49
	v_and_b32_e32 v45, 1, v4
	v_mov_b16_e32 v4.l, v36.h
	v_mov_b16_e32 v41.l, v39.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v39, v43, v42, 0x7fff
	v_mov_b16_e32 v42.l, v35.h
	v_mov_b16_e32 v42.h, v4.h
	v_add3_u32 v34, v34, v45, 0x7fff
	v_mov_b16_e32 v43.l, v37.h
	v_mov_b16_e32 v34.l, v39.h
	v_mov_b16_e32 v43.h, v4.h
	v_and_b32_e32 v39, 1, v42
	v_and_b32_e32 v42, 1, v4
	v_mov_b16_e32 v4.l, v38.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v35, v35, v39, 0x7fff
	v_add3_u32 v36, v36, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_and_b32_e32 v39, 1, v4
	v_and_b32_e32 v42, 1, v43
	v_mov_b16_e32 v43.l, v29.h
	v_mov_b16_e32 v36.l, v35.h
	v_mov_b16_e32 v4.l, v30.h
	v_add3_u32 v35, v37, v42, 0x7fff
	v_add3_u32 v37, v38, v39, 0x7fff
	v_and_b32_e32 v38, 1, v43
	v_mov_b16_e32 v39.l, v27.h
	v_mov_b16_e32 v39.h, v4.h
	v_mov_b16_e32 v37.l, v35.h
	v_and_b32_e32 v35, 1, v4
	v_add3_u32 v29, v29, v38, 0x7fff
	v_mov_b16_e32 v38.l, v31.h
	v_mov_b16_e32 v38.h, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v30, v30, v35, 0x7fff
	v_mov_b16_e32 v30.l, v29.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v29, v31, v38, 0x7fff
	v_mov_b16_e32 v29.l, v26.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v32, v32, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v32.h
	v_and_b32_e32 v35, 1, v4
	v_mov_b16_e32 v4.l, v28.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v31, v32, v35, 0x7fff
	v_and_b32_e32 v32, 1, v39
	v_and_b32_e32 v35, 1, v4
	v_mov_b16_e32 v31.l, v29.h
	v_mov_b16_e32 v29.h, v4.h
	v_mov_b16_e32 v4.l, v25.h
	v_add3_u32 v27, v27, v32, 0x7fff
	v_add3_u32 v28, v28, v35, 0x7fff
	v_mov_b16_e32 v32.l, v21.h
	v_mov_b16_e32 v32.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v8, v8, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.l, v27.h
	v_and_b32_e32 v27, 1, v29
	v_and_b32_e32 v29, 1, v4
	v_mov_b16_e32 v4.l, v22.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v35, v28, v30, vcc_lo
	v_add3_u32 v26, v26, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v25, v25, v29, 0x7fff
	v_and_b32_e32 v29, 1, v32
	v_and_b32_e32 v27, 1, v4
	v_mov_b16_e32 v4.l, v19.h
	v_mov_b16_e32 v32.l, v20.h
	v_mov_b16_e32 v25.l, v26.h
	v_add3_u32 v21, v21, v29, 0x7fff
	v_add3_u32 v22, v22, v27, 0x7fff
	v_mov_b16_e32 v27.l, v13.h
	v_and_b32_e32 v26, 1, v32
	v_mov_b16_e32 v27.h, v4.h
	v_mov_b16_e32 v22.l, v21.h
	v_and_b32_e32 v21, 1, v4
	v_mov_b16_e32 v4.l, v18.h
	v_add3_u32 v20, v20, v26, 0x7fff
	v_mov_b16_e32 v26.h, v4.h
	v_cndmask_b32_e32 v29, v40, v34, vcc_lo
	v_add3_u32 v19, v19, v21, 0x7fff
	v_and_b32_e32 v21, 1, v4
	v_mov_b16_e32 v4.l, v15.h
	v_mov_b16_e32 v19.l, v20.h
	v_and_b32_e32 v20, 1, v27
	v_dual_cndmask_b32 v27, v34, v40 :: v_dual_cndmask_b32 v32, v36, v41
	v_add3_u32 v18, v18, v21, 0x7fff
	v_and_b32_e32 v21, 1, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v13, v13, v20, 0x7fff
	v_mov_b16_e32 v4.l, v12.h
	v_mov_b16_e32 v20.h, v4.h
	v_cndmask_b32_e32 v34, v31, v37, vcc_lo
	v_add3_u32 v15, v15, v21, 0x7fff
	v_mov_b16_e32 v21.l, v7.h
	v_mov_b16_e32 v21.h, v4.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v16, v16, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v15.l, v13.h
	v_and_b32_e32 v13, 1, v4
	v_mov_b16_e32 v4.l, v10.h
	v_and_b32_e32 v21, 1, v21
	v_mov_b16_e32 v26.l, v16.h
	v_cndmask_b32_e32 v31, v37, v31, vcc_lo
	v_mov_b16_e32 v20.l, v8.h
	v_cndmask_b32_e32 v28, v30, v28, vcc_lo
	v_add3_u32 v7, v7, v21, 0x7fff
	v_and_b32_e32 v26, 1, v26
	v_cndmask_b32_e32 v30, v19, v25, vcc_lo
	v_dual_cndmask_b32 v19, v25, v19 :: v_dual_and_b32 v20, 1, v20
	v_cndmask_b32_e32 v21, v46, v52, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v16, v16, v26, 0x7fff
	v_mov_b16_e32 v16.l, v11.h
	v_add3_u32 v8, v8, v20, 0x7fff
	v_cndmask_b32_e32 v20, v51, v50, vcc_lo
	v_cndmask_b32_e32 v26, v44, v47, vcc_lo
	v_mov_b16_e32 v18.l, v16.h
	v_mov_b16_e32 v16.h, v4.h
	v_permlanex16_b32 v31, v31, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v11, v11, v16, 0x7fff
	v_and_b32_e32 v16, 1, v4
	v_mov_b16_e32 v4.l, v5.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v10, v16, 0x7fff
	v_and_b32_e32 v4, 1, v4
	v_mov_b16_e32 v10.l, v8.h
	v_cndmask_b32_e32 v8, v23, v33, vcc_lo
	v_cndmask_b32_e32 v16, v55, v57, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v1, v5, v4, 0x7fff
	v_mov_b16_e32 v1.l, v7.h
	v_cndmask_b32_e32 v5, v14, v6, vcc_lo
	v_dual_cndmask_b32 v4, v6, v14 :: v_dual_cndmask_b32 v7, v17, v9
	v_dual_cndmask_b32 v6, v9, v17 :: v_dual_cndmask_b32 v17, v50, v51
	v_add3_u32 v12, v12, v13, 0x7fff
	v_mov_b16_e32 v12.l, v11.h
	v_cndmask_b32_e32 v9, v33, v23, vcc_lo
	v_cndmask_b32_e32 v11, v60, v24, vcc_lo
	v_cndmask_b32_e32 v13, v24, v60, vcc_lo
	v_dual_cndmask_b32 v24, v47, v44 :: v_dual_cndmask_b32 v37, v10, v15
	v_dual_cndmask_b32 v33, v41, v36 :: v_dual_cndmask_b32 v36, v18, v22
	v_cndmask_b32_e32 v18, v22, v18, vcc_lo
	v_dual_cndmask_b32 v10, v15, v10 :: v_dual_mov_b32 v15, 0x5410
	v_mov_b32_e32 v22, 0x7632
	v_dual_cndmask_b32 v38, v1, v12 :: v_dual_cndmask_b32 v1, v12, v1
	v_permlanex16_b32 v12, v4, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v4, 0x1054, v15, vcc_lo
	v_cndmask_b32_e32 v15, 0x3276, v22, vcc_lo
	v_permlanex16_b32 v22, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v23, v52, v46 :: v_dual_cndmask_b32 v14, v57, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v6, v15, 8, v15
	v_permlanex16_b32 v15, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v4, 0x540054, v4
	v_and_b32_e32 v6, 0x760076, v6
	v_permlanex16_b32 v23, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v6, v6, 4, v6
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v39, 0x5040504, v4
	v_and_b32_e32 v40, 0x7060706, v6
	v_permlanex16_b32 v41, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v22, v7, v39
	v_perm_b32 v7, v22, v7, v40
	v_perm_b32 v18, v23, v24, v39
	v_perm_b32 v19, v23, v24, v40
	v_perm_b32 v22, v29, v32, v39
	v_perm_b32 v23, v29, v32, v40
	v_and_b32_e32 v32, 0x1e0, v0
	v_perm_b32 v4, v12, v5, v39
	v_perm_b32 v5, v12, v5, v40
	v_perm_b32 v10, v13, v11, v39
	v_perm_b32 v11, v13, v11, v40
	v_perm_b32 v12, v15, v14, v39
	v_perm_b32 v13, v15, v14, v40
	v_perm_b32 v14, v16, v17, v39
	v_perm_b32 v15, v16, v17, v40
	v_perm_b32 v16, v20, v21, v39
	v_perm_b32 v17, v20, v21, v40
	v_perm_b32 v20, v26, v27, v39
	v_perm_b32 v21, v26, v27, v40
	v_perm_b32 v26, v28, v35, v39
	v_perm_b32 v27, v28, v35, v40
	v_perm_b32 v28, v33, v30, v39
	v_perm_b32 v29, v33, v30, v40
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v33, v3, v2, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v32
	v_perm_b32 v8, v25, v9, v39
	v_perm_b32 v9, v25, v9, v40
	v_perm_b32 v24, v31, v34, v39
	v_add_nc_u32_e32 v3, 32, v33
	v_add_nc_u32_e32 v32, 64, v33
	v_perm_b32 v25, v31, v34, v40
	v_cndmask_b32_e32 v34, 0x80000000, v33, vcc_lo
	v_permlanex16_b32 v43, v1, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v35, 0x80000000, v3 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	s_clause 0x2
	buffer_store_b128 v[4:7], v34, s[4:7], 0 offen
	buffer_store_b128 v[8:11], v35, s[4:7], 0 offen
	buffer_store_b128 v[12:15], v32, s[4:7], 0 offen
	v_add_nc_u32_e32 v4, 0x60, v33
	v_add_nc_u32_e32 v5, 0x80, v33
	v_add_nc_u32_e32 v6, 0xa0, v33
	v_add_nc_u32_e32 v7, 0xc0, v33
	v_add_nc_u32_e32 v8, 0xe0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_perm_b32 v30, v41, v36, v39
	v_perm_b32 v31, v41, v36, v40
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_perm_b32 v0, v42, v37, v39
	v_perm_b32 v1, v42, v37, v40
	v_perm_b32 v2, v43, v38, v39
	v_perm_b32 v3, v43, v38, v40
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[16:19], v4, s[4:7], 0 offen
	buffer_store_b128 v[20:23], v5, s[4:7], 0 offen
	buffer_store_b128 v[24:27], v6, s[4:7], 0 offen
	buffer_store_b128 v[28:31], v7, s[4:7], 0 offen
	buffer_store_b128 v[0:3], v8, s[4:7], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 168
		.amdhsa_next_free_sgpr 45
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 168
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11464
; TotalNumSgprs: 47
; NumVgprs: 168
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 168
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
	.byte	140                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     168
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
