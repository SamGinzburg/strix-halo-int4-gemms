	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s18, 63
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s19, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_lshr_b32 s6, s6, 26
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_lshr_b32 s7, s7, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s18, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s12, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s33, s12, s18
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s33
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s13, s[0:1], 0x38
	s_load_b64 s[20:21], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 208 24 is_stmt 1              ; generate_amdgcn.py:208:24
	s_lshl_b32 s34, s12, 2
	v_and_b32_e32 v8, 16, v0
	v_dual_mov_b32 v10, 0x5410 :: v_dual_lshlrev_b32 v3, 1, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshlrev_b32_e32 v7, 2, v0
	v_bfe_i32 v9, v0, 6, 1
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v4, 15, v0
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_and_b32_e32 v16, 14, v3
	v_and_b32_e32 v3, 0x37e, v3
	v_and_b32_e32 v9, 0x88, v9
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_or_b32 v23, v1, 16, v4
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_lshrrev_b32_e32 v6, 5, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v22, 3, v0
	v_and_b32_e32 v0, 0x108, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v5, 0x70, v2
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s13, 31
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v2, 0x78, v2
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s0, s13, s0
	s_mov_b32 s24, s4
	s_ashr_i32 s35, s0, 1
	v_xor_b32_e32 v3, v9, v3
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s0, s35, 15
.Ltmp12:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v25, 32, v23
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s1, s0, 31
	v_lshl_or_b32 v0, v4, 4, v0
	s_lshr_b32 s1, s1, 28
.Ltmp14:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[17:18], null, s19, v23, v[2:3]
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s0, s0, s1
.Ltmp16:
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_or_b32 v24, v1, 1, v5
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s1, s0, 4
	s_cmp_gt_i32 s13, 1
	v_cmp_eq_u32_e64 s0, 0, v8
	s_cselect_b32 s13, -1, 0
	s_abs_i32 s44, s34
	v_mov_b32_e32 v8, 0x7632
	s_cvt_f32_u32 s4, s44
	v_cndmask_b32_e64 v10, 0x1054, v10, s0
