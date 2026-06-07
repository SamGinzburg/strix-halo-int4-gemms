	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 31
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_lshr_b32 s6, s6, 27
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
	s_ashr_i32 s33, s4, 5
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s14, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s34, s14, s33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s34
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph8
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v2, 1, v0
	v_and_b32_e32 v6, 16, v0
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s36, s14, 2
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshlrev_b32_e32 v5, 2, v0
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_and_b32_e32 v8, 15, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v4, 0x70, v2
	v_and_b32_e32 v15, 0x78, v2
	v_mov_b32_e32 v2, 0x5410
	.loc	1 213 14                        ; generate_amdgcn.py:213:14
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v12, 4, v0
	v_and_b32_e32 v7, 0x17f, v0
	v_bfe_i32 v9, v0, 7, 1
	v_and_b32_e32 v0, 0x108, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x7c, v5
	v_and_or_b32 v13, v12, 1, v4
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_or_b32 v14, v12, 16, v8
	v_and_b32_e32 v9, 0x88, v9
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s15, 31
	v_lshl_or_b32 v0, v8, 4, v0
	s_add_i32 s0, s15, s0
	s_mov_b32 s16, s4
	s_ashr_i32 s37, s0, 1
	v_xor_b32_e32 v7, v9, v7
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s0, s37, 15
	v_sub_nc_u32_e32 v24, s37, v3
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s1, s0, 31
	v_xor_b32_e32 v11, 8, v0
	s_lshr_b32 s1, s1, 28
.Ltmp12:
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_or_b32_e32 v16, 2, v13
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_add_i32 s0, s0, s1
.Ltmp14:
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v17, 4, v13
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:226:36 ]
	s_ashr_i32 s1, s0, 4
	s_cmp_gt_i32 s15, 1
	v_cmp_eq_u32_e64 s0, 0, v6
	s_cselect_b32 s4, -1, 0
	s_abs_i32 s38, s36
	s_and_b32 s17, s5, 0xffff
	s_cvt_f32_u32 s5, s38
	v_cndmask_b32_e64 v2, 0x1054, v2, s0
	v_dual_mov_b32 v6, 0x7632 :: v_dual_add_nc_u32 v31, 0, v8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_iflag_f32_e32 v10, s5
