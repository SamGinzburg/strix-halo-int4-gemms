	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s8, s2
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshlrev_b32_e32 v8, 2, v0
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_lshlrev_b32_e32 v9, 1, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_lshrrev_b32_e32 v4, 5, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v42, 1, v0
	v_and_b32_e32 v2, 0x7c, v8
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v45, 15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v43, 0x70, v42
	v_or_b32_e32 v63, v43, v45
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s26, 63
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
	s_lshl_b32 s20, s6, 2
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_mul_i32 s6, s6, s5
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s7, s9, s20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 92 20 is_stmt 0               ; generate_amdgcn.py:92:20
	s_min_i32 s7, s7, 4
	.loc	1 93 29 is_stmt 1               ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s6
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s17, s7
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s16, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 158 24                        ; generate_amdgcn.py:158:24
	v_and_b32_e32 v1, 14, v9
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s31, s11
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	s_cvt_u32_f32 s10, s16
	s_sub_i32 s16, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s16, s16, s10
	s_mul_hi_u32 s5, s10, s16
	s_xor_b32 s16, s2, s7
	s_add_i32 s5, s10, s5
	s_ashr_i32 s16, s16, 31
	s_mul_hi_u32 s5, s6, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s5, s17
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s30, s10
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s6, s6, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s19, s6, s17
	s_cmp_ge_u32 s6, s17
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s6, s19, s6
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s6, s17
	s_cselect_b32 s5, s18, s5
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s6, s4, 31
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s19, s5, s16
	.loc	1 102 14                        ; generate_amdgcn.py:102:14
	s_lshl_b32 s34, s27, 1
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s21, s4, 31
.Ltmp13:
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s4, s4, s6
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s6, s19, s16
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s17, s3, 4
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_mad_u64_u32 v[5:6], null, s34, v4, v[2:3]
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s18, s4, 1
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s7, s6, s7
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v10, s17, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s5, s21, 31
.Ltmp15:
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_mad_u64_u32 v[6:7], null, s18, v3, v[1:2]
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s7
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v11, s17, v4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s4, s5, 27
.Ltmp17:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s20
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	s_mul_i32 s22, s34, s17
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s26, s6, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s23, s21, s4
.Ltmp19:
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s18, v10
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s5, 16, v10
	.loc	1 99 14 is_stmt 1               ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s2, 6
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e64 s6, s18, v11
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s4, 16, v11
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s7, s23, 5
.Ltmp21:
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_add3_u32 v5, s26, s22, v5
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	s_mul_i32 s20, s33, s18
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s21, 31
	.loc	1 189 34                        ; generate_amdgcn.py:189:34
	v_add3_u32 v6, s17, s20, v6
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s20, s5, vcc_lo
	s_and_b32 s6, s4, s6
	.loc	1 201 43                        ; generate_amdgcn.py:201:43
	v_add_nc_u32_e32 v7, s27, v5
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s20
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 201 35                        ; generate_amdgcn.py:201:35
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_add_nc_u32 v66, 0, v8
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_u16 v10, v6, s[8:11], 0 offen
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_clause 0x1
	buffer_load_b32 v11, v5, s[28:31], 0 offen
	buffer_load_b32 v7, v7, s[28:31], 0 offen
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_bfe_i32 v5, v0, 6, 1
	v_and_b32_e32 v6, 0x37e, v9
	s_mov_b32 s6, -1
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s21, 63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_and_b32_e32 v5, 0x88, v5
	v_xor_b32_e32 v9, v5, v6
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v6, 4, v0
	v_and_b32_e32 v5, 0x108, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v65, 0, v9
	s_waitcnt vmcnt(2)
	ds_store_b16 v65, v10 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v66, v11, v7 offset1:8
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_lshl_or_b32 v50, v45, 4, v5
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_or_b32_e32 v9, v43, v45
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b64 s[38:39], s[10:11]
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_xor_b32_e32 v53, 8, v50
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_or_b32_e32 v46, 0x80, v9
	v_or_b32_e32 v47, 0x100, v9
	v_or_b32_e32 v48, 0x180, v9
	v_or_b32_e32 v49, 0x200, v9
	v_or_b32_e32 v51, 0x280, v9
	v_or_b32_e32 v52, 0x300, v9
	v_or_b32_e32 v54, 0x380, v9
	v_or_b32_e32 v55, 0x400, v9
	v_or_b32_e32 v56, 0x480, v9
	v_or_b32_e32 v57, 0x500, v9
	v_or_b32_e32 v58, 0x580, v9
	v_or_b32_e32 v59, 0x600, v9
	v_or_b32_e32 v60, 0x680, v9
	v_or_b32_e32 v61, 0x700, v9
	v_or_b32_e32 v62, 0x780, v9
	s_mov_b32 s6, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr60
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr62
.LBB0_3:                                ; %Flow310
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v64, 16, v6
	v_bfe_u32 v44, v0, 4, 1
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v18, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s1, s7, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_lshl_or_b32 v50, v45, 4, v5
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v5, 0xe0, v0
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_lshlrev_b32_e32 v6, 1, v4
	v_sub_nc_u32_e32 v68, s18, v4
	s_max_i32 s0, s1, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v5, s19, 8, v5
	s_lshl_b32 s6, s16, 8
	v_lshl_or_b32 v6, s3, 5, v6
	s_add_i32 s48, s17, 16
	s_lshl_b32 s19, s19, 7
	v_add_nc_u32_e32 v4, s34, v5
	v_subrev_nc_u32_e32 v71, s6, v5
	v_add3_u32 v7, s33, v64, v45
	v_sub_nc_u32_e32 v67, s18, v1
	v_xor_b32_e32 v53, 8, v50
	v_subrev_nc_u32_e32 v70, s6, v4
	s_lshl_b32 s6, s0, 1
	s_lshl_b32 s0, s16, 7
	s_mov_b32 s16, 0
	v_mov_b32_e32 v35, 0
	s_mov_b32 s17, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v9, 33, v6
	v_add_nc_u32_e32 v6, 32, v6
	v_or_b32_e32 v46, 0x80, v63
	v_or_b32_e32 v47, 0x100, v63
	v_or_b32_e32 v48, 0x180, v63
	v_mul_lo_u32 v9, s27, v9
	v_mul_lo_u32 v4, s27, v6
	v_or_b32_e32 v49, 0x200, v63
	v_or_b32_e32 v51, 0x280, v63
	v_or_b32_e32 v52, 0x300, v63
	v_or_b32_e32 v54, 0x380, v63
	v_or_b32_e32 v55, 0x400, v63
	v_or_b32_e32 v56, 0x480, v63
	v_add3_u32 v5, v9, s19, v2
	v_add3_u32 v2, v4, s19, v2
	s_mov_b32 s19, s16
	v_add_nc_u32_e32 v3, s33, v3
	v_or_b32_e32 v57, 0x500, v63
	v_subrev_nc_u32_e32 v74, s0, v5
	v_subrev_nc_u32_e32 v75, s0, v2
	v_or_b32_e32 v58, 0x580, v63
	v_mad_u64_u32 v[9:10], null, s18, v3, v[1:2]
	s_mov_b32 s18, s16
	v_add_nc_u32_e32 v8, 32, v7
	v_mul_lo_u32 v7, s7, v7
	v_or_b32_e32 v59, 0x600, v63
	v_or_b32_e32 v60, 0x680, v63
	v_or_b32_e32 v61, 0x700, v63
	v_mul_lo_u32 v8, s7, v8
	v_or_b32_e32 v62, 0x780, v63
	v_lshlrev_b32_e32 v69, 1, v44
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v76, 0, v50
	v_lshlrev_b32_e32 v73, 1, v7
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v77, 0, v53
	v_lshlrev_b32_e32 v72, 1, v8
	v_dual_mov_b32 v1, s16 :: v_dual_add_nc_u32 v78, 0, v63
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v11, 0
	v_mov_b32_e32 v10, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b64 s[36:37], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s3, s27, 2
	s_lshl_b32 s35, s27, 5
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_add_nc_u32_e32 v80, s16, v72
	v_add_nc_u32_e32 v81, s16, v73
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e32 vcc_lo, s48, v67
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v79, s48, v9
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e64 s0, s48, v68
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_clause 0x1
	buffer_load_u16 v125, v80, s[44:47], 0 offen
	buffer_load_u16 v126, v81, s[44:47], 0 offen
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v82, v69, v71
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v83, v69, v70
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, s0, s4
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s16, s16, 2
	.loc	1 201 35                        ; generate_amdgcn.py:201:35
	v_cndmask_b32_e32 v80, 0x80000000, v74, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s48, s48, 16
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	buffer_load_u16 v127, v79, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0xf
	buffer_load_u16 v128, v82, s[40:43], 0 offen
	buffer_load_u16 v129, v82, s[40:43], 0 offen offset:4
	buffer_load_u16 v130, v82, s[40:43], 0 offen offset:8
	buffer_load_u16 v131, v82, s[40:43], 0 offen offset:12
	buffer_load_u16 v132, v82, s[40:43], 0 offen offset:16
	buffer_load_u16 v133, v82, s[40:43], 0 offen offset:20
	buffer_load_u16 v134, v83, s[40:43], 0 offen offset:4
	buffer_load_u16 v135, v83, s[40:43], 0 offen
	buffer_load_u16 v136, v83, s[40:43], 0 offen offset:12
	buffer_load_u16 v137, v83, s[40:43], 0 offen offset:8
	buffer_load_u16 v138, v83, s[40:43], 0 offen offset:20
	buffer_load_u16 v139, v83, s[40:43], 0 offen offset:24
	buffer_load_u16 v140, v83, s[40:43], 0 offen offset:16
	buffer_load_u16 v141, v82, s[40:43], 0 offen offset:28
	buffer_load_u16 v142, v82, s[40:43], 0 offen offset:24
	buffer_load_u16 v143, v83, s[40:43], 0 offen offset:28
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_cndmask_b32_e32 v79, 0x80000000, v75, vcc_lo
	s_clause 0x1
	buffer_load_b32 v144, v79, s[28:31], 0 offen
	buffer_load_b32 v145, v80, s[28:31], 0 offen
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v79, v78 offset:640
	ds_load_u8 v80, v78 offset:896
	ds_load_u8 v81, v78 offset:768
	ds_load_u8 v82, v78 offset:512
	ds_load_u8 v83, v78 offset:128
	ds_load_u8 v84, v78 offset:384
	ds_load_u8 v85, v78 offset:256
	ds_load_u8 v86, v78
	ds_load_u8 v87, v78 offset:1664
	ds_load_u8 v88, v78 offset:1920
	ds_load_u8 v89, v78 offset:1792
	ds_load_u8 v90, v78 offset:1536
	ds_load_u8 v91, v78 offset:1152
	ds_load_u8 v92, v78 offset:1408
	ds_load_u8 v93, v78 offset:1280
	ds_load_u8 v94, v78 offset:1024
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v95, v78 offset:2688
	ds_load_u8 v96, v78 offset:2944
	ds_load_u8 v97, v78 offset:2816
	ds_load_u8 v98, v78 offset:2560
	ds_load_u8 v99, v78 offset:2176
	ds_load_u8 v100, v78 offset:2432
	ds_load_u8 v101, v78 offset:2304
	ds_load_u8 v102, v78 offset:2048
	ds_load_u8 v103, v78 offset:3712
	ds_load_u8 v104, v78 offset:3968
	ds_load_u8 v105, v78 offset:3840
	ds_load_u8 v106, v78 offset:3584
	ds_load_u8 v107, v78 offset:3200
	ds_load_u8 v108, v78 offset:3328
	ds_load_u8 v109, v78 offset:3456
	ds_load_u8 v110, v78 offset:3072
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	ds_load_2addr_stride64_b64 v[111:114], v76 offset0:8 offset1:9
	ds_load_2addr_stride64_b64 v[115:118], v77 offset0:8 offset1:9
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v79, v82, v79, 0xc0c0004
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v81, v86, v83, 0xc0c0004
	v_perm_b32 v82, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v83, v90, v87, 0xc0c0004
	v_perm_b32 v84, v89, v88, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v87, v98, v95, 0xc0c0004
	v_perm_b32 v88, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v90, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v89, v102, v99, 0xc0c0004
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v85, v94, v91, 0xc0c0004
	v_perm_b32 v86, v93, v92, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v92, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v91, v106, v103, 0xc0c0004
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v96, v80, 16, v79
	v_lshl_or_b32 v95, v82, 16, v81
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v94, v108, v109, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v93, v110, v107, 0xc0c0004
	v_lshl_or_b32 v122, v88, 16, v87
	v_lshl_or_b32 v121, v90, 16, v89
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v120, v84, 16, v83
	v_lshl_or_b32 v119, v86, 16, v85
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v124, v92, 16, v91
	v_lshl_or_b32 v123, v94, 16, v93
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[79:86], v[95:96], v[113:114], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[95:96], v[111:112], v[1:8] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[95:102], v[121:122], v[113:114], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[121:122], v[111:112], v[1:8] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[79:86], v[119:120], v[117:118], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[119:120], v[115:116], v[87:94] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[95:102], v[123:124], v[117:118], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[123:124], v[115:116], v[103:110] neg_lo:[1,1,0]
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_lg_u32 s6, s16
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(18)
	ds_store_b16 v65, v127 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v66, v144, v145 offset1:8
	.loc	1 168 18 is_stmt 1              ; generate_amdgcn.py:168:18
	v_lshlrev_b32_e32 v112, 16, v126
	v_lshlrev_b32_e32 v111, 16, v125
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v70, s3, v70
	v_add_nc_u32_e32 v75, s35, v75
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v114, 16, v131
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v87, v112, v87
	v_mul_f32_e32 v90, v112, v90
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v104, v112, v104 :: v_dual_add_nc_u32 v71, s3, v71
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v82, v111, v82
	v_mul_f32_e32 v79, v111, v79
	v_mul_f32_e32 v80, v111, v80
	v_mul_f32_e32 v81, v111, v81
	v_dual_mul_f32 v83, v111, v83 :: v_dual_mul_f32 v106, v112, v106
	v_dual_mul_f32 v91, v112, v91 :: v_dual_mul_f32 v98, v111, v98
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v96, v111, v96
	v_dual_mul_f32 v95, v111, v95 :: v_dual_mul_f32 v92, v112, v92
	v_dual_mul_f32 v97, v111, v97 :: v_dual_mul_f32 v108, v112, v108
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v84, v111, v84 :: v_dual_mul_f32 v103, v112, v103
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v100, v111, v100 :: v_dual_mul_f32 v105, v112, v105
	v_dual_mul_f32 v99, v111, v99 :: v_dual_mul_f32 v94, v112, v94
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v86, v111, v86 :: v_dual_mul_f32 v107, v112, v107
	v_dual_mul_f32 v85, v111, v85 :: v_dual_mul_f32 v110, v112, v110
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v102, v111, v102 :: v_dual_mul_f32 v93, v112, v93
	v_mul_f32_e32 v101, v111, v101
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v34, v82, v114 :: v_dual_lshlrev_b32 v111, 16, v128
	v_dual_fmac_f32 v30, v90, v114 :: v_dual_lshlrev_b32 v115, 16, v132
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v89, v112, v89 :: v_dual_add_nc_u32 v74, s35, v74
	v_mul_f32_e32 v88, v112, v88
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v109, v112, v109 :: v_dual_lshlrev_b32 v116, 16, v134
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v41, v79, v111 :: v_dual_lshlrev_b32 v112, 16, v129
	v_dual_fmac_f32 v40, v87, v111 :: v_dual_lshlrev_b32 v113, 16, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v38, v80, v112 :: v_dual_lshlrev_b32 v117, 16, v135
	v_dual_fmac_f32 v33, v81, v113 :: v_dual_lshlrev_b32 v118, 16, v136
	v_dual_fmac_f32 v36, v88, v112 :: v_dual_lshlrev_b32 v119, 16, v137
	v_dual_fmac_f32 v25, v83, v115 :: v_dual_lshlrev_b32 v120, 16, v133
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v121, 16, v138
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v29, v89, v113 :: v_dual_lshlrev_b32 v122, 16, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v22, v92, v120 :: v_dual_lshlrev_b32 v123, 16, v141
	v_dual_fmac_f32 v21, v91, v115 :: v_dual_lshlrev_b32 v124, 16, v142
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v125, 16, v143
	v_lshlrev_b32_e32 v126, 16, v139
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v26, v84, v120
	v_dual_fmac_f32 v11, v85, v124 :: v_dual_fmac_f32 v10, v86, v123
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v35, v104, v116
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v12, v93, v124 :: v_dual_fmac_f32 v13, v94, v123
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v18, v103, v117 :: v_dual_fmac_f32 v27, v105, v119
	v_fmac_f32_e32 v28, v106, v118
	v_dual_fmac_f32 v19, v107, v122 :: v_dual_fmac_f32 v20, v108, v121
	v_dual_fmac_f32 v14, v109, v126 :: v_dual_fmac_f32 v15, v110, v125
	v_dual_fmac_f32 v39, v95, v117 :: v_dual_fmac_f32 v32, v98, v118
	v_dual_fmac_f32 v37, v96, v116 :: v_dual_fmac_f32 v16, v101, v126
	v_dual_fmac_f32 v31, v97, v119 :: v_dual_fmac_f32 v24, v100, v121
	v_fmac_f32_e32 v23, v99, v122
	v_fmac_f32_e32 v17, v102, v125
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v9, v63
.LBB0_7:                                ; %._crit_edge
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_or_b32_e32 v74, v64, v45
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_mul_i32 s0, s33, s7
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s1, s1, 0
	v_add_nc_u32_e32 v82, 0, v54
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	s_add_i32 s0, s0, s1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v76, 32, v74
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v1, s7, v74
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_cndmask_b32_e64 v45, 0, 1, s2
	v_add_nc_u32_e32 v72, 0, v62
	v_add_nc_u32_e32 v66, 0, v61
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v2, s7, v76
	v_add_nc_u32_e32 v75, 0, v60
	v_add_nc_u32_e32 v77, 0, v59
	v_add_nc_u32_e32 v68, 0, v58
	.loc	1 168 18 is_stmt 0              ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v1, s0, v1, 1
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v71, 0, v57
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v67, 0, v56
	v_add_lshl_u32 v2, s0, v2, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	v_cmp_ne_u32_e64 s0, 1, v45
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v73, 0, v55
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v78, 0, v52
	s_clause 0x1
	buffer_load_u16 v85, v1, s[36:39], 0 offen
	buffer_load_u16 v86, v2, s[36:39], 0 offen
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v1, 0, v50
	.loc	1 189 26                        ; generate_amdgcn.py:189:26
	v_add_nc_u32_e32 v2, 0, v53
	v_mov_b32_e32 v53, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[5:8], v1 offset0:8 offset1:9
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[1:4], v2 offset0:8 offset1:9
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v92, 0, v51
	v_add_nc_u32_e32 v93, 0, v49
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v80, 0, v48
	v_add_nc_u32_e32 v81, 0, v47
	v_add_nc_u32_e32 v79, 0, v46
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v91, 0, v9
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v9, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v46, 0
	v_mov_b32_e32 v47, 0
	.loc	1 194 27 is_stmt 1              ; generate_amdgcn.py:194:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	ds_load_u8 v9, v92
	ds_load_u8 v45, v93
	ds_load_u8 v46, v82
	ds_load_u8 v47, v91
	ds_load_u8 v48, v80
	ds_load_u8 v49, v81
	ds_load_u8 v50, v78
	ds_load_u8 v51, v79
	ds_load_u8 v52, v75
	ds_load_u8 v54, v77
	ds_load_u8 v55, v72
	ds_load_u8 v56, v73
	ds_load_u8 v57, v68
	ds_load_u8 v58, v71
	ds_load_u8 v59, v66
	ds_load_u8 v60, v67
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v45, v9, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v101, s11 :: v_dual_mov_b32 v100, s10
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v45, v50, v46, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v47, v47, v51, 0xc0c0004
	v_perm_b32 v48, v49, v48, 0xc0c0004
	v_dual_mov_b32 v99, s9 :: v_dual_mov_b32 v98, s8
	v_lshl_or_b32 v46, v45, 16, v9
	v_dual_mov_b32 v97, s7 :: v_dual_mov_b32 v96, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v45, v48, 16, v47
	v_dual_mov_b32 v95, s5 :: v_dual_mov_b32 v94, s4
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v54, v52, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v47, v59, v55, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v56, v60, 0xc0c0004
	v_perm_b32 v50, v58, v57, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[55:62], v[45:46], v[5:6], v[94:101] neg_lo:[1,1,0]
	v_lshl_or_b32 v48, v47, 16, v9
	v_wmma_i32_16x16x16_iu4 v[94:101], v[45:46], v[7:8], v[94:101] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v50, 16, v49
	v_wmma_i32_16x16x16_iu4 v[55:62], v[47:48], v[1:2], v[55:62] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[47:48], v[3:4], v[94:101] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v54, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v55, v57
	v_cvt_f32_i32_e32 v57, v58
	v_cvt_f32_i32_e32 v51, v59
	v_cvt_f32_i32_e32 v52, v60
	v_cvt_f32_i32_e32 v9, v61
	v_cvt_f32_i32_e32 v45, v62
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v90, v95
	v_cvt_f32_i32_e32 v69, v96
	v_cvt_f32_i32_e32 v70, v97
	v_cvt_f32_i32_e32 v64, v98
	v_cvt_f32_i32_e32 v65, v99
	v_cvt_f32_i32_e32 v46, v100
	v_cvt_f32_i32_e32 v47, v101
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v63, 0
	v_mov_b32_e32 v50, 0
	.loc	1 202 36 is_stmt 1              ; generate_amdgcn.py:202:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v48, v92 offset:2048
	ds_load_u8 v49, v93 offset:2048
	ds_load_u8 v50, v82 offset:2048
	ds_load_u8 v53, v91 offset:2048
	ds_load_u8 v58, v80 offset:2048
	ds_load_u8 v59, v81 offset:2048
	ds_load_u8 v60, v78 offset:2048
	ds_load_u8 v61, v79 offset:2048
	ds_load_u8 v62, v75 offset:2048
	ds_load_u8 v63, v77 offset:2048
	ds_load_u8 v72, v72 offset:2048
	ds_load_u8 v73, v73 offset:2048
	ds_load_u8 v68, v68 offset:2048
	ds_load_u8 v71, v71 offset:2048
	ds_load_u8 v66, v66 offset:2048
	ds_load_u8 v67, v67 offset:2048
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v101, s11 :: v_dual_mov_b32 v100, s10
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v49, v60, v50, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v53, v61, 0xc0c0004
	v_perm_b32 v53, v59, v58, 0xc0c0004
	v_dual_mov_b32 v99, s9 :: v_dual_mov_b32 v98, s8
	v_lshl_or_b32 v49, v49, 16, v48
	v_dual_mov_b32 v97, s7 :: v_dual_mov_b32 v96, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v48, v53, 16, v50
	v_dual_mov_b32 v95, s5 :: v_dual_mov_b32 v94, s4
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v50, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v53, v66, v72, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v73, v67, 0xc0c0004
	v_perm_b32 v59, v71, v68, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[77:84], v[48:49], v[5:6], v[94:101] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v53, 16, v50
	v_wmma_i32_16x16x16_iu4 v[94:101], v[48:49], v[7:8], v[94:101] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v5, v59, 16, v58
	v_wmma_i32_16x16x16_iu4 v[77:84], v[5:6], v[1:2], v[77:84] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[5:6], v[3:4], v[94:101] neg_lo:[1,1,0]
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v53, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v61, v78
	v_cvt_f32_i32_e32 v60, v79
	v_cvt_f32_i32_e32 v62, v80
	v_cvt_f32_i32_e32 v58, v81
	v_cvt_f32_i32_e32 v59, v82
	v_cvt_f32_i32_e32 v48, v83
	v_cvt_f32_i32_e32 v49, v84
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v87, v96
	v_cvt_f32_i32_e32 v88, v97
	v_cvt_f32_i32_e32 v83, v98
	v_cvt_f32_i32_e32 v84, v99
	v_cvt_f32_i32_e32 v50, v100
	v_cvt_f32_i32_e32 v63, v101
