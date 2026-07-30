	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s10, s2
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_lshlrev_b32_e32 v9, 2, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v26, 15, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v25, 0xe0, v0
	v_and_b32_e32 v31, 8, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s6, s6, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s8, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s12, s6, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s8, s8, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s12, s12, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s5, s5, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s6, s6, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s6, s6, 5
.Ltmp11:
	.loc	1 90 16 is_stmt 1               ; generate_amdgcn.py:90:16
	s_abs_i32 s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s9
	s_mul_hi_u32 s11, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
	s_sub_i32 s10, s10, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s10, s8
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s8, s12, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s8, s8, s11
	s_sub_i32 s18, s8, s11
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s6, s6, s18
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s5, s18, s5
	.loc	1 92 20                         ; generate_amdgcn.py:92:20
	s_min_i32 s19, s6, 1
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s6, s19
	s_abs_i32 s17, s2
	s_cvt_f32_u32 s16, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	v_readfirstlane_b32 s16, v1
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_and_b32_e32 v1, 12, v9
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s31, s11
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	s_cvt_u32_f32 s10, s16
	s_sub_i32 s16, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s16, s16, s10
	s_mul_hi_u32 s5, s10, s16
	s_xor_b32 s16, s2, s19
	s_add_i32 s5, s10, s5
	s_ashr_i32 s16, s16, 31
	s_mul_hi_u32 s5, s17, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s20, s5, s6
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_mov_b32 s30, s10
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s17, s17, s20
	s_add_i32 s20, s5, 1
	s_sub_i32 s21, s17, s6
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s20, s5
	s_cselect_b32 s17, s21, s17
	s_add_i32 s20, s5, 1
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s20, s5
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s20, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s21, s4, 31
.Ltmp13:
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s17, s5, s16
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s4, s4, s20
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s5, s17, s16
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s34, s4, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s4, s5, s19
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_mul_lo_u32 v6, s34, v3
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s6, s3, 4
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s4
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v5, s6, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s27, s2, 5
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v4, s6, v26
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s19, s21, s3
.Ltmp19:
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s34, v5
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s3, 16, v5
	.loc	1 189 34 is_stmt 1              ; generate_amdgcn.py:189:34
	v_or_b32_e32 v7, s27, v2
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_add3_u32 v5, v6, v1, s6
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s26, s5, 7
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s5, s34, v4
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s4, 16, v4
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s33, s19, 5
.Ltmp21:
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_mad_u64_u32 v[6:7], null, v7, s34, v[4:5]
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	s_add_i32 s2, s26, s7
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s21, 31
	.loc	1 191 34                        ; generate_amdgcn.py:191:34
	v_mad_u64_u32 v[7:8], null, s26, s34, v[5:6]
	.loc	1 198 29                        ; generate_amdgcn.py:198:29
	v_mad_u64_u32 v[4:5], null, s2, s34, v[5:6]
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s5, s4, s5
	s_and_b32 s18, s3, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s18
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_u8 v8, v5, s[8:11], 0 offen
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_clause 0x1
	buffer_load_b32 v10, v6, s[28:31], 0 offen
	buffer_load_b32 v4, v4, s[28:31], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_bfe_i32 v5, v0, 7, 1
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_bfe_i32 v6, v0, 5, 1
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v7, 0x17f, v0
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_and_b32_e32 v9, 0x77c, v9
	s_mov_b32 s5, -1
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v5, 0x88, v5
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_and_b32_e32 v6, 0x88, v6
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s21, 63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v7, v5, v7
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_xor_b32_e32 v9, v6, v9
	v_and_b32_e32 v5, 0x108, v0
	v_lshlrev_b32_e32 v6, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v32, 0, v7
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_add_nc_u32_e32 v33, 0, v9
	v_lshlrev_b32_e32 v7, 3, v25
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt vmcnt(2)
	ds_store_b8 v32, v8 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v10, v4 offset1:8
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_lshl_or_b32 v28, v26, 4, v5
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_and_b32_e32 v4, 8, v0
	v_and_or_b32 v29, 0x70, v6, v7
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v30, 8, v28
	s_mov_b64 s[38:39], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
                                        ; implicit-def: $vgpr28
                                        ; implicit-def: $vgpr30
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr29
.LBB0_3:                                ; %Flow129
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v13, 0 :: v_dual_and_b32 v34, 16, v2
	v_bfe_u32 v27, v0, 4, 1
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v22, 0
	s_lshl_b32 s1, s7, 1
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s5, s33, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_bfe_i32 v4, v0, 3, 1
	v_and_or_b32 v29, 0x70, v6, v7
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_lshl_or_b32 v8, s17, 8, v25
	s_lshl_b32 s17, s17, 7
	v_lshl_or_b32 v28, v26, 4, v5
	v_add3_u32 v5, s7, s17, v3
	v_and_or_b32 v6, 0x88, v4, v29
	v_add_nc_u32_e32 v4, s1, v8
	v_or_b32_e32 v3, s17, v3
	s_lshl_b32 s18, s16, 8
	s_lshl_b32 s16, s16, 7
	v_subrev_nc_u32_e32 v38, s18, v8
	v_subrev_nc_u32_e32 v37, s18, v4
	v_subrev_nc_u32_e32 v4, s16, v5
	v_subrev_nc_u32_e32 v5, s16, v3
	s_mov_b32 s16, 0
	v_add3_u32 v9, s27, v34, v26
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v10, s27, v2
	v_mad_u64_u32 v[2:3], null, s34, v4, s[6:7]
	v_mad_u64_u32 v[3:4], null, s34, v5, s[6:7]
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[4:5], null, s34, v10, s[6:7]
	v_mul_lo_u32 v9, s33, v9
	v_xor_b32_e32 v7, 8, v6
	v_xor_b32_e32 v30, 8, v28
	s_add_i32 s6, s6, 16
	v_sub_nc_u32_e32 v35, s34, v1
	v_add3_u32 v40, v2, v1, 16
	v_add3_u32 v41, v3, v1, 16
	v_add3_u32 v42, v4, v26, 16
	v_add_nc_u32_e32 v46, 0, v6
	v_add_nc_u32_e32 v47, 0, v7
	v_dual_mov_b32 v1, s16 :: v_dual_lshlrev_b32 v36, 1, v27
	v_dual_mov_b32 v2, s17 :: v_dual_lshlrev_b32 v39, 1, v9
	v_dual_mov_b32 v4, s19 :: v_dual_add_nc_u32 v43, s6, v26
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v44, 0, v28
	v_mov_b32_e32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_add_nc_u32 v45, 0, v30
	v_mov_b32_e32 v3, s18
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v10, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_max_i32 s0, s5, 1
	s_and_b32 s41, s15, 0xffff
	s_mov_b64 s[36:37], s[12:13]
	s_mov_b32 s40, s14
	s_lshl_b32 s35, s7, 2
	s_lshl_b32 s48, s0, 4
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_add_nc_u32_e32 v48, s16, v43
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	s_add_i32 s0, s6, s16
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	buffer_load_u16 v74, v39, s[44:47], 0 offen
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e32 vcc_lo, s0, v35
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v49, s16, v42
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s0, s34, v48
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_add_nc_u32_e32 v50, s16, v41
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	v_add_nc_u32_e32 v51, s16, v40
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v52, v36, v38
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s0, s0, s4
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v53, v36, v37
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_cndmask_b32_e64 v48, 0x80000000, v49, s0
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	v_cndmask_b32_e32 v49, 0x80000000, v51, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s16, s16, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s48, s16
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_u8 v75, v48, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_cndmask_b32_e32 v48, 0x80000000, v50, vcc_lo
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0xf
	buffer_load_u16 v76, v52, s[40:43], 0 offen offset:4
	buffer_load_u16 v77, v52, s[40:43], 0 offen
	buffer_load_u16 v78, v53, s[40:43], 0 offen offset:4
	buffer_load_u16 v79, v53, s[40:43], 0 offen
	buffer_load_u16 v80, v52, s[40:43], 0 offen offset:12
	buffer_load_u16 v81, v52, s[40:43], 0 offen offset:8
	buffer_load_u16 v82, v53, s[40:43], 0 offen offset:12
	buffer_load_u16 v83, v53, s[40:43], 0 offen offset:8
	buffer_load_u16 v84, v52, s[40:43], 0 offen offset:20
	buffer_load_u16 v85, v52, s[40:43], 0 offen offset:16
	buffer_load_u16 v86, v53, s[40:43], 0 offen offset:20
	buffer_load_u16 v87, v53, s[40:43], 0 offen offset:16
	buffer_load_u16 v88, v52, s[40:43], 0 offen offset:28
	buffer_load_u16 v89, v52, s[40:43], 0 offen offset:24
	buffer_load_u16 v90, v53, s[40:43], 0 offen offset:28
	buffer_load_u16 v91, v53, s[40:43], 0 offen offset:24
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	s_clause 0x1
	buffer_load_b32 v92, v48, s[28:31], 0 offen
	buffer_load_b32 v93, v49, s[28:31], 0 offen
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[62:65], v46 offset1:4
	.loc	1 189 26 is_stmt 1              ; generate_amdgcn.py:189:26
	ds_load_b64 v[70:71], v44 offset:4096
	ds_load_b64 v[72:73], v45 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[66:69], v47 offset1:4
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(18)
	ds_store_b8 v32, v75 offset:4096
	.loc	1 0 0                           ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v92, v93 offset1:8
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[48:55], v[62:63], v[70:71], v[1:8] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[56:63], v[64:65], v[70:71], v[1:8] neg_lo:[1,1,0]
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v65, 16, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[48:55], v[66:67], v[72:73], v[48:55] neg_lo:[1,1,0]
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v66, 16, v78
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[56:63], v[68:69], v[72:73], v[56:63] neg_lo:[1,1,0]
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v68, 16, v80
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_lshlrev_b32_e32 v64, 16, v74
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v51, v64, v51
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v67, 16, v79
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v69, 16, v81
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v70, 16, v82
	v_lshlrev_b32_e32 v71, 16, v83
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v72, 16, v84
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v21, v51, v68 :: v_dual_lshlrev_b32 v74, 16, v86
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v56, v64, v56 :: v_dual_add_nc_u32 v37, s35, v37
	v_dual_mul_f32 v57, v64, v57 :: v_dual_add_nc_u32 v38, s35, v38
	v_dual_mul_f32 v58, v64, v58 :: v_dual_add_nc_u32 v39, 2, v39
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v49, v64, v49
	v_mul_f32_e32 v48, v64, v48
	v_mul_f32_e32 v50, v64, v50
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v59, v64, v59
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v53, v64, v53
	v_mul_f32_e32 v52, v64, v52
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v61, v64, v61
	v_mul_f32_e32 v60, v64, v60
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v55, v64, v55
	v_mul_f32_e32 v54, v64, v54
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v63, v64, v63
	v_mul_f32_e32 v62, v64, v62
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v64, 16, v76
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v22, v57, v66 :: v_dual_lshlrev_b32 v73, 16, v85
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v76, 16, v87
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v24, v48, v65 :: v_dual_lshlrev_b32 v77, 16, v88
	v_dual_fmac_f32 v17, v53, v72 :: v_dual_lshlrev_b32 v78, 16, v89
	v_dual_fmac_f32 v20, v50, v69 :: v_dual_lshlrev_b32 v79, 16, v90
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v19, v59, v70 :: v_dual_lshlrev_b32 v80, 16, v91
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v23, v49, v64 :: v_dual_fmac_f32 v16, v52, v73
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v15, v61, v74
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v13, v54, v78 :: v_dual_fmac_f32 v10, v55, v77
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v9, v56, v67
	v_fmac_f32_e32 v18, v58, v71
	v_fmac_f32_e32 v14, v60, v76
	v_dual_fmac_f32 v11, v62, v80 :: v_dual_fmac_f32 v12, v63, v79
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v4, v31
.LBB0_7:                                ; %._crit_edge
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_or_b32_e32 v39, v34, v26
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_mul_i32 s0, s27, s33
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s3, s5, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_add_i32 s0, s0, s3
	v_mul_lo_u32 v1, s33, v39
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v2, 0, v28
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v5, 0, v30
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_cndmask_b32_e64 v7, 0, 1, s2
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v30, 0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v1, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_cmp_ne_u32_e64 s0, 1, v7
	v_mov_b32_e32 v7, 0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	buffer_load_u16 v40, v1, s[36:39], 0 offen
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_cndmask_b32_e64 v1, 0x88, 0, vcc_lo
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	v_or_b32_e32 v6, v29, v1
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_b64 v[3:4], v2 offset:4096
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[1:2], v5 offset:4096
	v_mov_b32_e32 v5, 0
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v42, 0, v6
	v_xor_b32_e32 v8, 8, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v6, 0 :: v_dual_add_nc_u32 v41, 0, v8
	v_mov_b32_e32 v8, 0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 191 26                        ; generate_amdgcn.py:191:26
	ds_load_b64 v[6:7], v42
	ds_load_b64 v[37:38], v41
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_mov_b32_e32 v29, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v30, v29
	v_mov_b32_e32 v31, v29
	v_mov_b32_e32 v32, v29
	v_mov_b32_e32 v33, v29
	v_mov_b32_e32 v34, v29
	v_mov_b32_e32 v35, v29
	v_mov_b32_e32 v36, v29
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[29:36], v[6:7], v[3:4], v[29:36] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[29:36], v[37:38], v[1:2], v[29:36] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v28, v29
	v_cvt_f32_i32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v29, v31
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v6, v33
	v_cvt_f32_i32_e32 v8, v34
	v_cvt_f32_i32_e32 v7, v35
	v_cvt_f32_i32_e32 v26, v36
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v38, 0
	.loc	1 202 36 is_stmt 1              ; generate_amdgcn.py:202:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 197 35                        ; generate_amdgcn.py:197:35
	ds_load_b64 v[32:33], v42 offset:2048
	ds_load_b64 v[34:35], v41 offset:2048
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_mov_b32_e32 v42, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v43, v42
	v_mov_b32_e32 v44, v42
	v_mov_b32_e32 v45, v42
	v_mov_b32_e32 v46, v42
	v_mov_b32_e32 v47, v42
	v_mov_b32_e32 v48, v42
	v_mov_b32_e32 v49, v42
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[32:33], v[3:4], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[34:35], v[1:2], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v5, v42
	v_cvt_f32_i32_e32 v37, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v36, v44
	v_cvt_f32_i32_e32 v38, v45
	v_cvt_f32_i32_e32 v32, v46
	v_cvt_f32_i32_e32 v34, v47
	v_cvt_f32_i32_e32 v33, v48
	v_cvt_f32_i32_e32 v35, v49