.Ltmp16:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s41, s3, 4
	v_lshl_or_b32 v2, v2, 8, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v6, 0x3276, v6, s0
	s_max_i32 s39, s1, 1
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v18, 6, v13
	v_or_b32_e32 v19, 8, v13
	v_and_b32_e32 v2, 0x540054, v2
	v_lshl_or_b32 v6, v6, 8, v6
	v_or_b32_e32 v20, 10, v13
	v_readfirstlane_b32 s5, v10
	v_or_b32_e32 v21, 12, v13
	v_lshl_or_b32 v2, v2, 4, v2
	v_and_b32_e32 v6, 0x760076, v6
	v_or_b32_e32 v22, 14, v13
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_sub_nc_u32_e32 v23, s37, v8
	v_and_b32_e32 v25, 0x5040504, v2
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_or_b32_e32 v2, s41, v3
	s_cvt_u32_f32 s1, s5
	s_sub_i32 s5, 0, s38
	v_lshl_or_b32 v6, v6, 4, v6
	v_cndmask_b32_e64 v3, 0, 1, s4
	s_mul_i32 s5, s5, s1
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_mad_u64_u32 v[9:10], null, s35, v2, v[1:2]
	s_mul_hi_u32 s3, s1, s5
	v_and_b32_e32 v26, 0x7060706, v6
	s_add_i32 s42, s1, s3
	v_cmp_ne_u32_e64 s1, 1, v3
	v_add_nc_u32_e32 v27, 0, v7
	v_add_nc_u32_e32 v28, 0, v0
	v_add_nc_u32_e32 v29, 0, v11
	v_add_nc_u32_e32 v30, 0, v5
	v_add_nc_u32_e32 v31, v31, v4
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s21, s7, 0xffff
	s_mov_b32 s20, s6
	s_and_b32 s29, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_bfe_i32 s40, s14, 0x1001d
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s43, s35, 4
	s_mov_b32 s44, 0x76543210
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	s_mov_b32 s28, s10
	s_mov_b32 s30, s18
	s_mov_b32 s31, s19
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 242 26                        ; generate_amdgcn.py:242:26
	v_or_b32_e32 v5, s4, v14
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s10, s3, 7
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v40.h, 0
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v6, s10, v13
	v_or_b32_e32 v7, s10, v16
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	v_lshlrev_b32_e32 v34, 1, v5
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v33, s10, v17
	v_or_b32_e32 v35, s10, v18
	v_or_b32_e32 v36, s10, v19
	v_or_b32_e32 v37, s10, v20
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	.loc	1 243 26                        ; generate_amdgcn.py:243:26
	v_or_b32_e32 v38, s10, v21
	v_or_b32_e32 v39, s10, v22
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v41.h, v40.h
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v42.h, v40.h
	v_mov_b16_e32 v43.h, v40.h
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v39, 1, v39
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v44.h, v40.h
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	v_mul_lo_u32 v5, v5, s35
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s34
	.loc	1 242 18                        ; generate_amdgcn.py:242:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 243 18                        ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v6, 1, v6
	v_lshlrev_b32_e32 v7, 1, v7
	v_lshlrev_b32_e32 v33, 1, v33
	v_lshlrev_b32_e32 v35, 1, v35
	v_lshlrev_b32_e32 v36, 1, v36
	v_lshlrev_b32_e32 v38, 1, v38
	s_clause 0x7
	buffer_load_u16 v6, v6, s[28:31], 0 offen
	buffer_load_u16 v7, v7, s[28:31], 0 offen
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	buffer_load_u16 v35, v35, s[28:31], 0 offen
	buffer_load_u16 v36, v36, s[28:31], 0 offen
	buffer_load_u16 v37, v37, s[28:31], 0 offen
	buffer_load_u16 v38, v38, s[28:31], 0 offen
	buffer_load_u16 v39, v39, s[28:31], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v37, 16, v37
	v_lshlrev_b32_e32 v6, 16, v6
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_dual_mul_f32 v37, v34, v37 :: v_dual_lshlrev_b32 v38, 16, v38
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v3, v37, v3 :: v_dual_lshlrev_b32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v39, v34, v39
	v_dual_mul_f32 v6, v34, v6 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s6, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 244 20                        ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v36, v34, v36
	.loc	1 244 13 is_stmt 0              ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v0, v39, v0 :: v_dual_mul_f32 v35, v34, v35
	.loc	1 243 18 is_stmt 1              ; generate_amdgcn.py:243:18
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v4, v36, v4 :: v_dual_lshlrev_b32 v33, 16, v33
	v_mul_f32_e32 v6, v6, v32
	v_dual_mul_f32 v2, v35, v2 :: v_dual_mul_f32 v7, v34, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 244 20 is_stmt 0              ; generate_amdgcn.py:244:20
	v_mul_f32_e32 v33, v34, v33
	v_mul_f32_e32 v34, v34, v38
	.loc	1 277 13 is_stmt 1              ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v41.l, v6.h
	v_mov_b16_e32 v43.l, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 244 13                        ; generate_amdgcn.py:244:13
	v_dual_mul_f32 v7, v7, v11 :: v_dual_mul_f32 v10, v33, v10
	v_mul_f32_e32 v1, v34, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v32, 1, v41
	v_cmp_o_f32_e64 s3, v6, v6
	v_mov_b16_e32 v40.l, v7.h
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_mov_b16_e32 v42.l, v10.h
	v_mov_b16_e32 v44.l, v1.h
	v_and_b32_e32 v35, 1, v43
	v_and_b32_e32 v11, 1, v40
	v_mov_b16_e32 v40.l, v2.h
	v_and_b32_e32 v33, 1, v42
	v_and_b32_e32 v36, 1, v44
	v_add3_u32 v6, v6, v32, 0x7fff
	v_add3_u32 v7, v7, v11, 0x7fff
	v_and_b32_e32 v34, 1, v40
	v_mov_b16_e32 v40.l, v3.h
	v_cmp_o_f32_e64 s4, v2, v2
	v_cmp_o_f32_e64 s5, v10, v10
	v_cmp_o_f32_e64 s7, v4, v4
	v_cmp_o_f32_e64 s8, v0, v0
	v_and_b32_e32 v11, 1, v40
	v_mov_b16_e32 v40.l, v0.h
	v_cmp_o_f32_e64 s9, v1, v1
	v_add3_u32 v10, v10, v33, 0x7fff
	v_add3_u32 v4, v4, v35, 0x7fff
	v_add3_u32 v1, v1, v36, 0x7fff
	v_and_b32_e32 v32, 1, v40
	v_add3_u32 v2, v2, v34, 0x7fff
	v_add3_u32 v3, v3, v11, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v7.l, 0x7fff, v6.h, s3
	v_add3_u32 v0, v0, v32, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s7
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s9
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s6
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s4
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v2, v7, v3, s0
	v_cndmask_b32_e64 v3, v3, v7, s0
	v_cndmask_b32_e64 v4, v1, v0, s0
	v_cndmask_b32_e64 v6, v0, v1, s0
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	v_or_b32_e32 v7, s10, v15
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_permlanex16_b32 v2, v2, s44, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v4, v4, s44, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v3, v25
	v_perm_b32 v1, v2, v3, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v2, v4, v6, v25
	v_perm_b32 v3, v4, v6, v26
	v_add_lshl_u32 v4, v7, v5, 1
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s3, s2
	s_ashr_i32 s5, s2, 31
	s_mul_hi_u32 s4, s3, s42
	s_xor_b32 s5, s5, s40
	s_mul_i32 s6, s4, s38
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	s_sub_i32 s3, s3, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s3, s38
	s_cmp_ge_u32 s3, s38
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s3, s7, s3
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s3, s38
	v_mov_b32_e32 v4, 0
	s_cselect_b32 s3, s6, s4
	v_mov_b32_e32 v32, 0
	s_xor_b32 s3, s3, s5
	v_mov_b32_e32 v1, 0
	s_sub_i32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s4, s3, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s3, s3, s36
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s5, s33, s4
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s9, s2, s3
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s7, s5, 4
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v0, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
	v_mov_b32_e32 v0, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s3, s5, s8
	s_abs_i32 s8, s9
	s_add_i32 s5, s5, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s8, s5
	s_xor_b32 s5, s9, s7
	s_mul_i32 s10, s3, s6
	s_ashr_i32 s5, s5, 31
	s_sub_i32 s8, s8, s10
	s_add_i32 s10, s3, 1
	s_sub_i32 s11, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s3, s10, s3
	s_cselect_b32 s8, s11, s8
	s_add_i32 s10, s3, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s3, s10, s3
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_and_b32 vcc_lo, exec_lo, s1
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s6, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s3, s6, s5
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s7, s3, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s9, s7
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s7, s7, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s4, s7, 5
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	v_lshl_add_u32 v1, s6, 7, v9
	v_mov_b32_e32 v0, 0
	v_add_nc_u32_e32 v2, s4, v12
	s_lshl_b32 s5, s5, 7
	s_mov_b32 s6, s39
	v_subrev_nc_u32_e32 v32, s5, v1
	v_mov_b32_e32 v1, v0
	v_mad_u64_u32 v[10:11], null, s37, v2, v[8:9]
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v6, v0
	v_mov_b32_e32 v7, v0
	s_mov_b32 s5, s41
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 230 27 is_stmt 1              ; generate_amdgcn.py:230:27
	v_cmp_lt_i32_e32 vcc_lo, s5, v24
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	v_add_nc_u32_e32 v11, s5, v10
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_add_i32 s6, s6, -1
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	v_cndmask_b32_e32 v33, 0x80000000, v32, vcc_lo
	.loc	1 229 27                        ; generate_amdgcn.py:229:27
	v_cmp_lt_i32_e32 vcc_lo, s5, v23
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	v_add_nc_u32_e32 v32, s43, v32
	s_add_i32 s5, s5, 16
	s_cmp_lg_u32 s6, 0
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	buffer_load_b32 v37, v33, s[20:23], 0 offen
	.loc	1 234 26                        ; generate_amdgcn.py:234:26
	buffer_load_u8 v11, v11, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b8 v27, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[33:34], v28
	ds_load_b64 v[35:36], v29
	.loc	1 239 26                        ; generate_amdgcn.py:239:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v30, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 240 27                        ; generate_amdgcn.py:240:27
	ds_load_u8 v11, v31 offset:640
	ds_load_u8 v37, v31 offset:896
	ds_load_u8 v38, v31 offset:768
	ds_load_u8 v39, v31 offset:512
	ds_load_u8 v40, v31 offset:128
	ds_load_u8 v41, v31 offset:384
	ds_load_u8 v42, v31 offset:256
	ds_load_u8 v43, v31
	ds_load_u8 v44, v31 offset:1664
	ds_load_u8 v45, v31 offset:1920
	ds_load_u8 v46, v31 offset:1792
	ds_load_u8 v47, v31 offset:1536
	ds_load_u8 v48, v31 offset:1152
	ds_load_u8 v49, v31 offset:1280
	ds_load_u8 v50, v31 offset:1024
	ds_load_u8 v51, v31 offset:1408
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v11, v39, v11, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v43, v40, 0xc0c0004
	v_perm_b32 v40, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v38, v37, 16, v11
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v42, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v41, v47, v44, 0xc0c0004
	v_lshl_or_b32 v37, v40, 16, v39
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v43, v50, v48, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v49, v51, 0xc0c0004
	v_lshl_or_b32 v40, v42, 16, v41
	v_wmma_i32_16x16x16_iu4 v[0:7], v[37:38], v[33:34], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v39, v44, 16, v43
	v_wmma_i32_16x16x16_iu4 v[0:7], v[39:40], v[35:36], v[0:7] neg_lo:[1,1,0]
	.loc	1 226 13                        ; generate_amdgcn.py:226:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 241 19 is_stmt 1              ; generate_amdgcn.py:241:19
	v_cvt_f32_i32_e32 v32, v0
	v_cvt_f32_i32_e32 v11, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v10, v2
	v_cvt_f32_i32_e32 v2, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v3, v5
	v_cvt_f32_i32_e32 v1, v6
	v_cvt_f32_i32_e32 v0, v7
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge9
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp17:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 52
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
		.amdhsa_inst_pref_size 18
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.num_vgpr, 52
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2264
; TotalNumSgprs: 47
; NumVgprs: 52
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 6
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 52
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_persistent_bm32_bn128_bk32_gm4_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     52
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