.Ltmp18:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s47, s3, 4
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x7c, v7
	v_rcp_iflag_f32_e32 v11, s4
	v_cndmask_b32_e64 v8, 0x3276, v8, s0
	v_lshl_or_b32 v10, v10, 8, v10
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[18:19], null, s19, v25, v[2:3]
	s_max_i32 s45, s1, 1
	v_lshl_or_b32 v8, v8, 8, v8
	v_and_b32_e32 v10, 0x540054, v10
	v_or_b32_e32 v2, s47, v6
	v_sub_nc_u32_e32 v34, s35, v6
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s4, v11
	v_and_b32_e32 v8, 0x760076, v8
	v_xor_b32_e32 v9, 8, v0
	v_add_nc_u32_e32 v4, 0, v4
	v_lshl_or_b32 v10, v10, 4, v10
	s_mul_f32 s4, s4, 0x4f7ffffe
	v_lshl_or_b32 v8, v8, 4, v8
	v_cndmask_b32_e64 v6, 0, 1, s13
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_mad_u64_u32 v[19:20], null, s19, v2, v[1:2]
	s_cvt_u32_f32 s1, s4
	s_sub_i32 s4, 0, s44
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v26, 2, v24
	v_or_b32_e32 v27, 4, v24
	s_mul_i32 s4, s4, s1
	v_or_b32_e32 v28, 6, v24
	s_mul_hi_u32 s3, s1, s4
	v_or_b32_e32 v29, 8, v24
	v_or_b32_e32 v30, 10, v24
	v_or_b32_e32 v31, 12, v24
	v_or_b32_e32 v32, 14, v24
	v_sub_nc_u32_e32 v33, s35, v16
	v_and_b32_e32 v35, 0x5040504, v10
	v_and_b32_e32 v36, 0x7060706, v8
	s_add_i32 s48, s1, s3
	v_cmp_ne_u32_e64 s1, 1, v6
	v_add_nc_u32_e32 v37, 0, v3
	v_add_nc_u32_e32 v38, 0, v0
	v_add_nc_u32_e32 v39, 0, v9
	v_add_nc_u32_e32 v40, 0, v7
	v_add_nc_u32_e32 v41, v4, v5
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s5, 0xffff
	s_and_b32 s29, s7, 0xffff
	s_mov_b32 s28, s6
	s_and_b32 s41, s11, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_bfe_i32 s46, s12, 0x1001d
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s49, s19, 4
	s_mov_b32 s50, 0x76543210
	s_mov_b32 s36, s8
	s_mov_b32 s37, s9
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s40, s10
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s4, s4, 7
	.loc	1 242 26                        ; generate_amdgcn.py:242:26
	v_or_b32_e32 v9, s3, v23
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v12, s4, v26
	v_or_b32_e32 v11, s4, v24
	v_or_b32_e32 v14, s4, v28
	v_or_b32_e32 v13, s4, v27
	v_or_b32_e32 v15, s4, v29
	v_or_b32_e32 v47, s4, v30
	v_or_b32_e32 v48, s4, v31
	v_or_b32_e32 v49, s4, v32
	.loc	1 243 18 is_stmt 0              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v12, 1, v12
	v_lshlrev_b32_e32 v11, 1, v11
	v_lshlrev_b32_e32 v14, 1, v14
	v_lshlrev_b32_e32 v13, 1, v13
	v_lshlrev_b32_e32 v15, 1, v15
	v_lshlrev_b32_e32 v47, 1, v47
	v_lshlrev_b32_e32 v48, 1, v48
	v_lshlrev_b32_e32 v49, 1, v49
	s_clause 0x7
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	buffer_load_u16 v11, v11, s[40:43], 0 offen
	buffer_load_u16 v14, v14, s[40:43], 0 offen
	buffer_load_u16 v13, v13, s[40:43], 0 offen
	buffer_load_u16 v47, v47, s[40:43], 0 offen
	buffer_load_u16 v15, v15, s[40:43], 0 offen
	buffer_load_u16 v49, v49, s[40:43], 0 offen
	buffer_load_u16 v48, v48, s[40:43], 0 offen
	.loc	1 242 26 is_stmt 1              ; generate_amdgcn.py:242:26
	v_or_b32_e32 v10, s3, v25
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v50.h, 0
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	s_mul_i32 s30, s3, s19
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s30, s30, s4
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s33
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v52.h, v50.h
	v_mov_b16_e32 v55.h, v50.h
	v_mov_b16_e32 v53.h, v50.h
	v_mov_b16_e32 v54.h, v50.h
	v_add_lshl_u32 v51, s30, v17, 1
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v47, 16, v47
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v9, 1, v9
	v_lshlrev_b32_e32 v10, 1, v10
	s_clause 0x1
	buffer_load_u16 v9, v9, s[36:39], 0 offen
	buffer_load_u16 v10, v10, s[36:39], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v48, 16, v48
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v56, v11, v9
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v46, v56, v46
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v61, v47, v9 :: v_dual_lshlrev_b32 v10, 16, v10
	v_mul_f32_e32 v62, v48, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v11, v10, v11
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v47, v10, v47
	v_dual_mul_f32 v57, v12, v9 :: v_dual_mul_f32 v12, v10, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v8, v11, v8
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v58, v13, v9
	v_mul_f32_e32 v13, v10, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v6, v12, v6 :: v_dual_lshlrev_b32 v15, 16, v15
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v52.l, v8.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v11, v58, v44
	v_mul_f32_e32 v4, v13, v4
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v60, v15, v9 :: v_dual_mul_f32 v15, v10, v15
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v50.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v53.l, v4.h
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v59, v14, v9
	v_dual_mul_f32 v14, v10, v14 :: v_dual_lshlrev_b32 v49, 16, v49
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v45, v57, v45
	v_mul_f32_e32 v3, v47, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v12, v59, v43 :: v_dual_mul_f32 v9, v49, v9
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v49, v10, v49
	v_mul_f32_e32 v10, v10, v48
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v2, v14, v2
	v_mul_f32_e32 v14, v61, v21
	v_mul_f32_e32 v7, v9, v7
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_bfe_u32 v9, v46, 16, 1
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v1, v10, v1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v10, v45, 16, 1
	v_cmp_o_f32_e64 s3, v45, v45
	v_cmp_o_f32_e64 s6, v11, v11
	v_add3_u32 v9, v46, v9, 0x7fff
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v13, v60, v42 :: v_dual_and_b32 v46, 1, v52
	v_mul_f32_e32 v0, v49, v0
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v55.l, v1.h
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_mul_f32_e32 v5, v15, v5
	v_mul_f32_e32 v15, v62, v20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_bfe_u32 v20, v11, 16, 1
	v_bfe_u32 v42, v13, 16, 1
	v_bfe_u32 v21, v12, 16, 1
	v_cmp_o_f32_e64 s10, v13, v13
	v_add3_u32 v10, v45, v10, 0x7fff
	v_and_b32_e32 v45, 1, v50
	v_add3_u32 v11, v11, v20, 0x7fff
	v_mov_b16_e32 v50.l, v2.h
	v_add3_u32 v13, v13, v42, 0x7fff
	v_and_b32_e32 v42, 1, v55
	v_mov_b16_e32 v54.l, v5.h
	v_cmp_o_f32_e64 s7, v12, v12
	v_add3_u32 v12, v12, v21, 0x7fff
	v_and_b32_e32 v20, 1, v53
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s6
	v_and_b32_e32 v21, 1, v54
	v_and_b32_e32 v11, 1, v50
	v_mov_b16_e32 v50.l, v3.h
	v_bfe_u32 v43, v14, 16, 1
	v_cmp_o_f32_e64 s13, v5, v5
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s10
	v_add3_u32 v5, v5, v21, 0x7fff
	v_and_b32_e32 v13, 1, v50
	v_mov_b16_e32 v50.l, v0.h
	v_cmp_o_f32_e64 s9, v4, v4
	v_bfe_u32 v44, v15, 16, 1
	v_bfe_u32 v47, v7, 16, 1
	v_add3_u32 v4, v4, v20, 0x7fff
	v_cmp_o_f32_e64 s11, v14, v14
	v_add3_u32 v14, v14, v43, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s13
	v_and_b32_e32 v5, 1, v50
	v_cmp_o_f32_e64 s14, v15, v15
	v_cmp_o_f32_e64 s15, v7, v7
	v_add3_u32 v15, v15, v44, 0x7fff
	v_add3_u32 v7, v7, v47, 0x7fff
	v_cmp_o_f32_e64 s4, v6, v6
	v_cmp_o_f32_e64 s5, v8, v8
	v_cmp_o_f32_e64 s8, v2, v2
	v_cmp_o_f32_e64 s12, v3, v3
	v_cmp_o_f32_e64 s16, v0, v0
	v_cmp_o_f32_e64 s17, v1, v1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s3
	v_add3_u32 v8, v8, v46, 0x7fff
	v_add3_u32 v6, v6, v45, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s7
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s11
	v_add3_u32 v1, v1, v42, 0x7fff
	v_add3_u32 v2, v2, v11, 0x7fff
	v_add3_u32 v3, v3, v13, 0x7fff
	v_add3_u32 v0, v0, v5, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v15.h, s14
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s15
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s4
	v_cndmask_b16 v6.l, 0x7fff, v8.h, s5
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s9
	v_cndmask_b16 v8.l, 0x7fff, v1.h, s17
	v_cndmask_b32_e64 v1, v12, v9, s0
	v_cndmask_b32_e64 v9, v9, v12, s0
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s8
	v_cndmask_b16 v4.h, 0x7fff, v3.h, s12
	v_cndmask_b16 v8.h, 0x7fff, v0.h, s16
	v_cndmask_b32_e64 v5, v10, v7, s0
	v_permlanex16_b32 v3, v9, s50, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, v7, v10, s0
	v_cndmask_b32_e64 v9, v6, v4, s0
	v_cndmask_b32_e64 v10, v2, v8, s0
	v_permlanex16_b32 v5, v5, s50, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v6, v4, v6, s0
	v_cndmask_b32_e64 v8, v8, v2, s0
	v_permlanex16_b32 v9, v9, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v3, v1, v35
	v_perm_b32 v1, v3, v1, v36
	v_perm_b32 v2, v5, v7, v35
	v_perm_b32 v3, v5, v7, v36
	v_perm_b32 v4, v9, v6, v35
	v_perm_b32 v5, v9, v6, v36
	v_perm_b32 v6, v10, v8, v35
	v_perm_b32 v7, v10, v8, v36
	v_add_lshl_u32 v8, s30, v18, 1
	s_clause 0x1
	buffer_store_b128 v[0:3], v51, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v8, s[20:23], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s3, s2
	s_ashr_i32 s5, s2, 31
	s_mul_hi_u32 s4, s3, s48
	s_xor_b32 s5, s5, s46
	s_mul_i32 s6, s4, s44
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	s_sub_i32 s3, s3, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s3, s44
	s_cmp_ge_u32 s3, s44
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s3, s7, s3
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s3, s44
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	s_cselect_b32 s3, s6, s4
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v21, 0
	s_xor_b32 s3, s3, s5
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v43, 0
	s_sub_i32 s3, s3, s5
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s7, s3, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s3, s3, s34
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s4, s18, s7
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s3, s2, s3
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s8, s4, 4
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s9, s3
	s_abs_i32 s4, s8
	v_mov_b32_e32 v44, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v1, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
	v_mov_b32_e32 v0, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s9, s5
	s_xor_b32 s5, s3, s8
	s_mul_i32 s10, s6, s4
	s_ashr_i32 s5, s5, 31
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s9, s4
	s_cmp_ge_u32 s9, s4
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s9, s4
	s_cselect_b32 s4, s10, s6
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s6, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s6, s5
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s8, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s3, s3, s8
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s3, s3, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s3, s3, 6
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_add_u32 v1, s6, 7, v19
	v_mov_b32_e32 v0, 0
	v_add_nc_u32_e32 v2, s3, v22
	s_lshl_b32 s5, s5, 7
	s_mov_b32 s6, s45
	v_subrev_nc_u32_e32 v42, s5, v1
	v_mov_b32_e32 v1, v0
	v_mad_u64_u32 v[20:21], null, s35, v2, v[16:17]
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v6, v0
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v8, v0
	v_mov_b32_e32 v9, v0
	v_mov_b32_e32 v10, v0
	v_mov_b32_e32 v11, v0
	v_mov_b32_e32 v12, v0
	v_mov_b32_e32 v13, v0
	v_mov_b32_e32 v14, v0
	v_mov_b32_e32 v15, v0
	s_mov_b32 s5, s47
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 230 27 is_stmt 1              ; generate_amdgcn.py:230:27
	v_cmp_lt_i32_e32 vcc_lo, s5, v34
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	v_add_nc_u32_e32 v21, s5, v20
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_add_i32 s6, s6, -1
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	v_cndmask_b32_e32 v43, 0x80000000, v42, vcc_lo
	.loc	1 229 27                        ; generate_amdgcn.py:229:27
	v_cmp_lt_i32_e32 vcc_lo, s5, v33
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_add_nc_u32_e32 v42, s49, v42
	s_add_i32 s5, s5, 16
	s_cmp_lg_u32 s6, 0
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	buffer_load_b32 v51, v43, s[28:31], 0 offen
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	buffer_load_u16 v21, v21, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b16 v37, v21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[43:46], v38 offset1:1
	ds_load_2addr_stride64_b64 v[47:50], v39 offset1:1
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v40, v51
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	ds_load_u8 v21, v41 offset:640
	ds_load_u8 v51, v41 offset:896
	ds_load_u8 v52, v41 offset:768
	ds_load_u8 v53, v41 offset:512
	ds_load_u8 v54, v41 offset:128
	ds_load_u8 v55, v41 offset:384
	ds_load_u8 v56, v41 offset:256
	ds_load_u8 v57, v41
	ds_load_u8 v58, v41 offset:1664
	ds_load_u8 v59, v41 offset:1920
	ds_load_u8 v60, v41 offset:1792
	ds_load_u8 v61, v41 offset:1536
	ds_load_u8 v62, v41 offset:1152
	ds_load_u8 v63, v41 offset:1280
	ds_load_u8 v64, v41 offset:1024
	ds_load_u8 v65, v41 offset:1408
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v21, v53, v21, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v53, v57, v54, 0xc0c0004
	v_perm_b32 v54, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v52, v51, 16, v21
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v56, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v61, v58, 0xc0c0004
	v_lshl_or_b32 v51, v54, 16, v53
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v57, v64, v62, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v63, v65, 0xc0c0004
	v_lshl_or_b32 v54, v56, 16, v55
	v_wmma_i32_16x16x16_iu4 v[0:7], v[51:52], v[43:44], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[51:52], v[45:46], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v58, 16, v57
	v_wmma_i32_16x16x16_iu4 v[0:7], v[53:54], v[47:48], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[53:54], v[49:50], v[8:15] neg_lo:[1,1,0]
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 241 19 is_stmt 1              ; generate_amdgcn.py:241:19
	v_cvt_f32_i32_e32 v46, v0
	v_cvt_f32_i32_e32 v45, v1
	v_cvt_f32_i32_e32 v44, v2
	v_cvt_f32_i32_e32 v43, v3
	v_cvt_f32_i32_e32 v42, v4
	v_cvt_f32_i32_e32 v21, v5
	v_cvt_f32_i32_e32 v20, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v6, v9
	v_cvt_f32_i32_e32 v4, v10
	v_cvt_f32_i32_e32 v2, v11
	v_cvt_f32_i32_e32 v5, v12
	v_cvt_f32_i32_e32 v3, v13
	v_cvt_f32_i32_e32 v1, v14
	v_cvt_f32_i32_e32 v0, v15
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge7
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 66
		.amdhsa_next_free_sgpr 51
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
		.amdhsa_inst_pref_size 23
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.num_vgpr, 66
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2896
; TotalNumSgprs: 53
; NumVgprs: 66
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 8
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 66
; Occupancy: 16
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
	.byte	205                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	206                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	226                             ; DW_AT_call_line
	.byte	36                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm64_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     66
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