.LBB0_11:
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v1, 1, v25
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s3, s3, s1
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s9, s15, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s0, s26, s3
	s_mov_b32 s11, 0x31027000
	.loc	1 100 32 is_stmt 1              ; generate_amdgcn.py:100:32
	v_or_b32_e32 v1, v27, v1
	.loc	1 208 35                        ; generate_amdgcn.py:208:35
	s_add_i32 s1, s0, s7
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_mov_b32 s8, s14
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v53.l, 0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v2, 2, v1
	v_or_b32_e32 v3, 4, v1
	v_or_b32_e32 v4, 6, v1
	v_or_b32_e32 v25, 8, v1
	v_or_b32_e32 v27, 10, v1
	v_or_b32_e32 v41, 12, v1
	v_or_b32_e32 v42, 14, v1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v43, s0, v1, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v1, s1, v1, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v44, s0, v2, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v2, s1, v2, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v45, s0, v3, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v3, s1, v3, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v46, s0, v4, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v4, s1, v4, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v47, s0, v25, 1
	v_add_lshl_u32 v48, s0, v27, 1
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v51, v1, s[8:11], 0 offen
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v3, 0x80000000, v4, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	s_clause 0x5
	buffer_load_u16 v43, v43, s[8:11], 0 offen
	buffer_load_u16 v44, v44, s[8:11], 0 offen
	buffer_load_u16 v45, v45, s[8:11], 0 offen
	buffer_load_u16 v46, v46, s[8:11], 0 offen
	buffer_load_u16 v47, v47, s[8:11], 0 offen
	buffer_load_u16 v48, v48, s[8:11], 0 offen
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v4, s1, v25, 1
	v_add_lshl_u32 v25, s1, v27, 1
	s_clause 0x2
	buffer_load_u16 v27, v1, s[8:11], 0 offen
	buffer_load_u16 v52, v2, s[8:11], 0 offen
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v50, s0, v42, 1
	v_add_lshl_u32 v49, s0, v41, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v2, s1, v42, 1
	v_add_lshl_u32 v1, s1, v41, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v41, 0x80000000, v50, s2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x5
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v41, v41, s[8:11], 0 offen
	buffer_load_u16 v42, v49, s[8:11], 0 offen
	buffer_load_u16 v49, v2, s[8:11], 0 offen
	buffer_load_u16 v50, v1, s[8:11], 0 offen
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v53.h, v40.l
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b32_e32 v40, 0x7632
	v_mov_b16_e32 v54.h, v53.l
	v_mov_b16_e32 v55.h, v53.l
	v_mov_b16_e32 v58.h, v53.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v30, v30, v53
	v_mul_f32_e32 v28, v28, v53
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v5, v5, v53
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v31, v31, v53
	v_mul_f32_e32 v29, v29, v53
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v36, v36, v53
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v6, v6, v53
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v37, v37, v53
	v_mul_f32_e32 v38, v38, v53
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v8, v8, v53
	v_mul_f32_e32 v7, v7, v53
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v35, v35, v53
	v_mul_f32_e32 v33, v33, v53
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v56.h, v53.l
	v_mov_b16_e32 v57.h, v53.l
	v_mov_b16_e32 v59.h, v53.l
	v_mov_b16_e32 v60.h, v53.l
	.loc	1 216 18 is_stmt 0              ; generate_amdgcn.py:216:18
	v_or_b32_e32 v2, s27, v39
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b32_e32 v39, 0x5410
	s_mov_b32 s8, 0x76543210
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, s11
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v43, 16, v43
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v5, v5, v51, v9
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v45, 16, v45
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v28, v28, v43, v24
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v43, 16, v46
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v46, 16, v52
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v9, v5, s2
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v9, v29, v45, v20
	v_fma_f32 v6, v6, v47, v16
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v29, v36, v46, v18
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v3, 16, v3
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v6, v16, v6, s2
	v_cndmask_b32_e64 v18, v18, v29, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v27, v37, v27, v22
	v_fma_f32 v3, v38, v3, v19
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v18
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v8, v8, v48, v17
	v_fma_f32 v7, v7, v42, v13
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v22, v22, v27, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v34, v34, v53
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v16
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v3, v19, v3, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v32, v32, v53
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v8, v17, v8, s2
	v_cndmask_b32_e64 v7, v13, v7, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v16, 0, 0x42800000, s1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v13, 0xbfb8aa3b, v22
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v25, v34, v25, v15
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v17, 0xbfb8aa3b, v3
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v4, v32, v4, v14
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v18
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v32, v35, v49, v12
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v15, v25, s2
	v_cndmask_b32_e64 v4, v14, v4, s2
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v26, v26, v53
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v12, v12, v32, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v30, v30, v44, v23
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v24, v24, v28, s2
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v28, v31, v43, v21
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v31, v33, v50, v11
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v9, v20, v9, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v4
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v26, v26, v41, v10
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v15
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v23, v30, s2
	v_cndmask_b32_e64 v21, v21, v28, s2
	v_cndmask_b32_e64 v11, v11, v31, s2
	v_cndmask_b32_e64 v10, v10, v26, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v20
	v_mul_f32_e32 v26, 0xbfb8aa3b, v12
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v20, 0, 0x42800000, s2
	v_mul_f32_e32 v27, 0xbfb8aa3b, v5
	v_cndmask_b32_e64 v13, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v26
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v26, 0, 0x42800000, s4
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v22
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v25, 0xbfb8aa3b, v11 :: v_dual_fmac_f32 v26, 0xbfb8aa3b, v12
	v_exp_f32_e32 v13, v13
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v5
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v25
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v20, v20, v31
	v_exp_f32_e32 v14, v14
	v_cndmask_b32_e64 v25, 0, 0x42800000, s5
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v13, v13, v28
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v19
	v_ldexp_f32 v16, v16, v30
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v11 :: v_dual_add_f32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_ldexp_f32 v14, v14, v27
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s4
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v3 :: v_dual_add_f32 v16, 1.0, v16
	v_exp_f32_e32 v25, v25
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v36, null, v20, v20, v15
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v26, v26, v27
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v4
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v17, v17
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v48, v36
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v25, v25, v33
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v27, null, v14, v14, v5
	v_div_scale_f32 v42, null, v26, v26, v12
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v17, v17, v29
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v29, null, v13, v13, v22
	v_rcp_f32_e32 v31, v27
	v_rcp_f32_e32 v50, v42
	v_fma_f32 v64, -v36, v48, 1.0
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v45, v29
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s3
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v28, s0, v5, v14, v5
	v_fmac_f32_e32 v48, v64, v48
	v_div_scale_f32 v44, null, v25, v25, v11
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v51, -v27, v31, 1.0
	v_fma_f32 v66, -v42, v50, 1.0
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v19, v19, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v52, v44
	v_fma_f32 v62, -v29, v45, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v31, v51, v31 :: v_dual_fmac_f32 v50, v66, v50
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v34, null, v16, v16, v18
	v_div_scale_f32 v30, vcc_lo, v22, v13, v22
	v_div_scale_f32 v37, s3, v15, v20, v15
	v_fma_f32 v67, -v44, v52, 1.0
	v_dual_fmac_f32 v45, v62, v45 :: v_dual_mul_f32 v62, v28, v31
	v_div_scale_f32 v32, null, v17, v17, v3
	v_rcp_f32_e32 v47, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v52, v67, v52
	v_div_scale_f32 v33, s1, v3, v17, v3
	v_rcp_f32_e32 v46, v32
	v_div_scale_f32 v35, s2, v18, v16, v18
	v_mul_f32_e32 v66, v37, v48
	v_div_scale_f32 v43, s5, v12, v26, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v34, v47, 1.0
	v_div_scale_f32 v61, s6, v11, v25, v11
	v_fma_f32 v72, -v36, v66, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v32, v46, 1.0
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_mul_f32 v68, v43, v50
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v53.h, v53.l
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v66, v72, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v51, v46
	v_div_scale_f32 v38, null, v19, v19, v4
	v_mul_f32_e32 v51, v30, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v47, v63, v47 :: v_dual_mul_f32 v64, v33, v46
	v_rcp_f32_e32 v49, v38
	v_div_scale_f32 v41, s4, v4, v19, v4
	v_fma_f32 v63, -v27, v62, v28
	v_fma_f32 v70, -v29, v51, v30
	v_fma_f32 v74, -v42, v68, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v62, v63, v31 :: v_dual_fmac_f32 v51, v70, v45
	v_fma_f32 v65, -v38, v49, 1.0
	v_fma_f32 v63, -v32, v64, v33
	v_mul_f32_e32 v69, v61, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v27, -v27, v62, v28
	v_fma_f32 v28, -v29, v51, v30
	v_fmac_f32_e32 v49, v65, v49
	v_mul_f32_e32 v65, v35, v47
	v_fmac_f32_e32 v64, v63, v46
	v_fmac_f32_e32 v68, v74, v50
	v_div_fmas_f32 v28, v28, v45, v51
	v_mul_f32_e32 v67, v41, v49
	v_fma_f32 v71, -v34, v65, v35
	v_fma_f32 v29, -v32, v64, v33
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v32, -v36, v66, v37
	v_div_fmas_f32 v27, v27, v31, v62
	v_fmac_f32_e32 v65, v71, v47
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v13, v28, v13, v22
	v_div_fmas_f32 v29, v29, v46, v64
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v30, -v34, v65, v35
	v_fma_f32 v73, -v38, v67, v41
	v_div_fixup_f32 v5, v27, v14, v5
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v13, v23, v13
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v34, -v42, v68, v43
	v_div_fmas_f32 v22, v30, v47, v65
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v3, v29, v17, v3
	v_div_fmas_f32 v14, v32, v48, v66
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v54.l, v13.h
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v67, v73, v49
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v22, v16, v18
	v_div_fixup_f32 v14, v14, v20, v15
	v_fma_f32 v75, -v44, v69, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v3, v21, v3 :: v_dual_mul_f32 v8, v8, v14
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_and_b32_e32 v14, 1, v54
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v33, -v38, v67, v41
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v56.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v58.l, v8.h
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v9, v9, v16
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v17, v33, v49, v67
	s_mov_b32 vcc_lo, s5
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s3, v8, v8
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v18, v34, v50, v68
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v4, v17, v19, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v12, v18, v26, v12
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v5, v24, v5 :: v_dual_mul_f32 v4, v6, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v10, v10, v12
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v55.l, v5.h
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v69, v75, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v5, v5
	v_mov_b16_e32 v59.l, v4.h
	v_mov_b16_e32 v53.l, v10.h
	v_and_b32_e32 v6, 1, v55
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v35, -v44, v69, v61
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v4, v4
	v_and_b32_e32 v12, 1, v56
	v_cmp_o_f32_e64 s1, v3, v3
	v_add3_u32 v5, v5, v6, 0x7fff
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v15, v35, v52, v69
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_and_b32_e32 v6, 1, v58
	v_mov_b16_e32 v57.l, v9.h
	v_cmp_o_f32_e64 s2, v9, v9
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v11, v15, v25, v11
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v3, v3, v12, 0x7fff
	v_add3_u32 v6, v8, v6, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v5.h, s0
	v_cmp_o_f32_e64 s5, v10, v10
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v7, v7, v11
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v11, v13, v14, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s3
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b16 v8.h, 0x7fff, v11.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_dual_cndmask_b32 v11, 0x3276, v40 :: v_dual_and_b32 v14, 1, v59
	v_add3_u32 v4, v4, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v5.l, 0x7fff, v4.h, s4
	v_and_b32_e32 v13, 1, v57
	v_and_b32_e32 v4, 1, v53
	v_mov_b16_e32 v60.l, v7.h
	v_cmp_o_f32_e64 s0, v7, v7
	v_cndmask_b32_e32 v6, v5, v8, vcc_lo
	v_add3_u32 v0, v9, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v9, 0x1054, v39 :: v_dual_and_b32 v12, 1, v60
	v_add3_u32 v4, v10, v4, 0x7fff
	v_lshl_or_b32 v10, v11, 8, v11
	v_cndmask_b16 v3.l, 0x7fff, v0.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v9, 8, v9
	v_add3_u32 v7, v7, v12, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s5
	v_cndmask_b16 v0.l, 0x7fff, v7.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_and_b32_e32 v4, 0x540054, v9
	v_and_b32_e32 v9, 0x760076, v10
	.loc	1 216 18 is_stmt 0              ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v7, v2, s7
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b32_e32 v2, v8, v5, vcc_lo
	v_lshl_or_b32 v5, v9, 4, v9
	v_dual_cndmask_b32 v8, v3, v0 :: v_dual_cndmask_b32 v3, v0, v3
	v_lshl_or_b32 v4, v4, 4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v2, v2, s8, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v5, 0x7060706, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v8, v8, s8, 0xfedcba98 op_sel:[1,0]
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_and_or_b32 v9, 0x78, v1, s26
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v4, 0x5040504, v4
	s_mov_b32 s26, s10
	v_perm_b32 v1, v2, v6, v5
	v_perm_b32 v0, v2, v6, v4
	v_perm_b32 v2, v8, v3, v4
	v_perm_b32 v3, v8, v3, v5
	v_add_lshl_u32 v4, v9, v7, 1
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	.loc	1 80 1 is_stmt 1                ; generate_amdgcn.py:80:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 94
		.amdhsa_next_free_sgpr 49
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
		.amdhsa_inst_pref_size 42
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 94
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5300
; TotalNumSgprs: 51
; NumVgprs: 94
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 94
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     94
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
