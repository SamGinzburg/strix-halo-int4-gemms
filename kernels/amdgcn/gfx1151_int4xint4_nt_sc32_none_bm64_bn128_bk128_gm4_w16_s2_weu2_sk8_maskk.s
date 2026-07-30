	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s8, s2
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_and_b32_e32 v6, 7, v0
	v_lshlrev_b32_e32 v12, 2, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v5, 2, v0
	v_and_b32_e32 v29, 0xe0, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v13, 0x100, v0
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_and_b32_e32 v2, 12, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v35, 3, v29
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 89 24 is_stmt 1               ; generate_amdgcn.py:89:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 90 16                         ; generate_amdgcn.py:90:16
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 91 19                         ; generate_amdgcn.py:91:19
	s_lshl_b32 s16, s6, 2
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s6, s6, s5
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 92 20 is_stmt 0               ; generate_amdgcn.py:92:20
	s_min_i32 s17, s7, 4
	.loc	1 93 29 is_stmt 1               ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s6
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s18, s17
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s7, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	s_sub_i32 s10, 0, s18
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_lshlrev_b32_e32 v1, 1, v6
	s_mov_b32 s11, 0x31027000
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s23, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s7, s10
	s_add_i32 s7, s7, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s6, s7
	s_xor_b32 s7, s2, s17
	s_mul_i32 s10, s5, s18
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s6, s6, s10
	s_add_i32 s19, s5, 1
	s_sub_i32 s22, s6, s18
	s_cmp_ge_u32 s6, s18
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s6, s22, s6
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s6, s18
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s22, s10
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cselect_b32 s5, s19, s5
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s6, s4, 31
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s19, s3, 4
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s31, s5, s7
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s24, s4, 31
.Ltmp13:
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s4, s4, s6
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v3, s19, v1
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s5, s31, s7
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s30, s4, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s6, s5, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s3, s24, 31
.Ltmp15:
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_mad_u64_u32 v[7:8], null, s30, v4, v[1:2]
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s6
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v10, s19, v2
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_mad_u64_u32 v[8:9], null, s30, v5, v[2:3]
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s17, s24, s3
.Ltmp19:
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s30, v3
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s3, 16, v3
	.loc	1 99 14 is_stmt 1               ; generate_amdgcn.py:99:14
	s_lshl_b32 s18, s2, 6
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s33, s5, 7
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s5, s30, v10
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s4, 16, v10
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s6, s17, 5
.Ltmp21:
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	s_mul_i32 s2, s18, s30
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	s_mul_i32 s16, s33, s30
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s24, 31
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_add3_u32 v7, s19, s2, v7
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_add3_u32 v3, s19, s16, v8
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s16, s3, vcc_lo
	s_and_b32 s5, s4, s5
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	buffer_load_b32 v3, v3, s[20:23], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_lshlrev_b32_e32 v8, 1, v0
	v_bfe_i32 v9, v0, 6, 1
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_bfe_i32 v10, v0, 5, 1
	v_and_b32_e32 v11, 0x77c, v12
	s_mov_b32 s5, -1
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v8, 0x37e, v8
	v_and_b32_e32 v9, 0x88, v9
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_and_b32_e32 v10, 0x88, v10
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s24, 63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v8, v9, v8
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_xor_b32_e32 v9, v10, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v37, 0, v8
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_add_nc_u32_e32 v38, 0, v9
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v37, v7 offset:2048
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v38, v3
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_lshlrev_b32_e32 v3, 3, v29
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_mov_b64 s[26:27], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr24_sgpr25
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow36
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x20
	v_bfe_i32 v7, v0, 3, 1
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v31, 15, v0
	v_lshrrev_b32_e32 v36, 4, v13
	v_bfe_u32 v30, v0, 4, 1
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v32, 0x108, v0
	v_dual_mov_b32 v16, 0 :: v_dual_lshlrev_b32 v33, 4, v6
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v34, 0x88, v7
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v11, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s1, s6, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_add3_u32 v8, s18, v36, v31
	s_mov_b32 s40, 0
	v_lshl_or_b32 v10, s31, 8, v29
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	v_add_nc_u32_e32 v9, 32, v8
	v_lshl_or_b32 v5, s31, 7, v5
	s_lshl_b32 s0, s7, 8
	v_lshl_or_b32 v3, v31, 4, v32
	v_subrev_nc_u32_e32 v42, s0, v10
	v_mul_lo_u32 v9, s6, v9
	s_lshl_b32 s0, s7, 7
	v_or3_b32 v6, v33, v34, v35
	v_mul_lo_u32 v8, s6, v8
	v_subrev_nc_u32_e32 v5, s0, v5
	v_add_nc_u32_e32 v4, s18, v4
	v_xor_b32_e32 v7, 8, v3
	v_xor_b32_e32 v14, 8, v6
	v_lshlrev_b32_e32 v43, 1, v9
	v_mad_u64_u32 v[9:10], null, s30, v5, v[2:3]
	v_mad_u64_u32 v[10:11], null, s30, v4, v[1:2]
	v_sub_nc_u32_e32 v39, s30, v1
	v_sub_nc_u32_e32 v40, s30, v2
	v_dual_mov_b32 v11, 0 :: v_dual_lshlrev_b32 v44, 1, v8
	v_add_nc_u32_e32 v45, 0, v3
	v_add_nc_u32_e32 v46, 0, v7
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v47, 0, v6
	v_mov_b32_e32 v1, s40
	v_dual_mov_b32 v4, s43 :: v_dual_lshlrev_b32 v41, 1, v30
	v_dual_mov_b32 v5, s44 :: v_dual_add_nc_u32 v48, 0, v14
	v_dual_mov_b32 v2, s41 :: v_dual_mov_b32 v3, s42
	v_dual_mov_b32 v6, s45 :: v_dual_mov_b32 v7, s46
	v_mov_b32_e32 v24, 0
	v_dual_mov_b32 v8, s47 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b64 s[24:25], s[12:13]
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_max_i32 s5, s1, 1
	s_lshl_b32 s7, s35, 1
	s_add_i32 s19, s19, 16
	s_mov_b32 s36, s12
	s_mov_b32 s37, s13
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e32 vcc_lo, s19, v39
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v49, s19, v10
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_clause 0x1
	buffer_load_u16 v75, v44, s[36:39], 0 offen
	buffer_load_u16 v76, v43, s[36:39], 0 offen
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v51, v41, v42
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e64 s0, s19, v40
	.loc	1 171 26 is_stmt 0              ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 191 26 is_stmt 1              ; generate_amdgcn.py:191:26
	v_add_nc_u32_e32 v50, s19, v9
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_add_nc_u32 v44, 2, v44
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, s0, s4
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s5, s5, -1
	s_add_i32 s19, s19, 16
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_u16 v77, v49, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v78, v51, s[28:31], 0 offen
	buffer_load_u16 v79, v51, s[28:31], 0 offen offset:4
	buffer_load_u16 v80, v51, s[28:31], 0 offen offset:8
	buffer_load_u16 v81, v51, s[28:31], 0 offen offset:12
	buffer_load_u16 v82, v51, s[28:31], 0 offen offset:16
	buffer_load_u16 v83, v51, s[28:31], 0 offen offset:20
	buffer_load_u16 v84, v51, s[28:31], 0 offen offset:24
	buffer_load_u16 v85, v51, s[28:31], 0 offen offset:28
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_cndmask_b32_e32 v49, 0x80000000, v50, vcc_lo
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[63:66], v45 offset0:4 offset1:5
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[71:72], v47
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[67:70], v46 offset0:4 offset1:5
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[73:74], v48
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_lg_u32 s5, 0
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	buffer_load_b32 v86, v49, s[20:23], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b16 v37, v77 offset:2048
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v38, v86
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[49:56], v[71:72], v[63:64], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[71:72], v[65:66], v[1:8] neg_lo:[1,1,0]
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_lshlrev_b32_e32 v66, 16, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[49:56], v[73:74], v[67:68], v[49:56] neg_lo:[1,1,0]
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v68, 16, v81
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[57:64], v[73:74], v[69:70], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_lshlrev_b32_e32 v65, 16, v75
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	v_mul_f32_e32 v57, v66, v57
	v_mul_f32_e32 v58, v66, v58
	v_mul_f32_e32 v54, v65, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v55, v65, v55 :: v_dual_mul_f32 v64, v66, v64
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v71, 16, v84
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v63, v63
	v_mul_f32_e32 v51, v65, v51
	v_dual_mul_f32 v53, v65, v53 :: v_dual_mul_f32 v62, v66, v62
	.loc	1 206 13 is_stmt 0              ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v22, v55, v71 :: v_dual_lshlrev_b32 v69, 16, v82
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v67, 16, v80
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v49, v65, v49 :: v_dual_add_nc_u32 v42, s7, v42
	v_dual_mul_f32 v50, v65, v50 :: v_dual_add_nc_u32 v43, 2, v43
	v_mul_f32_e32 v52, v65, v52
	v_dual_mul_f32 v56, v65, v56 :: v_dual_mul_f32 v59, v66, v59
	v_mul_f32_e32 v60, v66, v60
	v_mul_f32_e32 v61, v66, v61
	v_mul_f32_e32 v63, v66, v63
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v66, 16, v79
	v_lshlrev_b32_e32 v72, 16, v85
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v24, v53, v69 :: v_dual_lshlrev_b32 v65, 16, v78
	v_fmac_f32_e32 v26, v51, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v27, v50, v66 :: v_dual_lshlrev_b32 v70, 16, v83
	v_dual_fmac_f32 v25, v52, v68 :: v_dual_fmac_f32 v20, v58, v66
	v_fmac_f32_e32 v11, v49, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v23, v54, v70 :: v_dual_fmac_f32 v18, v60, v68
	v_dual_fmac_f32 v21, v56, v72 :: v_dual_fmac_f32 v16, v62, v70
	v_dual_fmac_f32 v28, v57, v65 :: v_dual_fmac_f32 v19, v59, v67
	v_dual_fmac_f32 v14, v64, v72 :: v_dual_fmac_f32 v17, v61, v69
	v_fmac_f32_e32 v15, v63, v71
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v3, v35
.LBB0_7:                                ; %._crit_edge
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_or_b32_e32 v1, v36, v31
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_mul_i32 s3, s18, s6
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s0, s1, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v2, 32, v1
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v1, s6, v1
	s_add_i32 s3, s3, s0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_mul_lo_u32 v2, s6, v2
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v35, 0
	.loc	1 168 18 is_stmt 0              ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v1, s3, v1, 1
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_add_lshl_u32 v2, s3, v2, 1
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_mov_b32 s4, 0
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_clause 0x1
	buffer_load_u16 v42, v1, s[24:27], 0 offen
	buffer_load_u16 v43, v2, s[24:27], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_lshl_or_b32 v1, v31, 4, v32
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_or3_b32 v2, v34, v33, v3
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v41, s11 :: v_dual_add_nc_u32 v4, 0, v1
	v_dual_mov_b32 v39, s9 :: v_dual_add_nc_u32 v8, 0, v2
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_xad_u32 v9, v2, 8, 0
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xad_u32 v10, v1, 8, 0
	ds_load_2addr_stride64_b64 v[4:7], v4 offset0:4 offset1:5
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[1:2], v8
	ds_load_b64 v[8:9], v9
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[52:55], v10 offset0:4 offset1:5
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_dual_mov_b32 v40, s10 :: v_dual_mov_b32 v37, s7
	v_dual_mov_b32 v38, s8 :: v_dual_mov_b32 v35, s5
	v_mov_b32_e32 v36, s6
	v_mov_b32_e32 v34, s4
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[1:2], v[4:5], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[1:2], v[6:7], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[8:9], v[52:53], v[44:51] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[8:9], v[54:55], v[34:41] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v1, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v45
	v_cvt_f32_i32_e32 v4, v46
	v_cvt_f32_i32_e32 v5, v47
	v_cvt_f32_i32_e32 v6, v48
	v_cvt_f32_i32_e32 v7, v49
	v_cvt_f32_i32_e32 v8, v50
	v_cvt_f32_i32_e32 v9, v51
	v_cvt_f32_i32_e32 v10, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
