	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 222 0                         ; generate_amdgcn.py:222:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:231:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 31
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:232:17 ]
	s_add_i32 s5, s25, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_lshr_b32 s6, s6, 27
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_lshr_b32 s7, s7, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:231:17 ]
	s_ashr_i32 s26, s4, 5
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:232:17 ]
	s_ashr_i32 s14, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 233 17 is_stmt 1              ; generate_amdgcn.py:233:17
	s_mul_i32 s27, s14, s26
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cmp_ge_i32 s2, s27
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph8
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x20
	.loc	1 247 36 is_stmt 1              ; generate_amdgcn.py:247:36
	v_and_b32_e32 v4, 0x100, v0
	v_and_b32_e32 v2, 15, v0
	v_lshlrev_b32_e32 v15, 1, v0
	v_bfe_i32 v11, v0, 3, 1
	v_lshlrev_b32_e32 v13, 10, v0
	v_lshrrev_b32_e32 v9, 4, v4
	v_and_b32_e32 v7, 0x180, v0
	v_and_b32_e32 v12, 0x60, v15
	v_lshlrev_b32_e32 v17, 3, v0
	v_and_b32_e32 v11, 0x2040, v11
	v_or_b32_e32 v10, v9, v2
	v_lshlrev_b32_e32 v9, 2, v0
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_and_b32_e32 v6, 16, v0
	v_lshrrev_b32_e32 v4, 1, v4
	v_lshrrev_b32_e32 v7, 5, v7
	.loc	1 234 24                        ; generate_amdgcn.py:234:24
	s_lshl_b32 s28, s14, 2
	v_and_or_b32 v9, 0x31c, v9, v12
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:272:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s15, 63
	v_and_b32_e32 v12, 0x1c00, v13
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:272:26 ]
	s_ashr_i32 s17, s0, 31
	v_and_b32_e32 v13, 28, v15
.Ltmp12:
	.loc	1 236 22 is_stmt 1              ; generate_amdgcn.py:236:22
	s_lshr_b32 s1, s15, 31
	s_mov_b32 s16, s4
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:272:26 ]
	s_lshr_b32 s4, s17, 26
.Ltmp14:
	.loc	1 236 22                        ; generate_amdgcn.py:236:22
	s_add_i32 s15, s15, s1
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:272:26 ]
	s_add_i32 s1, s0, s4
	v_xor_b32_e32 v9, v9, v11
	v_lshlrev_b32_e32 v11, 5, v0
	v_and_or_b32 v13, 0xf00, v17, v13
.Ltmp16:
	.loc	1 236 22                        ; generate_amdgcn.py:236:22
	s_ashr_i32 s29, s15, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:272:26 ]
	s_ashr_i32 s30, s1, 6
	s_cmp_gt_i32 s0, 63
	v_or3_b32 v4, v12, v4, v9
	s_cselect_b32 s0, -1, 0
	s_abs_i32 s31, s28
	v_and_b32_e32 v9, 32, v11
	v_lshlrev_b32_e32 v11, 2, v6
	v_xor_b32_e32 v7, v13, v7
	s_cvt_f32_u32 s1, s31