.LBB0_11:
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v1, v44, v43
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s1, s1, s34
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s17, s15, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s0, s26, s1
	s_mov_b32 s19, 0x31027000
	.loc	1 100 32 is_stmt 1              ; generate_amdgcn.py:100:32
	v_or_b32_e32 v2, 2, v1
	v_or_b32_e32 v3, 4, v1
	v_or_b32_e32 v4, 6, v1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v7, s0, v1, 1
	.loc	1 208 35                        ; generate_amdgcn.py:208:35
	s_add_i32 s1, s0, s27
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v8, s0, v2, 1
	v_add_lshl_u32 v43, s0, v3, 1
	v_add_lshl_u32 v66, s0, v4, 1
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v91, 12, v1
	v_or_b32_e32 v5, 8, v1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v73, s1, v1, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v6, 10, v1
	v_or_b32_e32 v44, 14, v1
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_mov_b32 s16, s14
	v_cndmask_b32_e64 v67, 0x80000000, v66, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v2, s1, v2, 1
	v_add_lshl_u32 v1, s1, v91, 1
	v_add_lshl_u32 v3, s1, v3, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v72, s0, v5, 1
	s_clause 0x3
	buffer_load_u16 v71, v7, s[16:19], 0 offen
	buffer_load_u16 v68, v8, s[16:19], 0 offen
	buffer_load_u16 v66, v43, s[16:19], 0 offen
	buffer_load_u16 v67, v67, s[16:19], 0 offen
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v43, 0x80000000, v73, s2
	v_add_lshl_u32 v4, s1, v4, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v8, s0, v6, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_lshl_u32 v6, s1, v6, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v7, 0x80000000, v72, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	buffer_load_u16 v72, v43, s[16:19], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_add_lshl_u32 v5, s1, v5, 1
	s_clause 0x2
	buffer_load_u16 v79, v2, s[16:19], 0 offen
	buffer_load_u16 v73, v3, s[16:19], 0 offen
	buffer_load_u16 v75, v4, s[16:19], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v6, s2
	buffer_load_u16 v6, v1, s[16:19], 0 offen
	v_add_lshl_u32 v43, s1, v44, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v3, 0x80000000, v5, s2
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v5.h, v85.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v91, s0, v91, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v4, 0x80000000, v43, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x4
	buffer_load_u16 v78, v8, s[16:19], 0 offen
	buffer_load_u16 v77, v7, s[16:19], 0 offen
	buffer_load_u16 v81, v2, s[16:19], 0 offen
	buffer_load_u16 v80, v3, s[16:19], 0 offen
	buffer_load_u16 v82, v4, s[16:19], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v4.l, 0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v4.h, v86.l
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v2, 0x78, v42
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v44, s0, v44, 1
	v_cndmask_b32_e64 v91, 0x80000000, v91, s2
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	v_mov_b16_e32 v5.l, v4.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v86, v89, v4
	v_mul_f32_e32 v92, v70, v4
	v_mul_f32_e32 v93, v69, v4
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v84, v84, v4
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v54, v54, v5
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v53, v53, v5
	v_mul_f32_e32 v59, v59, v5
	v_dual_mul_f32 v83, v83, v4 :: v_dual_mul_f32 v52, v52, v5
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v55, v55, v5
	v_mul_f32_e32 v85, v90, v4
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v90, v94, v4 :: v_dual_mul_f32 v61, v61, v5
	v_dual_mul_f32 v87, v87, v4 :: v_dual_mul_f32 v62, v62, v5
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v64, v64, v4 :: v_dual_mul_f32 v51, v51, v5
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v89, v95, v4 :: v_dual_mul_f32 v56, v56, v5
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v95, 0x80000000, v44, s2
	s_clause 0x1
	buffer_load_u16 v44, v91, s[16:19], 0 offen
	buffer_load_u16 v91, v95, s[16:19], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v65, v65, v4 :: v_dual_mul_f32 v60, v60, v5
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v63, v63, v4 :: v_dual_mul_f32 v58, v58, v5
	v_dual_mul_f32 v88, v88, v4 :: v_dual_mul_f32 v57, v57, v5
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v42.h, v4.l
	v_mov_b16_e32 v8.h, v4.l
	v_mov_b16_e32 v43.h, v4.l
	.loc	1 216 18 is_stmt 0              ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v1, s27, v76
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v76.h, v4.l
	v_mov_b16_e32 v7.h, v4.l
	v_mov_b16_e32 v70.h, v4.l
	v_mov_b16_e32 v69.h, v4.l
	v_mov_b16_e32 v94.h, v4.l
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v3, s27, v74
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v74.h, v4.l
	v_and_b32_e32 v0, 16, v0
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	s_mul_i32 s33, s33, s27
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_add3_u32 v2, s33, s26, v2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v71, 16, v71
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v86, v86, v71, v41
	v_fma_f32 v54, v54, v71, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v41, v41, v86, s2
	v_cndmask_b32_e64 v40, v40, v54, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v72, 16, v72
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v71, 16, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v53, v53, v72, v18
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v75, 16, v78
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v18, v18, v53, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v79, 16, v79
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v78, 16, v81
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v62, v62, v71, v28
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v52, v52, v75, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v59, v59, v78, v20
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v28, v28, v62, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v22, v22, v52, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v52, 0xbfb8aa3b, v18
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v61, v61, v79, v35
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v20, v20, v59, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v77, 16, v77
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v35, v35, v61, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v81, 16, v82
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v82, v90, v72, v39
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v62, 0xbfb8aa3b, v20
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v51, v51, v77, v21
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v73, 16, v73
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v52, 0, 0x42800000, s0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v39, v39, v82, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v21, v51, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v62
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v64, v64, v77, v25
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v39
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v72, v85, v68, v38
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v85, v89, v79, v37
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v56, v56, v68, v36
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v62, 0, 0x42800000, s10
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v38, v38, v72, s2
	v_cndmask_b32_e64 v37, v37, v85, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v36, v36, v56, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v25, v25, v64, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v53, 0xbfb8aa3b, v37
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v54, v93, v66, v33
	v_fma_f32 v55, v55, v66, v29
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v53
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v33, v33, v54, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v54, 0xbfb8aa3b, v35
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v60, v60, v73, v27
	v_fma_f32 v79, v87, v73, v31
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v29, v29, v55, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v53, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v54
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v27, v27, v60, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v80, 16, v80
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v31, v31, v79, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v62, v62
	v_cndmask_b32_e64 v54, 0, 0x42800000, s3
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v18
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v58, v58, v80, v19
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v55, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v35
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v19, v19, v58, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v58, 0xbfb8aa3b, v28
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v86, v88, v71, v32
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v55
	v_exp_f32_e32 v54, v54
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v58
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v32, v32, v86, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v67, 16, v67
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v55, 0, 0x42800000, s5
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v58, 0, 0x42800000, s6
	v_mul_f32_e32 v56, 0xbfb8aa3b, v32
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v57, v57, v67, v30
	v_fma_f32 v68, v92, v67, v34
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v67, v84, v78, v24
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v39 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v30, v30, v57, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v57, 0xbfb8aa3b, v27
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v66, v83, v80, v23
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v24, v24, v67, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v56
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v57
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v23, v23, v66, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v60, 0xbfb8aa3b, v24
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v65, v65, v75, v26
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v56, 0, 0x42800000, s4
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v31
	v_mul_f32_e32 v59, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v60
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v26, v26, v65, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s0
	v_dual_mul_f32 v61, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v60, 0, 0x42800000, s8
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v59
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v37
	v_cndmask_b32_e64 v57, 0, 0x42800000, s7
	v_exp_f32_e32 v55, v55
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v24
	v_cndmask_b32_e64 v59, 0, 0x42800000, s9
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v58, v58
	v_ldexp_f32 v52, v52, v65
	v_ldexp_f32 v54, v54, v67
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v61
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s6
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v27 :: v_dual_add_f32 v52, 1.0, v52
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v23 :: v_dual_add_f32 v54, 1.0, v54
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v56, v56
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v34, v34, v68, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v61, 0, 0x42800000, s11
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s10
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v60, v60
	v_exp_f32_e32 v59, v59
	v_ldexp_f32 v53, v53, v66
	v_ldexp_f32 v55, v55, v71
	v_ldexp_f32 v58, v58, v72
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_scale_f32 v66, null, v52, v52, v18
	v_div_scale_f32 v72, null, v54, v54, v35
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s9
	v_ldexp_f32 v51, v51, v64
	v_ldexp_f32 v56, v56, v68
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v19
	v_ldexp_f32 v62, v62, v78
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v96, v66
	v_rcp_f32_e32 v98, v72
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v57, v57, v73
	v_ldexp_f32 v60, v60, v75
	v_ldexp_f32 v59, v59, v77
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_dual_add_f32 v51, 1.0, v51 :: v_dual_add_f32 v58, 1.0, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v53, 1.0, v53 :: v_dual_add_f32 v60, 1.0, v60
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v61, v61
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v78, null, v55, v55, v31
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s11
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v64, null, v51, v51, v39
	v_div_scale_f32 v68, null, v53, v53, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v100, v78
	v_fma_f32 v108, -v66, v96, 1.0
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v110, -v72, v98, 1.0
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v61, v61, v79
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v80, null, v58, v58, v28
	v_rcp_f32_e32 v95, v64
	v_rcp_f32_e32 v97, v68
	v_fmac_f32_e32 v96, v108, v96
	v_div_scale_f32 v83, null, v57, v57, v27
	v_fmac_f32_e32 v98, v110, v98
	v_div_scale_f32 v87, null, v59, v59, v23
	v_div_scale_f32 v85, null, v60, v60, v24
	v_div_scale_f32 v75, null, v56, v56, v32
	v_rcp_f32_e32 v101, v80
	v_rcp_f32_e32 v102, v83
	v_rcp_f32_e32 v104, v87
	v_fma_f32 v112, -v78, v100, 1.0
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v103, v85
	v_rcp_f32_e32 v99, v75
	v_fma_f32 v107, -v64, v95, 1.0
	v_fma_f32 v109, -v68, v97, 1.0
	v_fmac_f32_e32 v100, v112, v100
	v_div_scale_f32 v92, null, v61, v61, v19
	v_div_scale_f32 v65, s0, v39, v51, v39
	v_div_scale_f32 v67, s1, v18, v52, v18
	v_div_scale_f32 v71, vcc_lo, v37, v53, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v106, v92
	v_fma_f32 v113, -v80, v101, 1.0
	v_fma_f32 v114, -v83, v102, 1.0
	v_fma_f32 v116, -v87, v104, 1.0
	v_fmac_f32_e32 v95, v107, v95
	v_fmac_f32_e32 v97, v109, v97
	v_div_scale_f32 v73, s3, v35, v54, v35
	v_div_scale_f32 v89, null, v62, v62, v20
	v_fma_f32 v115, -v85, v103, 1.0
	v_div_scale_f32 v84, s7, v27, v57, v27
	v_div_scale_f32 v88, s9, v23, v59, v23
	v_fma_f32 v111, -v75, v99, 1.0
	v_dual_fmac_f32 v101, v113, v101 :: v_dual_mul_f32 v108, v67, v96
	v_fmac_f32_e32 v102, v114, v102
	v_dual_fmac_f32 v104, v116, v104 :: v_dual_mul_f32 v107, v65, v95
	v_mul_f32_e32 v109, v71, v97
	v_rcp_f32_e32 v105, v89
	v_dual_fmac_f32 v103, v115, v103 :: v_dual_mul_f32 v110, v73, v98
	v_div_scale_f32 v77, s4, v32, v56, v32
	v_fma_f32 v118, -v92, v106, 1.0
	v_dual_fmac_f32 v99, v111, v99 :: v_dual_mul_f32 v114, v84, v102
	v_mul_f32_e32 v116, v88, v104
	v_fma_f32 v119, -v64, v107, v65
	v_fma_f32 v120, -v66, v108, v67
	v_fma_f32 v121, -v68, v109, v71
	v_fma_f32 v122, -v72, v110, v73
	v_dual_fmac_f32 v106, v118, v106 :: v_dual_mul_f32 v111, v77, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v108, v120, v96
	v_fma_f32 v126, -v83, v114, v84
	v_dual_fmac_f32 v107, v119, v95 :: v_dual_fmac_f32 v110, v122, v98
	v_fmac_f32_e32 v109, v121, v97
	v_div_scale_f32 v79, s5, v31, v55, v31
	v_div_scale_f32 v82, s6, v28, v58, v28
	v_div_scale_f32 v93, s11, v19, v61, v19
	v_fma_f32 v117, -v89, v105, 1.0
	v_fmac_f32_e32 v114, v126, v102
	v_fma_f32 v64, -v64, v107, v65
	v_fma_f32 v65, -v66, v108, v67
	v_fma_f32 v66, -v68, v109, v71
	v_dual_fmac_f32 v105, v117, v105 :: v_dual_mul_f32 v112, v79, v100
	v_dual_mul_f32 v113, v82, v101 :: v_dual_mul_f32 v118, v93, v106
	v_fma_f32 v123, -v75, v111, v77
	v_fma_f32 v67, -v72, v110, v73
	v_div_fmas_f32 v66, v66, v97, v109
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v86, s8, v24, v60, v24
	v_div_fmas_f32 v64, v64, v95, v107
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v124, -v78, v112, v79
	v_fma_f32 v130, -v92, v118, v93
	v_fmac_f32_e32 v111, v123, v99
	v_div_fmas_f32 v67, v67, v98, v110
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v125, -v80, v113, v82
	v_div_fixup_f32 v37, v66, v53, v37
	v_div_fmas_f32 v53, v65, v96, v108
	v_div_scale_f32 v90, s10, v20, v62, v20
	v_div_fixup_f32 v39, v64, v51, v39
	v_dual_mul_f32 v115, v86, v103 :: v_dual_fmac_f32 v112, v124, v100
	v_fmac_f32_e32 v118, v130, v106
	v_fma_f32 v68, -v75, v111, v77
	v_div_fixup_f32 v18, v53, v52, v18
	v_fmac_f32_e32 v113, v125, v101
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v128, -v87, v116, v88
	v_mul_f32_e32 v117, v90, v105
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v39, v41, v39
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v127, -v85, v115, v86
	v_fma_f32 v71, -v78, v112, v79
	v_div_fmas_f32 v51, v68, v99, v111
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v18, v40, v18
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v72, -v80, v113, v82
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v116, v128, v104
	v_fma_f32 v129, -v89, v117, v90
	v_fma_f32 v73, -v83, v114, v84
	v_div_fixup_f32 v35, v67, v54, v35
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v42.l, v39.h
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v37, v38, v37
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v38, v71, v100, v112
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v32, v51, v56, v32
	v_fmac_f32_e32 v115, v127, v103
	v_div_fmas_f32 v41, v72, v101, v113
	s_mov_b32 vcc_lo, s7
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v35, v36, v35
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v36, v73, v102, v114
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_and_b32_e32 v40, 1, v42
	v_mov_b16_e32 v43.l, v37.h
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_dual_fmac_f32 v117, v129, v105 :: v_dual_mul_f32 v32, v34, v32
	v_fma_f32 v75, -v85, v115, v86
	v_fma_f32 v77, -v87, v116, v88
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v31, v38, v55, v31
	v_div_fixup_f32 v27, v36, v57, v27
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v36, 1, v43
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v78, -v89, v117, v90
	v_div_fmas_f32 v38, v75, v103, v115
	s_mov_b32 vcc_lo, s9
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v76.l, v32.h
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v34, v77, v104, v116
	s_mov_b32 vcc_lo, s10
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v31, v33, v31
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v33, v78, v105, v117
	v_div_fixup_f32 v28, v41, v58, v28
	v_fma_f32 v79, -v92, v118, v93
	s_mov_b32 vcc_lo, s11
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v7.l, v18.h
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v20, v33, v62, v20
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v27, v29, v27 :: v_dual_mul_f32 v28, v30, v28
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v30, v79, v106, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v20, v22, v20 :: v_dual_and_b32 v7, 1, v7
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v70.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v69.l, v28.h
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v19, v30, v61, v19
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s4, v18, v18
	v_add3_u32 v7, v18, v7, 0x7fff
	v_and_b32_e32 v22, 1, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v19, v21, v19 :: v_dual_and_b32 v18, 1, v69
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s7, v27, v27
	v_cmp_o_f32_e64 s1, v39, v39
	v_add3_u32 v22, v27, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v18, v28, v18, 0x7fff
	v_mov_b16_e32 v22.l, v19.h
	v_add3_u32 v33, v39, v40, 0x7fff
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v24, v38, v60, v24
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v18.l, 0x7fff, v22.h, s7
	v_mov_b16_e32 v22.h, v4.l
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v23, v34, v59, v23
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v27, v50, v4 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v8.l, v35.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_dual_mul_f32 v23, v25, v23 :: v_dual_and_b32 v22, 1, v22
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v29, v37, v36, 0x7fff
	v_and_b32_e32 v30, 1, v76
	v_cndmask_b16 v29.l, 0x7fff, v33.h, s1
	v_add3_u32 v22, v19, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v19, v19
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v19, v26, v24
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v25, v27, v6, v16
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v8, 1, v8
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_add3_u32 v21, v32, v30, 0x7fff
	v_mov_b16_e32 v94.l, v20.h
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v16, v16, v25, s2
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v25, v49, v5
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v8, v35, v8, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v7.h, s4
	v_cndmask_b16 v7.h, 0x7fff, v21.h, vcc_lo
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v21, v63, v81, v17
	v_fma_f32 v25, v25, v81, v15
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s0, v37, v37
	v_mov_b16_e32 v22.l, v19.h
	v_mov_b16_e32 v74.l, v31.h
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v17, v17, v21, s2
	v_cndmask_b32_e64 v15, v15, v25, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v21, 1, v94
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s0
	v_cmp_o_f32_e64 s0, v20, v20
	v_cmp_o_f32_e64 s3, v35, v35
	v_cmp_o_f32_e64 s6, v28, v28
	v_add3_u32 v21, v20, v21, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v22.h, s1
	v_mov_b16_e32 v22.h, v4.l
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v26, v48, v5 :: v_dual_and_b32 v35, 1, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s0
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_dual_mul_f32 v21, 0xbfb8aa3b, v16 :: v_dual_and_b32 v22, 1, v22
	v_mul_f32_e32 v28, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v6, v26, v6, v14
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s5, v31, v31
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v21
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v30, v31, v35, 0x7fff
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v6, v14, v6, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v91
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, s0
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v7.l, 0x7fff, v30.h, s5
	v_add3_u32 v22, v19, v22, 0x7fff
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v16
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v25.l, v23.h
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v17
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v25.h, v4.l
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s3
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v14, v21
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s6
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v24, v27
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v14, v14, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v24, v24, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v30, null, v14, v14, v16
	v_div_scale_f32 v37, s1, v16, v14, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v34, v30
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_dual_add_f32 v21, 1.0, v24 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v15
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v15
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v24, v24, v31
	v_mul_f32_e32 v27, 0xbfb8aa3b, v6
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_fma_f32 v31, -v30, v34, 1.0
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v34, v31, v34
	v_div_scale_f32 v28, null, v21, v21, v17
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v27, 0, 0x42800000, s0
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s0
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v26, v28
	v_dual_mul_f32 v42, v37, v34 :: v_dual_lshlrev_b32 v39, 16, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_dual_fmac_f32 v27, 0xbfb8aa3b, v6 :: v_dual_mul_f32 v44, v46, v4
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_add3_u32 v25, v23, v25, 0x7fff
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v46, -v30, v42, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v27, v27
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v32, -v28, v26, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v46, v34
	.loc	1 206 13 is_stmt 1              ; generate_amdgcn.py:206:13
	v_fma_f32 v44, v44, v39, v11
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v26, v32, v26
	v_div_scale_f32 v32, null, v24, v24, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_ldexp_f32 v19, v27, v33
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v27, s0, v17, v21, v17
	v_rcp_f32_e32 v36, v32
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_mul_f32_e32 v35, v27, v26
	v_fma_f32 v30, -v30, v42, v37
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v11, v11, v44, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_eq_u32_e64 s0, 0, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v33, null, v19, v19, v6
	v_fma_f32 v40, -v28, v35, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v32, v36, 1.0
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b32_e32 v0, 0x5410
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v31, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v40, v26 :: v_dual_fmac_f32 v36, v43, v36
	v_div_scale_f32 v43, s3, v15, v24, v15
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v27, -v28, v35, v27
	v_mul_f32_e32 v28, v43, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v33, v31, 1.0
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_lshl_or_b32 v0, v0, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v26, v27, v26, v35
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v27, -v32, v28, v43
	v_fmac_f32_e32 v31, v40, v31
	v_div_scale_f32 v40, s4, v6, v19, v6
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v37, v45, v5 :: v_dual_fmac_f32 v28, v27, v36
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v0, 0x540054, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_mul_f32_e32 v46, v40, v31
	v_fma_f32 v27, -v32, v28, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v35, -v33, v46, v40
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v5, v9, v5
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v9, v30, v34, v42
	s_mov_b32 vcc_lo, s3
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v30, v37, v38, v13
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v46, v35, v31
	v_div_fmas_f32 v27, v27, v36, v28
	s_mov_b32 vcc_lo, s4
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v5, v5, v39, v12
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v13, v13, v30, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v32, -v33, v46, v40
	v_div_fixup_f32 v15, v27, v24, v15
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v41, v47, v4
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v5, v12, v5, s2
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v9, v9, v14, v16
	v_div_fmas_f32 v28, v32, v31, v46
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v12, v13, v15
	.loc	1 206 13 is_stmt 1              ; generate_amdgcn.py:206:13
	v_fma_f32 v31, v41, v38, v10
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v13.h, v4.l
	v_mov_b16_e32 v14.h, v4.l
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v6, v28, v19, v6
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v13.l, v12.h
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, v10, v31, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v9, v11, v9
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v5, v5, v6
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v6, v26, v21, v17
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_and_b32_e32 v0, 0x5040504, v0
	v_cmp_o_f32_e64 s2, v9, v9
	v_cndmask_b16 v22.l, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v6, v10, v6
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v10, 1, v13
	v_mov_b16_e32 v14.l, v5.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v13.l, v6.h
	v_add3_u32 v4, v12, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v11, 1, v14
	v_mov_b16_e32 v14.l, v9.h
	v_cmp_o_f32_e64 s1, v6, v6
	v_and_b32_e32 v12, 1, v13
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_add3_u32 v10, v5, v11, 0x7fff
	v_and_b32_e32 v11, 1, v14
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v5, v9, v11, 0x7fff
	v_add3_u32 v11, v6, v12, 0x7fff
	v_mov_b32_e32 v12, 0x7632
	v_cndmask_b16 v4.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b32_e64 v6, v20, v8, s0
	v_cndmask_b16 v10.l, 0x7fff, v5.h, s2
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s1
	v_cndmask_b32_e64 v9, 0x3276, v12, s0
	v_cndmask_b32_e64 v8, v8, v20, s0
	v_cndmask_b32_e64 v12, v29, v22, s0
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v13, v10, v7, s0
	v_lshl_or_b32 v5, v9, 8, v9
	v_cndmask_b32_e64 v9, v4, v18, s0
	v_cndmask_b32_e64 v4, v18, v4, s0
	v_cndmask_b32_e64 v7, v7, v10, s0
	v_cndmask_b32_e64 v11, v22, v29, s0
	v_and_b32_e32 v5, 0x760076, v5
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v5, 4, v5
	v_perm_b32 v4, v8, v6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 0x7060706, v5
	v_perm_b32 v5, v8, v6, v14
	v_perm_b32 v6, v10, v9, v0
	v_perm_b32 v7, v10, v9, v14
	v_perm_b32 v8, v12, v11, v0
	v_perm_b32 v10, v15, v13, v0
	v_add_lshl_u32 v0, v2, v3, 1
	v_perm_b32 v9, v12, v11, v14
	v_perm_b32 v11, v15, v13, v14
	s_clause 0x1
	buffer_store_b128 v[4:7], v0, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v1, s[24:27], 0 offen
	.loc	1 80 1                          ; generate_amdgcn.py:80:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 146
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 146
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9272
; TotalNumSgprs: 51
; NumVgprs: 146
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 146
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     146
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