.LBB0_9:
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v29, 1, v29
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s0, s0, s35
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s5, s15, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s0, s33, s0
	s_mov_b32 s7, 0x31027000
	.loc	1 100 32 is_stmt 1              ; generate_amdgcn.py:100:32
	v_or_b32_e32 v29, v30, v29
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_mov_b32 s4, s14
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_bfe_i32 v50, v0, 0, 1
	v_and_or_b32 v3, 0x78, v12, v3
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	v_add_lshl_u32 v29, s0, v29, 1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v13
	v_lshrrev_b32_e32 v51, 1, v13
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s0, s18, s35
	s_lshl_b32 s1, s35, 3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v31, 4, v29
	v_add_nc_u32_e32 v32, 8, v29
	v_add_nc_u32_e32 v33, 12, v29
	v_add_nc_u32_e32 v34, 16, v29
	v_add_nc_u32_e32 v44, 20, v29
	v_add_nc_u32_e32 v45, 24, v29
	v_cndmask_b32_e64 v30, 0x80000000, v29, s2
	v_add_nc_u32_e32 v29, 28, v29
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	s_clause 0x7
	buffer_load_u16 v46, v30, s[4:7], 0 offen
	buffer_load_u16 v47, v31, s[4:7], 0 offen
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	buffer_load_u16 v34, v34, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v48, v29, s[4:7], 0 offen
	v_mov_b16_e32 v29.l, 0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v29.h, v43.l
	v_mov_b16_e32 v30.h, v42.l
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v31, 0x7f, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v42, 7, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v36, v36, v29 :: v_dual_and_b32 v43, 14, v0
	v_dual_mul_f32 v38, v38, v29 :: v_dual_and_b32 v49, 1, v0
	v_dual_mul_f32 v35, v35, v29 :: v_dual_lshlrev_b32 v12, 4, v0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_bfe_i32 v0, v0, 7, 1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_mov_b16_e32 v30.l, v29.l
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_lshlrev_b32_e32 v49, 6, v49
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v37, v37, v29 :: v_dual_lshlrev_b32 v60, 11, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v9, v9, v30 :: v_dual_and_b32 v0, 0x840, v0
	v_dual_mul_f32 v40, v40, v29 :: v_dual_lshlrev_b32 v43, 2, v43
	v_dual_mul_f32 v41, v41, v29 :: v_dual_and_b32 v12, 0x700, v12
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_xor_b32_e32 v0, v0, v49
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v39, v39, v29 :: v_dual_and_b32 v50, 0x840, v50
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v13, 0x1008, 0, vcc_lo
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v10, v10, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_or3_b32 v0, v12, v43, v0
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_add3_u32 v29, s0, s33, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_xor_b32_e32 v3, v3, v50
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v53, 52, v42
	v_or_b32_e32 v58, 12, v42
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_xor_b32_e32 v0, v0, v13
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v59, 4, v42
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_or3_b32 v3, v60, v51, v3
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v1, v1, v30
	v_mul_f32_e32 v2, v2, v30
	v_mul_f32_e32 v4, v4, v30
	v_mul_f32_e32 v5, v5, v30
	v_mul_f32_e32 v6, v6, v30
	v_mul_f32_e32 v7, v7, v30
	v_mul_f32_e32 v8, v8, v30
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mad_u64_u32 v[30:31], null, s35, v42, v[29:30]
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v62, 0, v0
	v_xad_u32 v63, 0x2010, v0, 0
	v_xad_u32 v64, 0x4020, v0, 0
	v_xad_u32 v65, 0x6030, v0, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v52, 60, v42
	v_or_b32_e32 v54, 44, v42
	v_or_b32_e32 v55, 36, v42
	v_or_b32_e32 v56, 28, v42
	v_or_b32_e32 v57, 20, v42
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mul_lo_u32 v49, s35, v59
	v_mul_lo_u32 v50, s35, v58
	v_mul_lo_u32 v51, s35, v53
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v31, 0, v3
	v_xad_u32 v42, v3, 8, 0
	v_xad_u32 v43, v3, 16, 0
	v_xad_u32 v53, v3, 24, 0
	v_xad_u32 v58, v3, 32, 0
	v_xad_u32 v59, v3, 40, 0
	v_xad_u32 v60, v3, 48, 0
	v_xad_u32 v61, v3, 56, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	v_mul_lo_u32 v57, s35, v57
	v_mul_lo_u32 v56, s35, v56
	v_mul_lo_u32 v55, s35, v55
	v_mul_lo_u32 v54, s35, v54
	s_lshl_b32 s3, s35, 4
	s_mul_i32 s4, s35, 24
	s_lshl_b32 s5, s35, 5
	s_mul_i32 s8, s35, 40
	.loc	1 218 9 is_stmt 0               ; generate_amdgcn.py:218:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	.loc	1 218 23                        ; generate_amdgcn.py:218:23
	s_mul_i32 s9, s35, 48
	s_mul_i32 s10, s35, 56
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v46
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v3, 16, v47
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v12, 16, v32
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v13, 16, v33
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v32, 16, v34
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v33, 16, v44
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v34, 16, v45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v48
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v1, v1, v0, v11
	v_fma_f32 v10, v10, v0, v28
	v_fma_f32 v2, v2, v3, v27
	v_fma_f32 v3, v35, v3, v20
	v_fma_f32 v4, v4, v12, v26
	v_fma_f32 v5, v5, v13, v25
	v_fma_f32 v35, v36, v12, v19
	v_fma_f32 v7, v7, v33, v23
	v_fma_f32 v13, v37, v13, v18
	v_fma_f32 v45, v6, v32, v24
	v_fma_f32 v46, v8, v34, v22
	v_fma_f32 v9, v9, v44, v21
	v_fma_f32 v32, v38, v32, v17
	v_fma_f32 v33, v39, v33, v16
	v_fma_f32 v34, v40, v34, v15
	v_fma_f32 v36, v41, v44, v14
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v0, v11, v1, s2
	v_cndmask_b32_e64 v1, v28, v10, s2
	v_cndmask_b32_e64 v2, v27, v2, s2
	v_cndmask_b32_e64 v3, v20, v3, s2
	v_cndmask_b32_e64 v4, v26, v4, s2
	v_cndmask_b32_e64 v6, v25, v5, s2
	v_cndmask_b32_e64 v5, v19, v35, s2
	v_cndmask_b32_e64 v10, v23, v7, s2
	v_cndmask_b32_e64 v7, v18, v13, s2
	v_cndmask_b32_e64 v8, v24, v45, s2
	v_cndmask_b32_e64 v12, v22, v46, s2
	v_cndmask_b32_e64 v21, v21, v9, s2
	v_cndmask_b32_e64 v9, v17, v32, s2
	v_cndmask_b32_e64 v11, v16, v33, s2
	v_cndmask_b32_e64 v13, v15, v34, s2
	v_cndmask_b32_e64 v22, v14, v36, s2
	ds_store_b64 v31, v[0:1]
	ds_store_b64 v42, v[2:3]
	ds_store_b64 v43, v[4:5]
	ds_store_b64 v53, v[6:7]
	ds_store_b64 v58, v[8:9]
	ds_store_b64 v59, v[10:11]
	ds_store_b64 v60, v[12:13]
	ds_store_b64 v61, v[21:22]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[0:3], v62 offset1:16
	ds_load_2addr_b64 v[4:7], v63 offset1:16
	ds_load_2addr_b64 v[8:11], v64 offset1:16
	ds_load_2addr_b64 v[12:15], v65 offset1:16
	.loc	1 218 9                         ; generate_amdgcn.py:218:9
	v_lshlrev_b32_e32 v17, 2, v30
	v_add_lshl_u32 v18, v29, v49, 2
	.loc	1 218 23 is_stmt 0              ; generate_amdgcn.py:218:23
	v_mul_lo_u32 v16, s35, v52
	.loc	1 218 9                         ; generate_amdgcn.py:218:9
	v_add_lshl_u32 v19, v30, s1, 2
	v_add_lshl_u32 v20, v29, v50, 2
	v_add_lshl_u32 v21, v30, s3, 2
	v_add_lshl_u32 v22, v29, v57, 2
	v_add_lshl_u32 v23, v30, s4, 2
	v_add_lshl_u32 v24, v29, v56, 2
	v_add_lshl_u32 v25, v30, s5, 2
	v_add_lshl_u32 v26, v29, v55, 2
	v_add_lshl_u32 v27, v30, s8, 2
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v0, v17, s[16:19], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v4, v18, s[16:19], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v8, v19, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x7
	buffer_atomic_add_f32 v12, v20, s[16:19], 0 offen
	buffer_atomic_add_f32 v2, v21, s[16:19], 0 offen
	buffer_atomic_add_f32 v6, v22, s[16:19], 0 offen
	buffer_atomic_add_f32 v10, v23, s[16:19], 0 offen
	buffer_atomic_add_f32 v14, v24, s[16:19], 0 offen
	buffer_atomic_add_f32 v1, v25, s[16:19], 0 offen
	buffer_atomic_add_f32 v5, v26, s[16:19], 0 offen
	buffer_atomic_add_f32 v9, v27, s[16:19], 0 offen
	v_add_lshl_u32 v28, v29, v54, 2
	v_add_lshl_u32 v31, v30, s9, 2
	v_add_lshl_u32 v32, v29, v51, 2
	v_add_lshl_u32 v30, v30, s10, 2
	v_add_lshl_u32 v0, v29, v16, 2
	s_clause 0x4
	buffer_atomic_add_f32 v13, v28, s[16:19], 0 offen
	buffer_atomic_add_f32 v3, v31, s[16:19], 0 offen
	buffer_atomic_add_f32 v7, v32, s[16:19], 0 offen
	buffer_atomic_add_f32 v11, v30, s[16:19], 0 offen
	buffer_atomic_add_f32 v15, v0, s[16:19], 0 offen
	.loc	1 80 1 is_stmt 1                ; generate_amdgcn.py:80:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
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
		.amdhsa_next_free_vgpr 87
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
		.amdhsa_inst_pref_size 29
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.num_vgpr, 87
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3696
; TotalNumSgprs: 50
; NumVgprs: 87
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 10
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 87
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
	.byte	88                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	154                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     87
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