.Ltmp18:
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_lshrrev_b32_e32 v5, 1, v0
	v_and_b32_e32 v1, 0x7f, v0
	v_or3_b32 v7, v9, v11, v7
	v_rcp_iflag_f32_e32 v9, s1
	.loc	1 247 36                        ; generate_amdgcn.py:247:36
	v_lshrrev_b32_e32 v8, 7, v0
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	v_and_b32_e32 v12, 0xe0, v0
	v_cndmask_b32_e64 v0, 0, 1, s0
	s_mov_b32 s4, s6
	s_sub_i32 s6, 0, s31
	.loc	1 248 36                        ; generate_amdgcn.py:248:36
	v_and_b32_e32 v5, 0x70, v5
	v_add_nc_u32_e32 v18, 0, v2
	v_cmp_ne_u32_e64 s0, 1, v0
	v_mov_b32_e32 v0, 0
	v_readfirstlane_b32 s1, v9
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	v_mad_u64_u32 v[8:9], null, s25, v8, v[1:2]
	v_lshl_or_b32 v9, s3, 5, v3
	v_xor_b32_e32 v20, 4, v4
	s_delay_alu instid0(VALU_DEP_4)
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_xor_b32_e32 v21, 8, v4
	v_xor_b32_e32 v22, 12, v4
	v_mul_lo_u32 v1, s25, v9
	s_cvt_u32_f32 s1, s1
	v_mul_lo_u32 v3, s24, v9
	v_xor_b32_e32 v23, 16, v4
	v_xor_b32_e32 v24, 20, v4
	v_xor_b32_e32 v25, 24, v4
	v_xor_b32_e32 v26, 28, v4
	v_xor_b32_e32 v28, 0x1010, v7
	v_xor_b32_e32 v29, 0x2040, v7
	v_xor_b32_e32 v30, 0x3050, v7
	s_mul_i32 s6, s6, s1
	v_lshrrev_b32_e32 v11, 3, v6
	s_mul_hi_u32 s6, s1, s6
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_lshl_add_u32 v13, v2, 3, v1
	s_add_i32 s40, s1, s6
	v_lshl_add_u32 v14, v2, 1, v3
	v_add_nc_u32_e32 v15, 0, v15
	v_add_nc_u32_e32 v16, 0, v10
	v_add_nc_u32_e32 v17, 0, v17
	v_add_nc_u32_e32 v18, v18, v5
	v_add_nc_u32_e32 v19, 0, v4
	v_add_nc_u32_e32 v20, 0, v20
	v_add_nc_u32_e32 v21, 0, v21
	v_add_nc_u32_e32 v22, 0, v22
	v_add_nc_u32_e32 v23, 0, v23
	v_add_nc_u32_e32 v24, 0, v24
	v_add_nc_u32_e32 v25, 0, v25
	v_add_nc_u32_e32 v26, 0, v26
	v_add_nc_u32_e32 v27, 0, v7
	v_add_nc_u32_e32 v28, 0, v28
	v_add_nc_u32_e32 v29, 0, v29
	v_add_nc_u32_e32 v30, 0, v30
	v_cmp_gt_i32_e64 s1, 32, v9
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s21, s11, 0xffff
	s_mov_b32 s20, s10
	s_lshl_b32 s33, s25, 2
	s_lshl_b32 s34, s25, 3
	s_mul_i32 s35, s25, 12
	s_lshl_b32 s36, s25, 4
	s_mul_i32 s37, s25, 20
	s_mul_i32 s38, s25, 24
	s_mul_i32 s39, s25, 28
	s_and_b32 s13, s13, 0xffff
	s_bfe_i32 s3, s14, 0x1001d
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_lshl_b32 s41, s25, 1
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	s_lshl_b32 s42, s30, 1
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_lshl_b32 s43, s25, 5
	s_lshl_b32 s24, s24, 5
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v19, v34
	ds_store_b32 v20, v38
	ds_store_b32 v21, v37
	ds_store_b32 v22, v36
	ds_store_b32 v23, v35
	ds_store_b32 v24, v33
	ds_store_b32 v25, v32
	ds_store_b32 v26, v31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[1:2], v27 offset1:32
	ds_load_2addr_b32 v[3:4], v28 offset1:32
	ds_load_2addr_b32 v[5:6], v29 offset1:32
	ds_load_2addr_b32 v[31:32], v30 offset1:32
	.loc	1 248 18                        ; generate_amdgcn.py:248:18
	s_lshl_b32 s6, s44, 7
	.loc	1 305 27                        ; generate_amdgcn.py:305:27
	s_mul_i32 s45, s45, s25
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_add_i32 s2, s2, 20
	v_add3_u32 v7, s45, s6, v8
	s_cmp_lt_i32 s2, s27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 305 13                        ; generate_amdgcn.py:305:13
	v_lshlrev_b32_e32 v33, 2, v7
	v_add_lshl_u32 v34, v7, s33, 2
	v_add_lshl_u32 v35, v7, s34, 2
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v1, v33, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v3, v34, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v5, v35, s[12:15], 0 offen
	v_add_lshl_u32 v1, v7, s35, 2
	v_add_lshl_u32 v3, v7, s36, 2
	v_add_lshl_u32 v5, v7, s37, 2
	v_add_lshl_u32 v33, v7, s38, 2
	v_add_lshl_u32 v7, v7, s39, 2
	s_waitcnt lgkmcnt(0)
	s_clause 0x4
	buffer_atomic_add_f32 v31, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v5, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v33, s[12:15], 0 offen
	buffer_atomic_add_f32 v32, v7, s[12:15], 0 offen
	.loc	1 241 5                         ; generate_amdgcn.py:241:5
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 242 20                        ; generate_amdgcn.py:242:20
	s_abs_i32 s6, s2
	s_ashr_i32 s10, s2, 31
	s_mul_hi_u32 s7, s6, s40
	s_xor_b32 s10, s10, s3
	s_mul_i32 s11, s7, s31
	v_mov_b32_e32 v31, v0
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s22, s6, s31
	s_cmp_ge_u32 s6, s31
	v_mov_b32_e32 v32, v0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s6, s22, s6
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s6, s31
	v_mov_b32_e32 v33, v0
	s_cselect_b32 s6, s11, s7
	v_mov_b32_e32 v35, v0
	s_xor_b32 s6, s6, s10
	v_mov_b32_e32 v36, v0
	s_sub_i32 s6, s6, s10
	v_mov_b32_e32 v37, v0
	.loc	1 243 23                        ; generate_amdgcn.py:243:23
	s_lshl_b32 s10, s6, 2
	.loc	1 245 33                        ; generate_amdgcn.py:245:33
	s_mul_i32 s6, s6, s28
	.loc	1 244 35                        ; generate_amdgcn.py:244:35
	s_sub_i32 s7, s26, s10
	.loc	1 245 33                        ; generate_amdgcn.py:245:33
	s_sub_i32 s45, s2, s6
	.loc	1 244 24                        ; generate_amdgcn.py:244:24
	s_min_i32 s11, s7, 4
	v_mov_b32_e32 v38, v0
	.loc	1 246 17                        ; generate_amdgcn.py:246:17
	s_abs_i32 s7, s11
	v_mov_b32_e32 v34, v0
	s_cvt_f32_u32 s22, s7
	s_sub_i32 s23, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s22
	v_readfirstlane_b32 s22, v1
	s_mul_f32 s22, s22, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s22, s22
	s_mul_i32 s23, s23, s22
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s22, s23
	s_abs_i32 s23, s45
	s_add_i32 s22, s22, s6
	s_xor_b32 s6, s45, s11
	s_mul_hi_u32 s22, s23, s22
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s44, s22, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s23, s23, s44
	s_add_i32 s44, s22, 1
	s_sub_i32 s46, s23, s7
	s_cmp_ge_u32 s23, s7
	s_cselect_b32 s22, s44, s22
	s_cselect_b32 s23, s46, s23
	s_add_i32 s44, s22, 1
	s_cmp_ge_u32 s23, s7
	s_cselect_b32 s7, s44, s22
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	s_and_b32 vcc_lo, exec_lo, s0
	.loc	1 246 17                        ; generate_amdgcn.py:246:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s44, s7, s6
	.loc	1 245 32                        ; generate_amdgcn.py:245:32
	s_mul_i32 s11, s44, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s11, s45, s11
	.loc	1 245 17 is_stmt 0              ; generate_amdgcn.py:245:17
	s_add_i32 s11, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 247 18 is_stmt 1              ; generate_amdgcn.py:247:18
	s_lshl_b32 s45, s11, 5
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v2, s45, v10
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_lshl_or_b32 v1, s7, 8, v12
	v_lshl_add_u32 v3, s7, 7, v13
	s_lshl_b32 s7, s6, 8
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v40, s42, v2
	s_lshl_b32 s6, s6, 7
	v_subrev_nc_u32_e32 v39, s7, v1
	v_subrev_nc_u32_e32 v41, s6, v3
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v42, s45, v14
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v32, 0
	s_mov_b32 s46, 0
	s_mov_b32 s47, s30
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 285 31 is_stmt 1              ; generate_amdgcn.py:285:31
	v_add_nc_u32_e32 v1, s46, v9
	.loc	1 296 30                        ; generate_amdgcn.py:296:30
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	.loc	1 298 22                        ; generate_amdgcn.py:298:22
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	.loc	1 285 31                        ; generate_amdgcn.py:285:31
	v_cmp_gt_i32_e32 vcc_lo, s29, v1
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	s_add_i32 s47, s47, -1
	s_add_i32 s46, s46, 32
	.loc	1 285 30                        ; generate_amdgcn.py:285:30
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	s_cmp_lg_u32 s47, 0
	.loc	1 289 30                        ; generate_amdgcn.py:289:30
	v_cndmask_b32_e32 v1, 0x80000000, v42, vcc_lo
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_add_nc_u32_e32 v42, s24, v42
	.loc	1 289 30                        ; generate_amdgcn.py:289:30
	buffer_load_u16 v3, v1, s[16:19], 0 offen
	.loc	1 296 30                        ; generate_amdgcn.py:296:30
	v_cndmask_b32_e32 v1, 0x80000000, v41, vcc_lo
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_add_nc_u32_e32 v41, s43, v41
	.loc	1 296 30                        ; generate_amdgcn.py:296:30
	buffer_load_b64 v[1:2], v1, s[4:7], 0 offen
	.loc	1 289 30                        ; generate_amdgcn.py:289:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v15, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 297 31                        ; generate_amdgcn.py:297:31
	ds_load_u8 v3, v16
	ds_load_u8 v4, v16 offset:32
	ds_load_u8 v5, v16 offset:96
	ds_load_u8 v6, v16 offset:64
	ds_load_u8 v7, v16 offset:224
	ds_load_u8 v43, v16 offset:192
	ds_load_u8 v44, v16 offset:160
	ds_load_u8 v45, v16 offset:128
	ds_load_u8 v55, v16 offset:352
	ds_load_u8 v56, v16 offset:320
	ds_load_u8 v57, v16 offset:288
	ds_load_u8 v58, v16 offset:256
	ds_load_u8 v59, v16 offset:480
	ds_load_u8 v60, v16 offset:448
	ds_load_u8 v61, v16 offset:416
	ds_load_u8 v62, v16 offset:384
	ds_load_u8 v63, v16 offset:608
	ds_load_u8 v64, v16 offset:576
	ds_load_u8 v65, v16 offset:544
	ds_load_u8 v66, v16 offset:512
	ds_load_u8 v67, v16 offset:736
	ds_load_u8 v68, v16 offset:704
	ds_load_u8 v69, v16 offset:672
	ds_load_u8 v70, v16 offset:640
	ds_load_u8 v71, v16 offset:864
	ds_load_u8 v72, v16 offset:832
	ds_load_u8 v73, v16 offset:800
	ds_load_u8 v74, v16 offset:768
	ds_load_u8 v75, v16 offset:992
	ds_load_u8 v76, v16 offset:960
	ds_load_u8 v77, v16 offset:928
	ds_load_u8 v78, v16 offset:896
	.loc	1 296 30                        ; generate_amdgcn.py:296:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v17, v[1:2]
	.loc	1 297 31                        ; generate_amdgcn.py:297:31
	v_perm_b32 v1, v45, v44, 0xc0c0004
	v_perm_b32 v2, v43, v7, 0xc0c0004
	.loc	1 296 30                        ; generate_amdgcn.py:296:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 297 31                        ; generate_amdgcn.py:297:31
	v_mov_b32_e32 v7, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v52, v2, 16, v1
	v_perm_b32 v1, v6, v5, 0xc0c0004
	v_perm_b32 v2, v3, v4, 0xc0c0004
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v6, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v51, v1, 16, v2
	ds_load_u8 v1, v18 offset:640
	ds_load_u8 v2, v18 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v18 offset:896
	ds_load_u8 v3, v18 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v2, 16, v1
	ds_load_u8 v1, v18 offset:128
	ds_load_u8 v2, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v18 offset:384
	ds_load_u8 v3, v18 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_mov_b32_e32 v3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v53, v2, 16, v1
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v2, v0
	v_dual_mov_b32 v50, v7 :: v_dual_mov_b32 v49, v6
	v_dual_mov_b32 v48, v5 :: v_dual_mov_b32 v47, v4
	v_dual_mov_b32 v46, v3 :: v_dual_mov_b32 v45, v2
	v_dual_mov_b32 v44, v1 :: v_dual_mov_b32 v43, v0
	v_perm_b32 v1, v62, v61, 0xc0c0004
	v_perm_b32 v2, v60, v59, 0xc0c0004
	v_perm_b32 v3, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[43:50], v[53:54], v[51:52], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	ds_load_u8 v3, v18 offset:1664
	ds_load_u8 v4, v18 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v18 offset:1920
	ds_load_u8 v5, v18 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v4, v4, 16, v3
	ds_load_u8 v3, v18 offset:1152
	ds_load_u8 v5, v18 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v5, v3, 0xc0c0004
	ds_load_u8 v5, v18 offset:1408
	ds_load_u8 v6, v18 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v3, v5, 16, v3
	v_wmma_i32_16x16x16_iu4 v[43:50], v[3:4], v[1:2], v[43:50] neg_lo:[1,1,0]
	v_perm_b32 v1, v70, v69, 0xc0c0004
	v_perm_b32 v2, v68, v67, 0xc0c0004
	v_perm_b32 v3, v64, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v66, v65, 0xc0c0004
	v_lshl_or_b32 v1, v3, 16, v1
	ds_load_u8 v3, v18 offset:2688
	ds_load_u8 v4, v18 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v18 offset:2944
	ds_load_u8 v5, v18 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v4, v4, 16, v3
	ds_load_u8 v3, v18 offset:2176
	ds_load_u8 v5, v18 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v5, v3, 0xc0c0004
	ds_load_u8 v5, v18 offset:2432
	ds_load_u8 v6, v18 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v3, v5, 16, v3
	v_wmma_i32_16x16x16_iu4 v[43:50], v[3:4], v[1:2], v[43:50] neg_lo:[1,1,0]
	v_perm_b32 v1, v78, v77, 0xc0c0004
	v_perm_b32 v2, v76, v75, 0xc0c0004
	v_perm_b32 v3, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v74, v73, 0xc0c0004
	v_lshl_or_b32 v1, v3, 16, v1
	ds_load_u8 v3, v18 offset:3712
	ds_load_u8 v4, v18 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v18 offset:3968
	ds_load_u8 v5, v18 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v4, v4, 16, v3
	ds_load_u8 v3, v18 offset:3200
	ds_load_u8 v5, v18 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v5, v3, 0xc0c0004
	ds_load_u8 v5, v18 offset:3456
	ds_load_u8 v6, v18 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v3, v5, 16, v3
	v_wmma_i32_16x16x16_iu4 v[43:50], v[3:4], v[1:2], v[43:50] neg_lo:[1,1,0]
	.loc	1 298 22                        ; generate_amdgcn.py:298:22
	buffer_load_u16 v1, v40, s[8:11], 0 offen
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	v_add_nc_u32_e32 v2, v11, v39
	s_clause 0x7
	buffer_load_u16 v3, v2, s[20:23], 0 offen
	buffer_load_u16 v4, v2, s[20:23], 0 offen offset:4
	buffer_load_u16 v5, v2, s[20:23], 0 offen offset:8
	buffer_load_u16 v6, v2, s[20:23], 0 offen offset:12
	buffer_load_u16 v7, v2, s[20:23], 0 offen offset:16
	buffer_load_u16 v51, v2, s[20:23], 0 offen offset:20
	buffer_load_u16 v52, v2, s[20:23], 0 offen offset:24
	buffer_load_u16 v2, v2, s[20:23], 0 offen offset:28
	.loc	1 300 24                        ; generate_amdgcn.py:300:24
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 278 13                        ; generate_amdgcn.py:278:13
	v_add_nc_u32_e32 v40, 2, v40
	v_add_nc_u32_e32 v39, s41, v39
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 298 22                        ; generate_amdgcn.py:298:22
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 300 24                        ; generate_amdgcn.py:300:24
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v43, v43, v1 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 299 22                        ; generate_amdgcn.py:299:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 300 17                        ; generate_amdgcn.py:300:17
	v_fmac_f32_e32 v34, v43, v3
	.loc	1 300 24 is_stmt 0              ; generate_amdgcn.py:300:24
	v_dual_mul_f32 v46, v46, v1 :: v_dual_lshlrev_b32 v7, 16, v7
	v_dual_mul_f32 v48, v48, v1 :: v_dual_lshlrev_b32 v51, 16, v51
	v_mul_f32_e32 v44, v44, v1
	.loc	1 299 22 is_stmt 1              ; generate_amdgcn.py:299:22
	v_lshlrev_b32_e32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 300 24                        ; generate_amdgcn.py:300:24
	v_dual_mul_f32 v45, v45, v1 :: v_dual_fmac_f32 v36, v46, v6
	v_mul_f32_e32 v49, v49, v1
	v_mul_f32_e32 v47, v47, v1
	v_dual_mul_f32 v1, v50, v1 :: v_dual_fmac_f32 v38, v44, v4
	.loc	1 300 17 is_stmt 0              ; generate_amdgcn.py:300:17
	v_fmac_f32_e32 v37, v45, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v33, v48, v51 :: v_dual_fmac_f32 v32, v49, v52
	v_fmac_f32_e32 v35, v47, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v31, v1, v2
	.loc	1 278 13 is_stmt 1              ; generate_amdgcn.py:278:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge9
	.loc	1 222 1                         ; generate_amdgcn.py:222:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk
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
		.amdhsa_next_free_vgpr 79
		.amdhsa_next_free_sgpr 48
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
		.amdhsa_inst_pref_size 24
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.num_vgpr, 79
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3016
; TotalNumSgprs: 50
; NumVgprs: 79
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 79
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
	.byte	1                               ; Abbrev [1] 0xb:0x5d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x37 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	231                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	232                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x59:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	272                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     79
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
