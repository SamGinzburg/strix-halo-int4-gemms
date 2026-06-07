	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[10:11], s[0:1], 0x30
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v131, 3, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshrrev_b32_e32 v4, 5, v0
	v_lshlrev_b32_e32 v13, 2, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v16, v0, 5, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v2, 0xf8, v131
	v_lshrrev_b32_e32 v17, 1, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v18, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v16, 0x88, v16
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v17, 0x70, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v130, v17, v18
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s11, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s10, 0x7f
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s10, s10, 25
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s8, s8, 7
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s12, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s12, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_load_b128 s[12:15], s[0:1], 0x0
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s6, s5, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s5, s4
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s8, s6
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_f32_u32 s9, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_load_b32 s9, s[0:1], 0x38
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[14:15]
	s_sub_i32 s14, 0, s8
	s_mov_b32 s15, 0x31027000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s10, v1
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v1, 12, v13
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v13, 0x77c, v13
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s10, s10, 0x4f7ffffe
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v132, v16, v13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s10
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v13, 0, v132
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s14, s14, s10
	s_mul_hi_u32 s4, s10, s14
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s10, s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s10
	s_xor_b32 s10, s2, s7
	s_mul_i32 s18, s4, s8
	s_ashr_i32 s22, s10, 31
	s_sub_i32 s5, s5, s18
	s_add_i32 s10, s4, 1
	s_sub_i32 s19, s5, s8
	s_cmp_ge_u32 s5, s8
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s18, s14
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s19, s15
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s4, s10, s4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s5, s9, 31
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s8, s11, 1
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s29, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s24, s4, s22
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s9, s5
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s5, s8, s29
	v_mad_u64_u32 v[5:6], null, s8, v4, v[2:3]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s8, s24, s22
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s28, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s8, s7
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mul_lo_u32 v6, s28, v3
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s4, s2, s4
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v7, s29, v1
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s6
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v8, s29, v4
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s20, s4, 7
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s10, s8, 8
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s4, s20, s28
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v7
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s28, v8
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v6, v6, v1, s4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s9, 1
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v5, s5, s10, v5
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s23, -1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 s2, s23, s2
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v8, s29, v6
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s23, vcc_lo
	s_cmp_gt_i32 s9, 33
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v7, s11, v5
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s21, -1, 0
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s4, s29, 16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v14, 0x80000000, v8, vcc_lo
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v10, s4, v1
	v_or_b32_e32 v11, s4, v4
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_lshl_add_u32 v9, s11, 5, v5
	.loc	1 117 22 is_stmt 0              ; generate_amdgcn.py:117:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 125 31 is_stmt 1              ; generate_amdgcn.py:125:31
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v10
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v15, s4, v6
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s28, v11
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v12, s11, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b64 v[5:6], v5, s[16:19], 0 offen
	buffer_load_b64 v[7:8], v7, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_b32 v14, v14, s[12:15], 0 offen
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s21, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v10, 0x80000000, v15, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s21, s2
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_add_nc_u32 v16, 0, v131
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e32 v11, 0x80000000, v12, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_b32 v15, v10, s[12:15], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b64 v[9:10], v9, s[16:19], 0 offen
	buffer_load_b64 v[11:12], v11, s[16:19], 0 offen
	s_mov_b32 s18, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_gt_i32 s9, 0x41
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(3)
	ds_store_b32 v13, v14 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_store_2addr_stride64_b64 v16, v[5:6], v[7:8] offset1:16
	v_and_b32_e32 v5, 0x108, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v13, v15 offset:18432
	.loc	1 0 0                           ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v16, v[9:10], v[11:12] offset0:8 offset1:24
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_lshl_or_b32 v210, v18, 4, v5
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v228, v17, v18
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v211, 8, v210
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v230, 0x100, v228
	v_or_b32_e32 v226, 0x200, v228
	v_or_b32_e32 v234, 0x300, v228
	v_or_b32_e32 v231, 0x400, v228
	v_or_b32_e32 v233, 0x500, v228
	v_or_b32_e32 v235, 0x600, v228
	v_or_b32_e32 v237, 0x700, v228
	v_or_b32_e32 v220, 0x800, v228
	v_or_b32_e32 v221, 0x900, v228
	v_or_b32_e32 v224, 0xa00, v228
	v_or_b32_e32 v222, 0xb00, v228
	v_or_b32_e32 v223, 0xc00, v228
	v_or_b32_e32 v225, 0xd00, v228
	v_or_b32_e32 v227, 0xe00, v228
	v_or_b32_e32 v232, 0xf00, v228
	v_or_b32_e32 v236, 0x80, v228
	v_or_b32_e32 v238, 0x180, v228
	v_or_b32_e32 v246, 0x280, v228
	v_or_b32_e32 v247, 0x380, v228
	v_or_b32_e32 v239, 0x480, v228
	v_or_b32_e32 v240, 0x580, v228
	v_or_b32_e32 v241, 0x680, v228
	v_or_b32_e32 v242, 0x780, v228
	v_or_b32_e32 v243, 0x880, v228
	v_or_b32_e32 v244, 0x980, v228
	v_or_b32_e32 v245, 0xa80, v228
	v_or_b32_e32 v249, 0xb80, v228
	v_or_b32_e32 v250, 0xc80, v228
	v_or_b32_e32 v248, 0xd80, v228
	v_or_b32_e32 v229, 0xe80, v228
	v_or_b32_e32 v0, 0xf80, v228
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr210
                                        ; implicit-def: $vgpr211
                                        ; implicit-def: $vgpr228
                                        ; implicit-def: $vgpr230
                                        ; implicit-def: $vgpr226
                                        ; implicit-def: $vgpr234
                                        ; implicit-def: $vgpr231
                                        ; implicit-def: $vgpr233
                                        ; implicit-def: $vgpr235
                                        ; implicit-def: $vgpr237
                                        ; implicit-def: $vgpr220
                                        ; implicit-def: $vgpr221
                                        ; implicit-def: $vgpr224
                                        ; implicit-def: $vgpr222
                                        ; implicit-def: $vgpr223
                                        ; implicit-def: $vgpr225
                                        ; implicit-def: $vgpr227
                                        ; implicit-def: $vgpr232
                                        ; implicit-def: $vgpr236
                                        ; implicit-def: $vgpr238
                                        ; implicit-def: $vgpr246
                                        ; implicit-def: $vgpr247
                                        ; implicit-def: $vgpr239
                                        ; implicit-def: $vgpr240
                                        ; implicit-def: $vgpr241
                                        ; implicit-def: $vgpr242
                                        ; implicit-def: $vgpr243
                                        ; implicit-def: $vgpr244
                                        ; implicit-def: $vgpr245
                                        ; implicit-def: $vgpr249
                                        ; implicit-def: $vgpr250
                                        ; implicit-def: $vgpr248
                                        ; implicit-def: $vgpr229
                                        ; implicit-def: $vgpr0
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s25, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v3, s20, v3
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	v_lshlrev_b32_e32 v6, 1, v4
	v_sub_nc_u32_e32 v134, s28, v4
	v_lshl_or_b32 v210, v18, 4, v5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s0, s28, 15
	v_mov_b32_e32 v35, v34
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_lshl_or_b32 v4, s3, 5, v6
	s_lshl_b32 s1, s24, 8
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s0, s0, 4
	v_mov_b32_e32 v36, v34
	v_mov_b32_e32 v37, v34
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v5, 0x41, v4
	v_add_nc_u32_e32 v4, 64, v4
	v_sub_nc_u32_e64 v6, s0, 3 clamp
	s_lshl_b32 s2, s22, 8
	v_sub_nc_u32_e32 v133, s28, v1
	v_mul_lo_u32 v5, s11, v5
	v_mul_lo_u32 v4, s11, v4
	v_readfirstlane_b32 s0, v6
	v_xor_b32_e32 v211, 8, v210
	v_mov_b32_e32 v38, v34
	v_mov_b32_e32 v39, v34
	v_mov_b32_e32 v40, v34
	v_mov_b32_e32 v41, v34
	v_add3_u32 v5, v5, s1, v2
	v_add3_u32 v2, v4, s1, v2
	v_mov_b32_e32 v58, v34
	v_mov_b32_e32 v59, v34
	v_mov_b32_e32 v60, v34
	v_subrev_nc_u32_e32 v135, s2, v5
	v_mad_u64_u32 v[9:10], null, s28, v3, v[1:2]
	v_subrev_nc_u32_e32 v136, s2, v2
	v_mov_b32_e32 v61, v34
	v_mov_b32_e32 v62, v34
	v_mov_b32_e32 v63, v34
	v_mov_b32_e32 v64, v34
	v_mov_b32_e32 v65, v34
	v_mov_b32_e32 v50, v34
	v_mov_b32_e32 v51, v34
	v_mov_b32_e32 v52, v34
	v_mov_b32_e32 v53, v34
	v_mov_b32_e32 v54, v34
	v_mov_b32_e32 v55, v34
	v_mov_b32_e32 v56, v34
	v_mov_b32_e32 v57, v34
	v_mov_b32_e32 v42, v34
	v_mov_b32_e32 v43, v34
	v_mov_b32_e32 v44, v34
	v_mov_b32_e32 v45, v34
	v_mov_b32_e32 v46, v34
	v_mov_b32_e32 v47, v34
	v_mov_b32_e32 v48, v34
	v_mov_b32_e32 v49, v34
	v_mov_b32_e32 v26, v34
	v_mov_b32_e32 v27, v34
	v_mov_b32_e32 v28, v34
	v_mov_b32_e32 v29, v34
	v_mov_b32_e32 v30, v34
	v_mov_b32_e32 v31, v34
	v_mov_b32_e32 v32, v34
	v_mov_b32_e32 v33, v34
	v_mov_b32_e32 v18, v34
	v_mov_b32_e32 v19, v34
	v_mov_b32_e32 v20, v34
	v_mov_b32_e32 v21, v34
	v_mov_b32_e32 v22, v34
	v_mov_b32_e32 v23, v34
	v_mov_b32_e32 v24, v34
	v_mov_b32_e32 v25, v34
	v_mov_b32_e32 v10, v34
	v_mov_b32_e32 v11, v34
	v_mov_b32_e32 v12, v34
	v_mov_b32_e32 v13, v34
	v_mov_b32_e32 v14, v34
	v_mov_b32_e32 v15, v34
	v_mov_b32_e32 v16, v34
	v_mov_b32_e32 v17, v34
	v_mov_b32_e32 v1, v34
	v_mov_b32_e32 v2, v34
	v_mov_b32_e32 v3, v34
	v_mov_b32_e32 v4, v34
	v_mov_b32_e32 v5, v34
	v_mov_b32_e32 v6, v34
	v_mov_b32_e32 v7, v34
	v_mov_b32_e32 v8, v34
	v_mov_b32_e32 v66, v34
	v_mov_b32_e32 v67, v34
	v_mov_b32_e32 v68, v34
	v_mov_b32_e32 v69, v34
	v_mov_b32_e32 v70, v34
	v_mov_b32_e32 v71, v34
	v_mov_b32_e32 v72, v34
	v_mov_b32_e32 v73, v34
	v_mov_b32_e32 v74, v34
	v_mov_b32_e32 v75, v34
	v_mov_b32_e32 v76, v34
	v_mov_b32_e32 v77, v34
	v_mov_b32_e32 v78, v34
	v_mov_b32_e32 v79, v34
	v_mov_b32_e32 v80, v34
	v_mov_b32_e32 v81, v34
	v_mov_b32_e32 v82, v34
	v_mov_b32_e32 v83, v34
	v_mov_b32_e32 v84, v34
	v_mov_b32_e32 v85, v34
	v_mov_b32_e32 v86, v34
	v_mov_b32_e32 v87, v34
	v_mov_b32_e32 v88, v34
	v_mov_b32_e32 v89, v34
	v_mov_b32_e32 v90, v34
	v_mov_b32_e32 v91, v34
	v_mov_b32_e32 v92, v34
	v_mov_b32_e32 v93, v34
	v_mov_b32_e32 v94, v34
	v_mov_b32_e32 v95, v34
	v_mov_b32_e32 v96, v34
	v_mov_b32_e32 v97, v34
	v_mov_b32_e32 v98, v34
	v_mov_b32_e32 v99, v34
	v_mov_b32_e32 v100, v34
	v_mov_b32_e32 v101, v34
	v_mov_b32_e32 v102, v34
	v_mov_b32_e32 v103, v34
	v_mov_b32_e32 v104, v34
	v_mov_b32_e32 v105, v34
	v_mov_b32_e32 v106, v34
	v_mov_b32_e32 v107, v34
	v_mov_b32_e32 v108, v34
	v_mov_b32_e32 v109, v34
	v_mov_b32_e32 v110, v34
	v_mov_b32_e32 v111, v34
	v_mov_b32_e32 v112, v34
	v_mov_b32_e32 v113, v34
	v_mov_b32_e32 v114, v34
	v_mov_b32_e32 v115, v34
	v_mov_b32_e32 v116, v34
	v_mov_b32_e32 v117, v34
	v_mov_b32_e32 v118, v34
	v_mov_b32_e32 v119, v34
	v_mov_b32_e32 v120, v34
	v_mov_b32_e32 v121, v34
	v_mov_b32_e32 v122, v34
	v_mov_b32_e32 v123, v34
	v_mov_b32_e32 v124, v34
	v_mov_b32_e32 v125, v34
	v_mov_b32_e32 v126, v34
	v_mov_b32_e32 v127, v34
	v_mov_b32_e32 v128, v34
	v_mov_b32_e32 v129, v34
	s_mov_b32 s27, 1
	s_lshl_b32 s26, s11, 5
	s_add_i32 s24, 0, 0x4000
	s_add_i32 s3, 0, 0x4800
	s_add_i32 s28, s0, 1
	s_add_i32 s2, 0, 0x1000
	s_add_i32 s22, 0, 0x2000
	s_add_i32 s1, 0, 0x3000
	s_add_i32 s29, s29, 32
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v137, s29, v9
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s29, v134
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e64 s0, s29, v133
	s_mov_b32 s30, s25
	s_mov_b32 s31, s22
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v145, s30, v130
	v_dual_cndmask_b32 v138, 0x80000000, v136 :: v_dual_cndmask_b32 v139, 0x80000000, v135
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v137, 0x80000000, v137, s0
	s_mov_b32 s0, s24
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v146, s31, v130
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v141, s0, v210
	v_add_nc_u32_e32 v149, s0, v211
	buffer_load_b32 v173, v137, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b64 v[153:154], v138, s[16:19], 0 offen
	buffer_load_b64 v[155:156], v139, s[16:19], 0 offen
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v157, v145 offset:1280
	ds_load_u8 v158, v145 offset:1024
	ds_load_u8 v159, v145 offset:1792
	ds_load_u8 v160, v145 offset:1536
	ds_load_u8 v161, v145 offset:1920
	ds_load_u8 v162, v145 offset:1664
	ds_load_u8 v163, v145 offset:1408
	ds_load_u8 v164, v145 offset:1152
	ds_load_u8 v165, v145 offset:256
	ds_load_u8 v166, v145
	ds_load_u8 v167, v145 offset:768
	ds_load_u8 v168, v145 offset:512
	ds_load_u8 v169, v145 offset:896
	ds_load_u8 v170, v145 offset:640
	ds_load_u8 v171, v145 offset:384
	ds_load_u8 v172, v145 offset:128
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v174, v146 offset:1280
	ds_load_u8 v175, v146 offset:1024
	ds_load_u8 v176, v146 offset:1792
	ds_load_u8 v177, v146 offset:1536
	ds_load_u8 v178, v146 offset:1920
	ds_load_u8 v179, v146 offset:1664
	ds_load_u8 v180, v146 offset:1408
	ds_load_u8 v181, v146 offset:1152
	ds_load_u8 v182, v146 offset:256
	ds_load_u8 v183, v146
	ds_load_u8 v184, v146 offset:768
	ds_load_u8 v185, v146 offset:896
	ds_load_u8 v186, v146 offset:640
	ds_load_u8 v187, v146 offset:384
	ds_load_u8 v188, v146 offset:512
	ds_load_u8 v189, v146 offset:128
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_stride64_b64 v[137:140], v141 offset1:1
	ds_load_2addr_stride64_b64 v[141:144], v141 offset0:2 offset1:3
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v190, v145 offset:3328
	ds_load_u8 v191, v145 offset:3072
	ds_load_u8 v192, v145 offset:3840
	ds_load_u8 v193, v145 offset:3584
	ds_load_u8 v194, v145 offset:3968
	ds_load_u8 v195, v145 offset:3712
	ds_load_u8 v196, v145 offset:3456
	ds_load_u8 v197, v145 offset:3200
	ds_load_u8 v198, v145 offset:2304
	ds_load_u8 v199, v145 offset:2048
	ds_load_u8 v200, v145 offset:2816
	ds_load_u8 v201, v145 offset:2560
	ds_load_u8 v202, v145 offset:2944
	ds_load_u8 v203, v145 offset:2688
	ds_load_u8 v204, v145 offset:2432
	ds_load_u8 v205, v145 offset:2176
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v206, v146 offset:3328
	ds_load_u8 v207, v146 offset:3072
	ds_load_u8 v208, v146 offset:3840
	ds_load_u8 v209, v146 offset:3584
	ds_load_u8 v212, v146 offset:3968
	ds_load_u8 v213, v146 offset:3712
	ds_load_u8 v214, v146 offset:3456
	ds_load_u8 v215, v146 offset:3200
	ds_load_u8 v216, v146 offset:2304
	ds_load_u8 v217, v146 offset:2048
	ds_load_u8 v218, v146 offset:2944
	ds_load_u8 v219, v146 offset:2688
	ds_load_u8 v220, v146 offset:2432
	ds_load_u8 v221, v146 offset:2816
	ds_load_u8 v222, v146 offset:2560
	ds_load_u8 v223, v146 offset:2176
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_stride64_b64 v[145:148], v149 offset1:1
	ds_load_2addr_stride64_b64 v[149:152], v149 offset0:2 offset1:3
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	v_perm_b32 v158, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v159, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v160, v168, v167, 0xc0c0004
	v_perm_b32 v163, v164, v163, 0xc0c0004
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v162, v172, v171, 0xc0c0004
	v_perm_b32 v164, v170, v169, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v165, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v166, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v167, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v168, v188, v184, 0xc0c0004
	v_perm_b32 v169, v181, v180, 0xc0c0004
	v_perm_b32 v170, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v171, v189, v187, 0xc0c0004
	v_perm_b32 v172, v186, v185, 0xc0c0004
	s_mov_b32 s22, s1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s1, s27, 1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v174, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v175, v193, v192, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v176, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v177, v201, v200, 0xc0c0004
	v_perm_b32 v178, v197, v196, 0xc0c0004
	v_perm_b32 v179, v195, v194, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v180, v205, v204, 0xc0c0004
	v_perm_b32 v181, v203, v202, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v182, v207, v206, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v183, v209, v208, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v184, v217, v216, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v185, v222, v221, 0xc0c0004
	v_perm_b32 v186, v215, v214, 0xc0c0004
	v_perm_b32 v187, v213, v212, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v188, v223, v220, 0xc0c0004
	v_perm_b32 v189, v219, v218, 0xc0c0004
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v158, v158, 16, v157
	v_lshl_or_b32 v157, v160, 16, v159
	v_lshl_or_b32 v160, v161, 16, v163
	v_lshl_or_b32 v159, v164, 16, v162
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v162, v166, 16, v165
	v_lshl_or_b32 v161, v168, 16, v167
	v_lshl_or_b32 v164, v170, 16, v169
	v_lshl_or_b32 v163, v172, 16, v171
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s1, 2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v166, v175, 16, v174
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s27, s1, 0
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v165, v177, 16, v176
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_lshl_b32 s0, s27, 11
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v168, v179, 16, v178
	v_lshl_or_b32 v167, v181, 16, v180
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v170, v183, 16, v182
	v_lshl_or_b32 v169, v185, 16, v184
	v_lshl_or_b32 v172, v187, 16, v186
	v_lshl_or_b32 v171, v189, 16, v188
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[66:73], v[157:158], v[137:138], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[159:160], v[137:138], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[157:158], v[139:140], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[159:160], v[139:140], v[90:97] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[34:41], v[161:162], v[137:138], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[163:164], v[137:138], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[161:162], v[139:140], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[163:164], v[139:140], v[42:49] neg_lo:[1,1,0]
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[98:105], v[157:158], v[141:142], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[157:158], v[143:144], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[159:160], v[141:142], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[159:160], v[143:144], v[122:129] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[26:33], v[161:162], v[141:142], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[161:162], v[143:144], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[163:164], v[141:142], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[163:164], v[143:144], v[1:8] neg_lo:[1,1,0]
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s1, s0, 0
	s_mov_b32 s25, s2
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_add_i32 s2, s1, s0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v136, s26, v136
	v_add_nc_u32_e32 v135, s26, v135
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v224, s1, v132
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[165:166], v[145:146], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[167:168], v[145:146], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[165:166], v[147:148], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[167:168], v[147:148], v[90:97] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[98:105], v[165:166], v[149:150], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[106:113], v[167:168], v[149:150], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[165:166], v[151:152], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[167:168], v[151:152], v[122:129] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[34:41], v[169:170], v[145:146], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[171:172], v[145:146], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[169:170], v[147:148], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[171:172], v[147:148], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[169:170], v[149:150], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[171:172], v[149:150], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[169:170], v[151:152], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[171:172], v[151:152], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s28, s28, -1
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v225, s2, v131
	s_mov_b32 s24, s3
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s29, s29, 16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s3, s1, 0x4000
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_add_i32 s1, s2, 0x2000
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s28, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v224, v173 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v225, v[153:154], v[155:156] offset1:16
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_or_b32_e32 v230, 0x100, v130
	v_or_b32_e32 v226, 0x200, v130
	v_or_b32_e32 v234, 0x300, v130
	v_or_b32_e32 v231, 0x400, v130
	v_or_b32_e32 v233, 0x500, v130
	v_or_b32_e32 v235, 0x600, v130
	v_or_b32_e32 v237, 0x700, v130
	v_or_b32_e32 v220, 0x800, v130
	v_or_b32_e32 v221, 0x900, v130
	v_or_b32_e32 v224, 0xa00, v130
	v_or_b32_e32 v222, 0xb00, v130
	v_or_b32_e32 v223, 0xc00, v130
	v_or_b32_e32 v225, 0xd00, v130
	v_or_b32_e32 v227, 0xe00, v130
	v_or_b32_e32 v232, 0xf00, v130
	v_or_b32_e32 v236, 0x80, v130
	v_or_b32_e32 v238, 0x180, v130
	v_or_b32_e32 v246, 0x280, v130
	v_or_b32_e32 v247, 0x380, v130
	v_or_b32_e32 v239, 0x480, v130
	v_or_b32_e32 v240, 0x580, v130
	v_or_b32_e32 v241, 0x680, v130
	v_or_b32_e32 v242, 0x780, v130
	v_or_b32_e32 v243, 0x880, v130
	v_or_b32_e32 v244, 0x980, v130
	v_or_b32_e32 v245, 0xa80, v130
	v_or_b32_e32 v249, 0xb80, v130
	v_or_b32_e32 v250, 0xc80, v130
	v_or_b32_e32 v248, 0xd80, v130
	v_or_b32_e32 v229, 0xe80, v130
	v_or_b32_e32 v0, 0xf80, v130
	v_mov_b32_e32 v228, v130
	s_mov_b32 s18, s25
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_add_i32 s24, 0, 0x4000
	s_add_i32 s3, 0, 0x4800
	s_add_i32 s2, 0, 0x1000
	s_add_i32 s22, 0, 0x2000
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v2, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v16, v8 :: v_dual_mov_b32 v73, v9
	v_dual_mov_b32 v67, v9 :: v_dual_mov_b32 v12, v8
	v_dual_mov_b32 v75, v9 :: v_dual_mov_b32 v14, v8
	v_dual_mov_b32 v79, v9 :: v_dual_mov_b32 v10, v8
	v_dual_mov_b32 v77, v9 :: v_dual_mov_b32 v24, v8
	v_dual_mov_b32 v81, v9 :: v_dual_mov_b32 v20, v8
	v_dual_mov_b32 v83, v9 :: v_dual_mov_b32 v22, v8
	v_dual_mov_b32 v87, v9 :: v_dual_mov_b32 v18, v8
	v_dual_mov_b32 v85, v9 :: v_dual_mov_b32 v32, v8
	v_dual_mov_b32 v89, v9 :: v_dual_mov_b32 v28, v8
	v_dual_mov_b32 v91, v9 :: v_dual_mov_b32 v30, v8
	v_dual_mov_b32 v95, v9 :: v_dual_mov_b32 v26, v8
	v_dual_mov_b32 v93, v9 :: v_dual_mov_b32 v48, v8
	v_dual_mov_b32 v97, v9 :: v_dual_mov_b32 v44, v8
	v_dual_mov_b32 v99, v9 :: v_dual_mov_b32 v46, v8
	v_dual_mov_b32 v103, v9 :: v_dual_mov_b32 v42, v8
	v_dual_mov_b32 v101, v9 :: v_dual_mov_b32 v56, v8
	v_dual_mov_b32 v105, v9 :: v_dual_mov_b32 v52, v8
	v_dual_mov_b32 v107, v9 :: v_dual_mov_b32 v54, v8
	v_dual_mov_b32 v111, v9 :: v_dual_mov_b32 v50, v8
	v_dual_mov_b32 v109, v9 :: v_dual_mov_b32 v64, v8
	v_dual_mov_b32 v113, v9 :: v_dual_mov_b32 v60, v8
	v_dual_mov_b32 v115, v9 :: v_dual_mov_b32 v62, v8
	v_dual_mov_b32 v119, v9 :: v_dual_mov_b32 v58, v8
	v_dual_mov_b32 v117, v9 :: v_dual_mov_b32 v40, v8
	v_dual_mov_b32 v121, v9 :: v_dual_mov_b32 v36, v8
	v_dual_mov_b32 v123, v9 :: v_dual_mov_b32 v38, v8
	v_dual_mov_b32 v127, v9 :: v_dual_mov_b32 v34, v8
	v_dual_mov_b32 v125, v9 :: v_dual_mov_b32 v66, v8
	v_mov_b32_e32 v129, v9
	v_mov_b32_e32 v71, v9
	v_mov_b32_e32 v69, v9
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v33, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v65, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v41, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v70, v8
	v_mov_b32_e32 v68, v8
	v_mov_b32_e32 v72, v8
	v_mov_b32_e32 v74, v8
	v_mov_b32_e32 v78, v8
	v_mov_b32_e32 v76, v8
	v_mov_b32_e32 v80, v8
	v_mov_b32_e32 v82, v8
	v_mov_b32_e32 v86, v8
	v_mov_b32_e32 v84, v8
	v_mov_b32_e32 v88, v8
	v_mov_b32_e32 v90, v8
	v_mov_b32_e32 v94, v8
	v_mov_b32_e32 v92, v8
	v_mov_b32_e32 v96, v8
	v_mov_b32_e32 v98, v8
	v_mov_b32_e32 v102, v8
	v_mov_b32_e32 v100, v8
	v_mov_b32_e32 v104, v8
	v_mov_b32_e32 v106, v8
	v_mov_b32_e32 v110, v8
	v_mov_b32_e32 v108, v8
	v_mov_b32_e32 v112, v8
	v_mov_b32_e32 v114, v8
	v_mov_b32_e32 v118, v8
	v_mov_b32_e32 v116, v8
	v_mov_b32_e32 v120, v8
	v_mov_b32_e32 v122, v8
	v_mov_b32_e32 v126, v8
	v_mov_b32_e32 v124, v8
	v_mov_b32_e32 v128, v8
	s_add_i32 s1, 0, 0x3000
.LBB0_8:                                ; %._crit_edge
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v9, s24, v210
	v_dual_mov_b32 v193, v129 :: v_dual_add_nc_u32 v130, s24, v211
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v192, v128
	ds_load_2addr_stride64_b64 v[206:209], v9 offset1:1
	ds_load_2addr_stride64_b64 v[198:201], v9 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[202:205], v130 offset1:1
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[194:197], v130 offset0:2 offset1:3
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v131, 0, 1, s23
	v_dual_mov_b32 v189, v125 :: v_dual_mov_b32 v188, v124
	v_dual_mov_b32 v191, v127 :: v_dual_mov_b32 v190, v126
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v131
	v_dual_mov_b32 v187, v123 :: v_dual_mov_b32 v186, v122
	v_dual_mov_b32 v185, v121 :: v_dual_mov_b32 v184, v120
	v_dual_mov_b32 v181, v117 :: v_dual_mov_b32 v180, v116
	v_dual_mov_b32 v183, v119 :: v_dual_mov_b32 v182, v118
	v_dual_mov_b32 v179, v115 :: v_dual_mov_b32 v178, v114
	v_dual_mov_b32 v177, v113 :: v_dual_mov_b32 v176, v112
	v_dual_mov_b32 v173, v109 :: v_dual_mov_b32 v172, v108
	v_dual_mov_b32 v175, v111 :: v_dual_mov_b32 v174, v110
	v_dual_mov_b32 v171, v107 :: v_dual_mov_b32 v170, v106
	v_dual_mov_b32 v169, v105 :: v_dual_mov_b32 v168, v104
	v_dual_mov_b32 v165, v101 :: v_dual_mov_b32 v164, v100
	v_dual_mov_b32 v167, v103 :: v_dual_mov_b32 v166, v102
	v_dual_mov_b32 v163, v99 :: v_dual_mov_b32 v162, v98
	v_dual_mov_b32 v161, v97 :: v_dual_mov_b32 v160, v96
	v_dual_mov_b32 v157, v93 :: v_dual_mov_b32 v156, v92
	v_dual_mov_b32 v159, v95 :: v_dual_mov_b32 v158, v94
	v_dual_mov_b32 v155, v91 :: v_dual_mov_b32 v154, v90
	v_dual_mov_b32 v153, v89 :: v_dual_mov_b32 v152, v88
	v_dual_mov_b32 v149, v85 :: v_dual_mov_b32 v148, v84
	v_dual_mov_b32 v151, v87 :: v_dual_mov_b32 v150, v86
	v_dual_mov_b32 v147, v83 :: v_dual_mov_b32 v146, v82
	v_dual_mov_b32 v145, v81 :: v_dual_mov_b32 v144, v80
	v_dual_mov_b32 v141, v77 :: v_dual_mov_b32 v140, v76
	v_dual_mov_b32 v143, v79 :: v_dual_mov_b32 v142, v78
	v_dual_mov_b32 v139, v75 :: v_dual_mov_b32 v138, v74
	v_dual_mov_b32 v137, v73 :: v_dual_mov_b32 v136, v72
	v_dual_mov_b32 v133, v69 :: v_dual_mov_b32 v132, v68
	v_dual_mov_b32 v135, v71 :: v_dual_mov_b32 v134, v70
	v_dual_mov_b32 v131, v67 :: v_dual_mov_b32 v130, v66
	s_and_not1_b32 vcc_lo, exec_lo, s23
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v137, s18, v233
	v_add_nc_u32_e32 v138, s18, v231
	v_add_nc_u32_e32 v135, s18, v237
	v_add_nc_u32_e32 v141, s18, v230
	v_add_nc_u32_e32 v136, s18, v235
	v_add_nc_u32_e32 v139, s18, v234
	v_add_nc_u32_e32 v140, s18, v226
	v_add_nc_u32_e32 v142, s18, v228
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v137, v137
	ds_load_u8 v138, v138
	ds_load_u8 v135, v135
	ds_load_u8 v141, v141
	ds_load_u8 v142, v142
	ds_load_u8 v139, v139
	ds_load_u8 v140, v140
	ds_load_u8 v136, v136
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v131, s18, v248
	v_add_nc_u32_e32 v155, s18, v225
	v_add_nc_u32_e32 v132, s18, v250
	v_add_nc_u32_e32 v156, s18, v223
	v_add_nc_u32_e32 v9, s18, v0
	v_add_nc_u32_e32 v153, s18, v232
	v_add_nc_u32_e32 v143, s18, v244
	v_add_nc_u32_e32 v159, s18, v221
	v_add_nc_u32_e32 v144, s18, v243
	v_add_nc_u32_e32 v145, s18, v242
	v_add_nc_u32_e32 v146, s18, v241
	v_add_nc_u32_e32 v147, s18, v240
	v_add_nc_u32_e32 v148, s18, v239
	v_add_nc_u32_e32 v149, s18, v247
	v_add_nc_u32_e32 v150, s18, v246
	v_add_nc_u32_e32 v151, s18, v238
	v_add_nc_u32_e32 v152, s18, v236
	v_add_nc_u32_e32 v154, s18, v227
	v_add_nc_u32_e32 v157, s18, v222
	v_add_nc_u32_e32 v158, s18, v224
	v_add_nc_u32_e32 v160, s18, v220
	v_add_nc_u32_e32 v130, s18, v229
	v_add_nc_u32_e32 v133, s18, v249
	v_add_nc_u32_e32 v134, s18, v245
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	v_perm_b32 v136, v142, v141, 0xc0c0004
	v_perm_b32 v138, v140, v139, 0xc0c0004
	ds_load_u8 v139, v155
	ds_load_u8 v140, v156
	ds_load_u8 v141, v153
	ds_load_u8 v142, v159
	ds_load_u8 v153, v160
	ds_load_u8 v155, v157
	ds_load_u8 v156, v158
	ds_load_u8 v154, v154
	ds_load_u8 v147, v147
	ds_load_u8 v148, v148
	ds_load_u8 v145, v145
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	ds_load_u8 v149, v149
	ds_load_u8 v150, v150
	ds_load_u8 v146, v146
	ds_load_u8 v157, v131
	ds_load_u8 v158, v132
	ds_load_u8 v9, v9
	ds_load_u8 v159, v143
	ds_load_u8 v160, v144
	ds_load_u8 v161, v133
	ds_load_u8 v162, v134
	ds_load_u8 v163, v130
	v_lshl_or_b32 v213, v135, 16, v137
	v_dual_mov_b32 v177, v113 :: v_dual_mov_b32 v176, v112
	v_lshl_or_b32 v212, v138, 16, v136
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v138, v140, v139, 0xc0c0004
	v_mov_b32_e32 v137, v73
	v_dual_mov_b32 v185, v121 :: v_dual_mov_b32 v184, v120
	v_dual_mov_b32 v193, v129 :: v_dual_mov_b32 v192, v128
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v139, v154, v141, 0xc0c0004
	v_perm_b32 v154, v153, v142, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v140, v148, v147, 0xc0c0004
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v156, v158, v157, 0xc0c0004
	v_perm_b32 v143, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v157, v160, v159, 0xc0c0004
	v_perm_b32 v144, v150, v149, 0xc0c0004
	v_perm_b32 v141, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v163, v9, 0xc0c0004
	v_perm_b32 v158, v162, v161, 0xc0c0004
	v_lshl_or_b32 v215, v139, 16, v138
	v_lshl_or_b32 v216, v144, 16, v143
	v_lshl_or_b32 v217, v141, 16, v140
	v_mov_b32_e32 v145, v81
	v_mov_b32_e32 v153, v89
	v_lshl_or_b32 v214, v155, 16, v154
	v_lshl_or_b32 v219, v9, 16, v156
	v_lshl_or_b32 v218, v158, 16, v157
	v_mov_b32_e32 v161, v97
	v_dual_mov_b32 v169, v105 :: v_dual_mov_b32 v168, v104
	v_dual_mov_b32 v136, v72 :: v_dual_mov_b32 v135, v71
	v_dual_mov_b32 v134, v70 :: v_dual_mov_b32 v133, v69
	v_dual_mov_b32 v132, v68 :: v_dual_mov_b32 v131, v67
	v_mov_b32_e32 v130, v66
	v_dual_mov_b32 v144, v80 :: v_dual_mov_b32 v143, v79
	v_dual_mov_b32 v142, v78 :: v_dual_mov_b32 v141, v77
	v_dual_mov_b32 v140, v76 :: v_dual_mov_b32 v139, v75
	v_mov_b32_e32 v138, v74
	v_dual_mov_b32 v152, v88 :: v_dual_mov_b32 v151, v87
	v_dual_mov_b32 v150, v86 :: v_dual_mov_b32 v149, v85
	v_dual_mov_b32 v148, v84 :: v_dual_mov_b32 v147, v83
	v_mov_b32_e32 v146, v82
	v_dual_mov_b32 v160, v96 :: v_dual_mov_b32 v159, v95
	v_dual_mov_b32 v158, v94 :: v_dual_mov_b32 v157, v93
	v_dual_mov_b32 v156, v92 :: v_dual_mov_b32 v155, v91
	v_dual_mov_b32 v154, v90 :: v_dual_mov_b32 v167, v103
	v_dual_mov_b32 v166, v102 :: v_dual_mov_b32 v165, v101
	v_dual_mov_b32 v164, v100 :: v_dual_mov_b32 v163, v99
	v_dual_mov_b32 v162, v98 :: v_dual_mov_b32 v175, v111
	v_dual_mov_b32 v174, v110 :: v_dual_mov_b32 v173, v109
	v_dual_mov_b32 v172, v108 :: v_dual_mov_b32 v171, v107
	v_dual_mov_b32 v170, v106 :: v_dual_mov_b32 v183, v119
	v_dual_mov_b32 v182, v118 :: v_dual_mov_b32 v181, v117
	v_dual_mov_b32 v180, v116 :: v_dual_mov_b32 v179, v115
	v_dual_mov_b32 v178, v114 :: v_dual_mov_b32 v191, v127
	v_dual_mov_b32 v190, v126 :: v_dual_mov_b32 v189, v125
	v_dual_mov_b32 v188, v124 :: v_dual_mov_b32 v187, v123
	v_mov_b32_e32 v186, v122
	v_wmma_i32_16x16x16_iu4 v[130:137], v[212:213], v[206:207], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[216:217], v[206:207], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[212:213], v[208:209], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[154:161], v[216:217], v[208:209], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[212:213], v[198:199], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[216:217], v[198:199], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[212:213], v[200:201], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[216:217], v[200:201], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[214:215], v[202:203], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[218:219], v[202:203], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[214:215], v[204:205], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[154:161], v[218:219], v[204:205], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[214:215], v[194:195], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[218:219], v[194:195], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[214:215], v[196:197], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[186:193], v[218:219], v[196:197], v[186:193] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v120, v184 :: v_dual_add_nc_u32 v73, s22, v233
	v_dual_mov_b32 v121, v185 :: v_dual_add_nc_u32 v74, s22, v231
	v_dual_mov_b32 v122, v186 :: v_dual_add_nc_u32 v71, s22, v237
	v_dual_mov_b32 v118, v182 :: v_dual_add_nc_u32 v77, s22, v230
	v_dual_mov_b32 v123, v187 :: v_dual_add_nc_u32 v72, s22, v235
	v_dual_mov_b32 v116, v180 :: v_dual_add_nc_u32 v75, s22, v234
	v_dual_mov_b32 v117, v181 :: v_dual_add_nc_u32 v76, s22, v226
	v_dual_mov_b32 v119, v183 :: v_dual_add_nc_u32 v78, s22, v228
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	ds_load_u8 v74, v74
	ds_load_u8 v71, v71
	ds_load_u8 v77, v77
	ds_load_u8 v78, v78
	ds_load_u8 v75, v75
	ds_load_u8 v76, v76
	ds_load_u8 v72, v72
	v_dual_mov_b32 v108, v172 :: v_dual_add_nc_u32 v83, s22, v240
	v_dual_mov_b32 v109, v173 :: v_dual_add_nc_u32 v84, s22, v239
	v_dual_mov_b32 v112, v176 :: v_dual_add_nc_u32 v81, s22, v242
	v_dual_mov_b32 v106, v170 :: v_dual_add_nc_u32 v87, s22, v238
	v_dual_mov_b32 v128, v192 :: v_dual_add_nc_u32 v9, s22, v0
	v_dual_mov_b32 v124, v188 :: v_dual_add_nc_u32 v67, s22, v248
	v_dual_mov_b32 v126, v190 :: v_dual_add_nc_u32 v69, s22, v249
	v_dual_mov_b32 v127, v191 :: v_dual_add_nc_u32 v70, s22, v245
	v_dual_mov_b32 v114, v178 :: v_dual_add_nc_u32 v79, s22, v244
	v_dual_mov_b32 v115, v179 :: v_dual_add_nc_u32 v80, s22, v243
	v_dual_mov_b32 v113, v177 :: v_dual_add_nc_u32 v82, s22, v241
	v_dual_mov_b32 v110, v174 :: v_dual_add_nc_u32 v85, s22, v247
	v_dual_mov_b32 v111, v175 :: v_dual_add_nc_u32 v86, s22, v246
	v_dual_mov_b32 v107, v171 :: v_dual_add_nc_u32 v88, s22, v236
	v_dual_mov_b32 v104, v168 :: v_dual_add_nc_u32 v89, s22, v232
	v_dual_mov_b32 v105, v169 :: v_dual_add_nc_u32 v90, s22, v227
	v_dual_mov_b32 v100, v164 :: v_dual_add_nc_u32 v91, s22, v225
	v_dual_mov_b32 v101, v165 :: v_dual_add_nc_u32 v92, s22, v223
	v_dual_mov_b32 v102, v166 :: v_dual_add_nc_u32 v93, s22, v222
	v_dual_mov_b32 v103, v167 :: v_dual_add_nc_u32 v94, s22, v224
	v_dual_mov_b32 v98, v162 :: v_dual_add_nc_u32 v95, s22, v221
	v_dual_mov_b32 v99, v163 :: v_dual_add_nc_u32 v96, s22, v220
	v_dual_mov_b32 v129, v193 :: v_dual_add_nc_u32 v66, s22, v229
	v_dual_mov_b32 v125, v189 :: v_dual_add_nc_u32 v68, s22, v250
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_perm_b32 v72, v78, v77, 0xc0c0004
	v_perm_b32 v74, v76, v75, 0xc0c0004
	ds_load_u8 v75, v83
	ds_load_u8 v76, v84
	ds_load_u8 v77, v81
	ds_load_u8 v78, v87
	ds_load_u8 v81, v88
	ds_load_u8 v83, v85
	ds_load_u8 v84, v86
	ds_load_u8 v82, v82
	ds_load_u8 v85, v91
	ds_load_u8 v86, v92
	ds_load_u8 v87, v89
	ds_load_u8 v88, v95
	ds_load_u8 v89, v96
	ds_load_u8 v91, v93
	ds_load_u8 v92, v94
	ds_load_u8 v90, v90
	ds_load_u8 v93, v67
	ds_load_u8 v94, v68
	ds_load_u8 v9, v9
	ds_load_u8 v80, v80
	ds_load_u8 v95, v69
	ds_load_u8 v70, v70
	ds_load_u8 v96, v66
	ds_load_u8 v79, v79
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v68, v76, v75, 0xc0c0004
	v_lshl_or_b32 v67, v71, 16, v73
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v73, v84, v83, 0xc0c0004
	v_lshl_or_b32 v66, v74, 16, v72
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v69, v82, v77, 0xc0c0004
	v_perm_b32 v72, v81, v78, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v71, v86, v85, 0xc0c0004
	v_dual_mov_b32 v84, v148 :: v_dual_mov_b32 v85, v149
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v75, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v76, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v74, v90, v87, 0xc0c0004
	v_lshl_or_b32 v69, v69, 16, v68
	v_lshl_or_b32 v68, v73, 16, v72
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v72, v94, v93, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[34:41], v[66:67], v[206:207], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v71, v74, 16, v71
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v70, v95, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v96, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v80, v79, 0xc0c0004
	v_lshl_or_b32 v70, v76, 16, v75
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[206:207], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[66:67], v[208:209], v[50:57] neg_lo:[1,1,0]
	v_lshl_or_b32 v73, v9, 16, v72
	v_lshl_or_b32 v72, v78, 16, v77
	v_wmma_i32_16x16x16_iu4 v[42:49], v[68:69], v[208:209], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[66:67], v[198:199], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[68:69], v[198:199], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[66:67], v[200:201], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[68:69], v[200:201], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[70:71], v[202:203], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[72:73], v[202:203], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[70:71], v[204:205], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[72:73], v[204:205], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[70:71], v[194:195], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[72:73], v[194:195], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[70:71], v[196:197], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[72:73], v[196:197], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v96, v160 :: v_dual_mov_b32 v97, v161
	v_dual_mov_b32 v92, v156 :: v_dual_mov_b32 v93, v157
	v_dual_mov_b32 v94, v158 :: v_dual_mov_b32 v95, v159
	v_dual_mov_b32 v90, v154 :: v_dual_mov_b32 v91, v155
	v_dual_mov_b32 v88, v152 :: v_dual_mov_b32 v89, v153
	v_dual_mov_b32 v86, v150 :: v_dual_mov_b32 v87, v151
	v_dual_mov_b32 v82, v146 :: v_dual_mov_b32 v83, v147
	v_dual_mov_b32 v80, v144 :: v_dual_mov_b32 v81, v145
	v_dual_mov_b32 v76, v140 :: v_dual_mov_b32 v77, v141
	v_dual_mov_b32 v78, v142 :: v_dual_mov_b32 v79, v143
	v_dual_mov_b32 v74, v138 :: v_dual_mov_b32 v75, v139
	v_dual_mov_b32 v72, v136 :: v_dual_mov_b32 v73, v137
	v_dual_mov_b32 v68, v132 :: v_dual_mov_b32 v69, v133
	v_dual_mov_b32 v70, v134 :: v_dual_mov_b32 v71, v135
	v_dual_mov_b32 v66, v130 :: v_dual_mov_b32 v67, v131
.LBB0_12:                               ; %._crit_edge279
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v9, s3, v210
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v210, 0, 1, s21
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v194, s3, v211
	s_clause 0x1c                           ; 116-byte Folded Spill
	scratch_store_b32 off, v248, off offset:116
	scratch_store_b32 off, v250, off offset:112
	scratch_store_b32 off, v249, off offset:108
	scratch_store_b32 off, v245, off offset:104
	scratch_store_b32 off, v244, off offset:92
	scratch_store_b32 off, v243, off offset:88
	scratch_store_b32 off, v242, off offset:84
	scratch_store_b32 off, v241, off offset:80
	scratch_store_b32 off, v240, off offset:76
	scratch_store_b32 off, v239, off offset:72
	scratch_store_b32 off, v247, off offset:68
	scratch_store_b32 off, v237, off offset:100
	scratch_store_b32 off, v246, off offset:60
	scratch_store_b32 off, v235, off offset:96
	scratch_store_b32 off, v238, off offset:52
	scratch_store_b32 off, v233, off offset:64
	scratch_store_b32 off, v236, off offset:44
	scratch_store_b32 off, v231, off offset:56
	scratch_store_b32 off, v232, off offset:36
	scratch_store_b32 off, v234, off offset:48
	scratch_store_b32 off, v227, off offset:28
	scratch_store_b32 off, v226, off offset:40
	scratch_store_b32 off, v225, off offset:24
	scratch_store_b32 off, v230, off offset:32
	scratch_store_b32 off, v223, off offset:20
	scratch_store_b32 off, v222, off offset:16
	scratch_store_b32 off, v224, off offset:12
	scratch_store_b32 off, v221, off offset:8
	scratch_store_b32 off, v220, off offset:4
	v_dual_mov_b32 v231, v111 :: v_dual_mov_b32 v230, v110
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cmp_ne_u32_e64 s0, 1, v210
	v_dual_mov_b32 v211, v129 :: v_dual_mov_b32 v210, v128
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_stride64_b64 v[206:209], v9 offset1:1
	ds_load_2addr_stride64_b64 v[198:201], v9 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[202:205], v194 offset1:1
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[194:197], v194 offset0:2 offset1:3
	v_dual_mov_b32 v233, v107 :: v_dual_mov_b32 v232, v106
	v_dual_mov_b32 v235, v105 :: v_dual_mov_b32 v234, v104
	scratch_store_b64 off, v[210:211], off offset:120 ; 8-byte Folded Spill
	v_dual_mov_b32 v211, v125 :: v_dual_mov_b32 v210, v124
	v_dual_mov_b32 v237, v101 :: v_dual_mov_b32 v236, v100
	v_dual_mov_b32 v239, v103 :: v_dual_mov_b32 v238, v102
	scratch_store_b64 off, v[210:211], off offset:128 ; 8-byte Folded Spill
	v_dual_mov_b32 v211, v127 :: v_dual_mov_b32 v210, v126
	v_dual_mov_b32 v241, v99 :: v_dual_mov_b32 v240, v98
	v_dual_mov_b32 v243, v97 :: v_dual_mov_b32 v242, v96
	scratch_store_b64 off, v[210:211], off offset:136 ; 8-byte Folded Spill
	v_dual_mov_b32 v211, v123 :: v_dual_mov_b32 v210, v122
	v_dual_mov_b32 v245, v93 :: v_dual_mov_b32 v244, v92
	v_dual_mov_b32 v247, v95 :: v_dual_mov_b32 v246, v94
	scratch_store_b64 off, v[210:211], off offset:144 ; 8-byte Folded Spill
	v_dual_mov_b32 v211, v121 :: v_dual_mov_b32 v210, v120
	v_dual_mov_b32 v249, v91 :: v_dual_mov_b32 v248, v90
	v_dual_mov_b32 v251, v89 :: v_dual_mov_b32 v250, v88
	scratch_store_b64 off, v[210:211], off offset:152 ; 8-byte Folded Spill
	v_dual_mov_b32 v211, v117 :: v_dual_mov_b32 v210, v116
	v_dual_mov_b32 v253, v85 :: v_dual_mov_b32 v252, v84
	v_dual_mov_b32 v255, v87 :: v_dual_mov_b32 v254, v86
	scratch_store_b64 off, v[210:211], off offset:160 ; 8-byte Folded Spill
	v_dual_mov_b32 v211, v119 :: v_dual_mov_b32 v210, v118
	v_dual_mov_b32 v213, v81 :: v_dual_mov_b32 v212, v80
	v_dual_mov_b32 v215, v77 :: v_dual_mov_b32 v214, v76
	scratch_store_b64 off, v[210:211], off offset:168 ; 8-byte Folded Spill
	v_dual_mov_b32 v211, v115 :: v_dual_mov_b32 v210, v114
	v_dual_mov_b32 v217, v79 :: v_dual_mov_b32 v216, v78
	v_dual_mov_b32 v219, v75 :: v_dual_mov_b32 v218, v74
	scratch_store_b64 off, v[210:211], off offset:176 ; 8-byte Folded Spill
	v_dual_mov_b32 v211, v113 :: v_dual_mov_b32 v210, v112
	v_dual_mov_b32 v221, v73 :: v_dual_mov_b32 v220, v72
	v_dual_mov_b32 v223, v69 :: v_dual_mov_b32 v222, v68
	scratch_store_b64 off, v[210:211], off offset:184 ; 8-byte Folded Spill
	v_dual_mov_b32 v211, v109 :: v_dual_mov_b32 v210, v108
	v_dual_mov_b32 v225, v71 :: v_dual_mov_b32 v224, v70
	v_dual_mov_b32 v227, v67 :: v_dual_mov_b32 v226, v66
	scratch_store_b64 off, v[210:211], off offset:192 ; 8-byte Folded Spill
	v_dual_mov_b32 v211, v83 :: v_dual_mov_b32 v210, v82
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s21
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v9, off, off offset:76
	scratch_load_b32 v211, off, off offset:80
	scratch_load_b32 v210, off, off offset:72
	scratch_load_b32 v213, off, off offset:60
	scratch_load_b32 v214, off, off offset:92
	scratch_load_b32 v212, off, off offset:44
	scratch_load_b32 v215, off, off offset:104
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v9, s2, v9
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v211, s2, v211
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v210, s2, v210
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v213, s2, v213
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v214, s2, v214
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	ds_load_u8 v211, v211
	ds_load_u8 v210, v210
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v212, s2, v212
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v213, v213
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v215, s2, v215
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v214, v214
	ds_load_u8 v212, v212
	ds_load_u8 v215, v215
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v210, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v210, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v210, s2, v210
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v210, v210
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v210, v211, v210, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v211, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v211, s2, v211
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v211, v211
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v211, v212, v211, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v212, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v212, s2, v212
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v212, v212
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v212, v213, v212, 0xc0c0004
	v_lshl_or_b32 v213, v210, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:116
	scratch_load_b32 v210, off, off offset:112
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v212, v212, 16, v211
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v211, s2, v229
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[186:193], v[212:213], v[200:201], v[186:193] neg_lo:[1,1,0]
	ds_load_u8 v211, v211
	v_wmma_i32_16x16x16_iu4 v[154:161], v[212:213], v[208:209], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[212:213], v[206:207], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[212:213], v[198:199], v[170:177] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v9, s2, v9
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v210, s2, v210
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	ds_load_u8 v210, v210
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v210, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v210, s2, v0
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v210, v210
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v210, v211, v210, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v211, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v211, s2, v211
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v211, v211
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v211, v211, v214, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v214, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v214, s2, v214
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v214, v214
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v214, v215, v214, 0xc0c0004
	v_lshl_or_b32 v215, v210, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v214, v214, 16, v211
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[214:215], v[196:197], v[186:193] neg_lo:[1,1,0]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[192:193], off offset:120
	scratch_store_b64 off, v[188:189], off offset:128
	v_dual_mov_b32 v188, v190 :: v_dual_mov_b32 v189, v191
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[188:189], off offset:136
	scratch_store_b64 off, v[186:187], off offset:144
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v187, off, off offset:96
	scratch_load_b32 v186, off, off offset:56
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[154:161], v[214:215], v[204:205], v[154:161] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v188, s2, v228
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[138:145], v[214:215], v[202:203], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[214:215], v[194:195], v[170:177] neg_lo:[1,1,0]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[176:177], off offset:184
	scratch_store_b64 off, v[172:173], off offset:192
	v_mov_b32_e32 v247, v159
	v_mov_b32_e32 v249, v155
	v_mov_b32_e32 v213, v145
	v_mov_b32_e32 v215, v141
	v_mov_b32_e32 v231, v175
	v_dual_mov_b32 v233, v171 :: v_dual_mov_b32 v230, v174
	v_dual_mov_b32 v232, v170 :: v_dual_mov_b32 v243, v161
	v_dual_mov_b32 v242, v160 :: v_dual_mov_b32 v245, v157
	v_mov_b32_e32 v244, v156
	ds_load_u8 v188, v188
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v189, off, off offset:40 ; 4-byte Folded Reload
	v_mov_b32_e32 v246, v158
	v_mov_b32_e32 v248, v154
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v191, off, off offset:12
	scratch_load_b32 v190, off, off offset:4
	v_mov_b32_e32 v214, v140
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v212, v144 :: v_dual_add_nc_u32 v9, s2, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v187, s2, v187
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v186, s2, v186
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	ds_load_u8 v186, v186
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v189, s2, v189
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v186, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v186, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v190, s2, v190
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v189, v189
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v191, s2, v191
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v190, v190
	ds_load_u8 v191, v191
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v186, s2, v186
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v186, v186
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v187, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s2, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v188, v187, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v187, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s2, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v189, v187, 0xc0c0004
	v_lshl_or_b32 v187, v186, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v186, v189, 16, v188
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v189, off, off offset:28
	scratch_load_b32 v188, off, off offset:20
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[178:185], v[186:187], v[200:201], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[186:187], v[198:199], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[186:187], v[208:209], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[186:187], v[206:207], v[130:137] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v9, s2, v9
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v189, s2, v189
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v188, s2, v188
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	ds_load_u8 v189, v189
	ds_load_u8 v188, v188
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v188, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v188, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v188, s2, v188
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v188, v188
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v189, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v189, s2, v189
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v189, v189
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v190, v189, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v189, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v189, s2, v189
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v189, v189
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v191, v189, 0xc0c0004
	v_lshl_or_b32 v189, v188, 16, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v188, v191, 16, v190
	v_wmma_i32_16x16x16_iu4 v[178:185], v[188:189], v[196:197], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[188:189], v[194:195], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[188:189], v[204:205], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[188:189], v[202:203], v[130:137] neg_lo:[1,1,0]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[184:185], off offset:152
	scratch_store_b64 off, v[180:181], off offset:160
	v_dual_mov_b32 v180, v182 :: v_dual_mov_b32 v235, v169
	v_mov_b32_e32 v237, v165
	v_mov_b32_e32 v239, v167
	v_mov_b32_e32 v241, v163
	v_mov_b32_e32 v251, v153
	v_mov_b32_e32 v253, v149
	v_mov_b32_e32 v255, v151
	v_mov_b32_e32 v211, v147
	v_mov_b32_e32 v217, v143
	v_mov_b32_e32 v219, v139
	v_mov_b32_e32 v221, v137
	v_mov_b32_e32 v223, v133
	v_mov_b32_e32 v225, v135
	v_mov_b32_e32 v227, v131
	v_dual_mov_b32 v181, v183 :: v_dual_mov_b32 v234, v168
	v_mov_b32_e32 v236, v164
	v_mov_b32_e32 v238, v166
	v_mov_b32_e32 v240, v162
	v_mov_b32_e32 v250, v152
	v_mov_b32_e32 v252, v148
	v_mov_b32_e32 v254, v150
	v_mov_b32_e32 v210, v146
	v_mov_b32_e32 v216, v142
	v_mov_b32_e32 v218, v138
	v_mov_b32_e32 v220, v136
	v_mov_b32_e32 v222, v132
	v_mov_b32_e32 v224, v134
	v_mov_b32_e32 v226, v130
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[180:181], off offset:168
	scratch_store_b64 off, v[178:179], off offset:176
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v9, s1, v0
	s_clause 0xa                            ; 84-byte Folded Reload
	scratch_load_b32 v0, off, off offset:116
	scratch_load_b64 v[131:132], off, off offset:120
	scratch_load_b64 v[138:139], off, off offset:128
	scratch_load_b64 v[126:127], off, off offset:136
	scratch_load_b64 v[142:143], off, off offset:144
	scratch_load_b64 v[147:148], off, off offset:152
	scratch_load_b64 v[116:117], off, off offset:160
	scratch_load_b64 v[129:130], off, off offset:168
	scratch_load_b64 v[144:145], off, off offset:176
	scratch_load_b64 v[113:114], off, off offset:184
	scratch_load_b64 v[152:153], off, off offset:192
	v_add_nc_u32_e32 v78, s1, v228
	v_add_nc_u32_e32 v66, s1, v229
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v67, s1, v0
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s1, v0
	scratch_load_b32 v0, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s1, v0
	scratch_load_b32 v0, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s1, v0
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v0
	scratch_load_b32 v0, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v72, s1, v0
	scratch_load_b32 v0, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s1, v0
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v74, s1, v0
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s1, v0
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v76, s1, v0
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v77, s1, v0
	scratch_load_b32 v0, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	ds_load_u8 v74, v74
	ds_load_u8 v71, v71
	ds_load_u8 v77, v77
	ds_load_u8 v78, v78
	ds_load_u8 v75, v75
	ds_load_u8 v76, v76
	ds_load_u8 v72, v72
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v74, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_perm_b32 v72, v78, v77, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v79, s1, v0
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v80, s1, v0
	scratch_load_b32 v0, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v81, s1, v0
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v82, s1, v0
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v83, s1, v0
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v84, s1, v0
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v85, s1, v0
	scratch_load_b32 v0, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v86, s1, v0
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v87, s1, v0
	scratch_load_b32 v0, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v88, s1, v0
	scratch_load_b32 v0, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v89, s1, v0
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v90, s1, v0
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v91, s1, v0
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v92, s1, v0
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v93, s1, v0
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v94, s1, v0
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v95, s1, v0
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v96, s1, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v83
	ds_load_u8 v76, v84
	ds_load_u8 v77, v81
	ds_load_u8 v78, v87
	ds_load_u8 v81, v88
	ds_load_u8 v83, v85
	ds_load_u8 v84, v86
	ds_load_u8 v82, v82
	ds_load_u8 v85, v91
	ds_load_u8 v86, v92
	ds_load_u8 v87, v89
	ds_load_u8 v88, v95
	ds_load_u8 v89, v96
	ds_load_u8 v91, v93
	ds_load_u8 v92, v94
	ds_load_u8 v90, v90
	ds_load_u8 v93, v67
	ds_load_u8 v94, v68
	ds_load_u8 v9, v9
	ds_load_u8 v80, v80
	ds_load_u8 v95, v69
	ds_load_u8 v70, v70
	ds_load_u8 v96, v66
	ds_load_u8 v79, v79
	v_lshl_or_b32 v67, v71, 16, v73
	v_lshl_or_b32 v66, v74, 16, v72
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v68, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v69, v82, v77, 0xc0c0004
	v_perm_b32 v72, v81, v78, 0xc0c0004
	v_perm_b32 v73, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v71, v86, v85, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[34:41], v[66:67], v[206:207], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v75, v89, v88, 0xc0c0004
	v_lshl_or_b32 v69, v69, 16, v68
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v76, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v74, v90, v87, 0xc0c0004
	v_lshl_or_b32 v68, v73, 16, v72
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v72, v94, v93, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[50:57], v[66:67], v[208:209], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[66:67], v[198:199], v[26:33] neg_lo:[1,1,0]
	v_lshl_or_b32 v71, v74, 16, v71
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v70, v95, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v96, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v80, v79, 0xc0c0004
	v_lshl_or_b32 v70, v76, 16, v75
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[206:207], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[68:69], v[208:209], v[42:49] neg_lo:[1,1,0]
	v_lshl_or_b32 v73, v9, 16, v72
	v_lshl_or_b32 v72, v78, 16, v77
	v_wmma_i32_16x16x16_iu4 v[18:25], v[68:69], v[198:199], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[66:67], v[200:201], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[68:69], v[200:201], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[70:71], v[202:203], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[72:73], v[202:203], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[70:71], v[204:205], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[72:73], v[204:205], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[70:71], v[194:195], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[72:73], v[194:195], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[70:71], v[196:197], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[72:73], v[196:197], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v145, v115 :: v_dual_mov_b32 v144, v114
	v_dual_mov_b32 v114, v113 :: v_dual_mov_b32 v231, v111
	v_dual_mov_b32 v132, v129 :: v_dual_mov_b32 v131, v128
	v_dual_mov_b32 v139, v125 :: v_dual_mov_b32 v138, v124
	v_dual_mov_b32 v143, v123 :: v_dual_mov_b32 v142, v122
	v_dual_mov_b32 v148, v121 :: v_dual_mov_b32 v147, v120
	v_dual_mov_b32 v130, v119 :: v_dual_mov_b32 v129, v118
	v_dual_mov_b32 v113, v112 :: v_dual_mov_b32 v230, v110
	v_dual_mov_b32 v153, v109 :: v_dual_mov_b32 v152, v108
	v_dual_mov_b32 v233, v107 :: v_dual_mov_b32 v232, v106
	v_dual_mov_b32 v235, v105 :: v_dual_mov_b32 v234, v104
	v_dual_mov_b32 v237, v101 :: v_dual_mov_b32 v236, v100
	v_dual_mov_b32 v239, v103 :: v_dual_mov_b32 v238, v102
	v_dual_mov_b32 v241, v99 :: v_dual_mov_b32 v240, v98
	v_dual_mov_b32 v243, v97 :: v_dual_mov_b32 v242, v96
	v_dual_mov_b32 v245, v93 :: v_dual_mov_b32 v244, v92
	v_dual_mov_b32 v247, v95 :: v_dual_mov_b32 v246, v94
	v_dual_mov_b32 v249, v91 :: v_dual_mov_b32 v248, v90
	v_dual_mov_b32 v251, v89 :: v_dual_mov_b32 v250, v88
	v_dual_mov_b32 v253, v85 :: v_dual_mov_b32 v252, v84
	v_dual_mov_b32 v255, v87 :: v_dual_mov_b32 v254, v86
	v_dual_mov_b32 v211, v83 :: v_dual_mov_b32 v210, v82
	v_dual_mov_b32 v213, v81 :: v_dual_mov_b32 v212, v80
	v_dual_mov_b32 v215, v77 :: v_dual_mov_b32 v214, v76
	v_dual_mov_b32 v217, v79 :: v_dual_mov_b32 v216, v78
	v_dual_mov_b32 v219, v75 :: v_dual_mov_b32 v218, v74
	v_dual_mov_b32 v221, v73 :: v_dual_mov_b32 v220, v72
	v_dual_mov_b32 v223, v69 :: v_dual_mov_b32 v222, v68
	v_dual_mov_b32 v225, v71 :: v_dual_mov_b32 v224, v70
	v_dual_mov_b32 v227, v67 :: v_dual_mov_b32 v226, v66
.LBB0_17:
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 128 14 is_stmt 1              ; generate_amdgcn.py:128:14
	s_and_b32 s13, s5, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s4
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	s_add_i32 s0, s10, s11
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v168, v34
	v_cvt_f32_i32_e32 v34, v48
	v_cvt_f32_i32_e32 v48, v3
	v_cvt_f32_i32_e32 v173, v27
	v_cvt_f32_i32_e32 v27, v5
	v_cvt_f32_i32_e32 v169, v35
	v_cvt_f32_i32_e32 v35, v49
	v_cvt_f32_i32_e32 v49, v4
	v_cvt_f32_i32_e32 v170, v50
	v_cvt_f32_i32_e32 v50, v44
	v_cvt_f32_i32_e32 v44, v28
	v_cvt_f32_i32_e32 v28, v6
	v_cvt_f32_i32_e32 v97, v58
	v_cvt_f32_i32_e32 v58, v60
	v_cvt_f32_i32_e32 v60, v31
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v79, v126
	v_cvt_f32_i32_e32 v80, v127
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v98, v59
	v_cvt_f32_i32_e32 v59, v61
	v_cvt_f32_i32_e32 v171, v51
	v_cvt_f32_i32_e32 v126, v54
	v_cvt_f32_i32_e32 v127, v55
	v_cvt_f32_i32_e32 v110, v56
	v_cvt_f32_i32_e32 v111, v57
	v_cvt_f32_i32_e32 v61, v42
	v_cvt_f32_i32_e32 v172, v26
	v_cvt_f32_i32_e32 v51, v30
	v_cvt_f32_i32_e32 v107, v32
	v_cvt_f32_i32_e32 v109, v33
	v_cvt_f32_i32_e32 v54, v18
	v_cvt_f32_i32_e32 v55, v19
	v_cvt_f32_i32_e32 v32, v20
	v_cvt_f32_i32_e32 v42, v21
	v_cvt_f32_i32_e32 v21, v22
	v_cvt_f32_i32_e32 v22, v23
	v_cvt_f32_i32_e32 v18, v24
	v_cvt_f32_i32_e32 v19, v25
	v_cvt_f32_i32_e32 v24, v10
	v_cvt_f32_i32_e32 v23, v12
	v_cvt_f32_i32_e32 v20, v13
	v_cvt_f32_i32_e32 v33, v15
	v_cvt_f32_i32_e32 v57, v16
	v_cvt_f32_i32_e32 v56, v17
	v_cvt_f32_i32_e32 v13, v8
	v_cvt_f32_i32_e32 v133, v39
	v_cvt_f32_i32_e32 v39, v47
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s1, s20, s11
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v95, v142
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v142, v52
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v96, v143
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v143, v53
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_add_i32 s1, s1, s10
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v146, v117
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v117, v41
	v_cvt_f32_i32_e32 v41, v63
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v166, v144
	v_cvt_f32_i32_e32 v87, v138
	v_cvt_f32_i32_e32 v88, v139
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v149, v37
	v_cvt_f32_i32_e32 v37, v65
	v_cvt_f32_i32_e32 v65, v1
	v_cvt_f32_i32_e32 v103, v2
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v167, v145
	v_cvt_f32_i32_e32 v162, v226
	v_cvt_f32_i32_e32 v163, v227
	v_cvt_f32_i32_e32 v165, v211
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v174, v11
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v81, v152
	v_cvt_f32_i32_e32 v82, v153
	v_cvt_f32_i32_e32 v164, v210
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v11, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.h, 0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v86, v215
	v_cvt_f32_i32_e32 v85, v214
	v_cvt_f32_i32_e32 v151, v241
	v_cvt_f32_i32_e32 v77, v216
	v_cvt_f32_i32_e32 v145, v116
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v116, v40
	v_cvt_f32_i32_e32 v40, v62
	v_cvt_f32_i32_e32 v62, v43
	v_cvt_f32_i32_e32 v43, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v14.h, v7.h
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v150, v240
	v_cvt_f32_i32_e32 v141, v223
	v_cvt_f32_i32_e32 v140, v222
	v_cvt_f32_i32_e32 v137, v253
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v135, v237
	v_cvt_f32_i32_e32 v136, v252
	v_cvt_f32_i32_e32 v134, v236
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v125, v225
	v_cvt_f32_i32_e32 v121, v255
	v_cvt_f32_i32_e32 v124, v224
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v119, v239
	v_cvt_f32_i32_e32 v120, v254
	v_cvt_f32_i32_e32 v118, v238
	v_cvt_f32_i32_e32 v101, v250
	v_cvt_f32_i32_e32 v99, v234
	v_cvt_f32_i32_e32 v108, v221
	v_cvt_f32_i32_e32 v104, v220
	v_cvt_f32_i32_e32 v93, v218
	v_cvt_f32_i32_e32 v102, v251
	v_cvt_f32_i32_e32 v100, v235
	v_cvt_f32_i32_e32 v91, v248
	v_cvt_f32_i32_e32 v89, v232
	v_cvt_f32_i32_e32 v83, v244
	v_cvt_f32_i32_e32 v94, v219
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v92, v249
	v_cvt_f32_i32_e32 v90, v233
	v_cvt_f32_i32_e32 v78, v217
	v_cvt_f32_i32_e32 v84, v245
	v_cvt_f32_i32_e32 v75, v246
	v_cvt_f32_i32_e32 v74, v231
	v_cvt_f32_i32_e32 v76, v247
	v_cvt_f32_i32_e32 v73, v230
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s9, s9, 0xffff
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v9, 4, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v66, 15, v0
	v_lshrrev_b32_e32 v72, 1, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_or_b32 v105, v9, 16, v66
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v66, 0x70, v72
	v_and_b32_e32 v123, 0x78, v72
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v72, v132
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v132, v38
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v112, 32, v105
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_or_b32 v106, v9, 1, v66
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v115, 64, v105
	v_or_b32_e32 v122, 0x60, v105
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v66, s20, v105
	v_or_b32_e32 v67, s20, v112
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v9, 2, v106
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v68, s20, v115
	v_or_b32_e32 v69, s20, v122
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v70, s10, v106
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v66, 1, v66
	v_lshlrev_b32_e32 v67, 1, v67
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v71, s10, v9
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v68, 1, v68
	v_lshlrev_b32_e32 v69, 1, v69
	s_clause 0x3
	buffer_load_u16 v154, v66, s[12:15], 0 offen
	buffer_load_u16 v155, v67, s[12:15], 0 offen
	buffer_load_u16 v156, v68, s[12:15], 0 offen
	buffer_load_u16 v157, v69, s[12:15], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v66, 1, v70
	v_lshlrev_b32_e32 v67, 1, v71
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v68, s0, v106, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s13, s7, 0xffff
	s_mov_b32 s12, s6
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v9, s0, v9, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x3
	buffer_load_u16 v158, v66, s[12:15], 0 offen
	buffer_load_u16 v159, v67, s[12:15], 0 offen
	buffer_load_u16 v160, v68, s[12:15], 0 offen
	buffer_load_u16 v161, v9, s[12:15], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v3, 4, v106
	v_or_b32_e32 v5, 6, v106
	v_or_b32_e32 v31, 8, v106
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v38, v46
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v46, 10, v106
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v4, s0, v3, 1
	v_add_lshl_u32 v6, s0, v5, 1
	s_clause 0x1
	buffer_load_u16 v175, v4, s[12:15], 0 offen
	buffer_load_u16 v176, v6, s[12:15], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v8, 0x8e, v106
	v_or_b32_e32 v10, 0x8c, v106
	v_or_b32_e32 v6, 0x8a, v106
	v_or_b32_e32 v12, 0x88, v106
	v_or_b32_e32 v15, 0x86, v106
	v_or_b32_e32 v16, 0x84, v106
	v_or_b32_e32 v17, 0x82, v106
	v_or_b32_e32 v25, 0x80, v106
	v_or_b32_e32 v26, 14, v106
	v_or_b32_e32 v30, 12, v106
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v47, s10, v3
	v_or_b32_e32 v52, s10, v5
	v_or_b32_e32 v53, s10, v31
	v_or_b32_e32 v63, s10, v46
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v66, v113
	v_cvt_f32_i32_e32 v9, v114
	v_cvt_f32_i32_e32 v113, v147
	v_cvt_f32_i32_e32 v114, v148
	v_cvt_f32_i32_e32 v71, v131
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v148, v36
	v_cvt_f32_i32_e32 v36, v64
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_or_b32_e32 v2, s1, v123
	v_add3_u32 v1, s1, v123, 0x80
	v_mul_lo_u32 v4, s11, v105
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v64, s10, v30
	v_or_b32_e32 v105, s10, v26
	v_or_b32_e32 v106, s10, v25
	v_or_b32_e32 v123, s10, v17
	v_or_b32_e32 v128, s10, v16
	v_or_b32_e32 v131, s10, v15
	v_or_b32_e32 v138, s10, v12
	v_or_b32_e32 v139, s10, v6
	v_or_b32_e32 v144, s10, v10
	v_or_b32_e32 v147, s10, v8
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v180, s0, v16, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v16, 1, v47
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v179, s0, v17, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v17, 1, v52
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v178, s0, v30, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v30, 1, v53
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v177, s0, v31, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v31, 1, v63
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v46, s0, v46, 1
	v_add_lshl_u32 v26, s0, v26, 1
	v_add_lshl_u32 v25, s0, v25, 1
	v_add_lshl_u32 v15, s0, v15, 1
	v_add_lshl_u32 v181, s0, v6, 1
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v6, s11, v112
	v_mul_lo_u32 v5, s11, v115
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v47, 1, v64
	v_lshlrev_b32_e32 v52, 1, v105
	v_lshlrev_b32_e32 v53, 1, v106
	v_lshlrev_b32_e32 v63, 1, v123
	v_lshlrev_b32_e32 v64, 1, v128
	v_lshlrev_b32_e32 v112, 1, v131
	v_lshlrev_b32_e32 v115, 1, v138
	v_lshlrev_b32_e32 v128, 1, v139
	v_lshlrev_b32_e32 v131, 1, v144
	v_lshlrev_b32_e32 v144, 1, v147
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v12, s0, v12, 1
	v_add_lshl_u32 v10, s0, v10, 1
	v_add_lshl_u32 v8, s0, v8, 1
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v3, s11, v122
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x19
	buffer_load_u16 v152, v16, s[12:15], 0 offen
	buffer_load_u16 v153, v17, s[12:15], 0 offen
	buffer_load_u16 v138, v30, s[12:15], 0 offen
	buffer_load_u16 v139, v31, s[12:15], 0 offen
	buffer_load_u16 v122, v47, s[12:15], 0 offen
	buffer_load_u16 v123, v52, s[12:15], 0 offen
	buffer_load_u16 v105, v53, s[12:15], 0 offen
	buffer_load_u16 v106, v63, s[12:15], 0 offen
	buffer_load_u16 v52, v64, s[12:15], 0 offen
	buffer_load_u16 v53, v112, s[12:15], 0 offen
	buffer_load_u16 v30, v115, s[12:15], 0 offen
	buffer_load_u16 v31, v128, s[12:15], 0 offen
	buffer_load_u16 v16, v131, s[12:15], 0 offen
	buffer_load_u16 v17, v144, s[12:15], 0 offen
	buffer_load_u16 v144, v177, s[12:15], 0 offen
	buffer_load_u16 v147, v46, s[12:15], 0 offen
	buffer_load_u16 v128, v178, s[12:15], 0 offen
	buffer_load_u16 v131, v26, s[12:15], 0 offen
	buffer_load_u16 v112, v25, s[12:15], 0 offen
	buffer_load_u16 v115, v179, s[12:15], 0 offen
	buffer_load_u16 v63, v180, s[12:15], 0 offen
	buffer_load_u16 v64, v15, s[12:15], 0 offen
	buffer_load_u16 v46, v12, s[12:15], 0 offen
	buffer_load_u16 v47, v181, s[12:15], 0 offen
	buffer_load_u16 v25, v10, s[12:15], 0 offen
	buffer_load_u16 v26, v8, s[12:15], 0 offen
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v69, v213
	v_cvt_f32_i32_e32 v70, v212
	v_cvt_f32_i32_e32 v68, v243
	v_cvt_f32_i32_e32 v67, v242
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s10, s14
	s_mov_b32 s11, s15
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(35)
	v_lshlrev_b32_e32 v12, 16, v154
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v8, 16, v156
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v15, 16, v157
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v154, 16, v158
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v157, 16, v160
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v158, 16, v161
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v156, v15, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v160, v15, v157
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v156, v156, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v24, v160, v24
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v10, 16, v155
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v184, v10, v158 :: v_dual_lshlrev_b32 v155, 16, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v159, v15, v155
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v159, v159, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v167, v184, v171
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v179, v12, v157
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v178, v12, v155
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v166, v179, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v160, v178, v163 :: v_dual_mul_f32 v171, 0xbfb8aa3b, v166
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v180, v12, v158
	v_mul_f32_e32 v161, v15, v158
	v_mul_f32_e32 v158, v8, v158
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v171
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v163, v180, v169
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v169, 0xbfb8aa3b, v24
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v183, v10, v157
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v161, v161, v174
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v171, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v168, v183, v170 :: v_dual_mul_f32 v157, v8, v157
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v170, 0xbfb8aa3b, v161 :: v_dual_fmac_f32 v171, 0xbfb8aa3b, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v169, 0, 0x42800000, s0
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v158, v158, v173 :: v_dual_mul_f32 v157, v157, v172
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v173, 0xbfb8aa3b, v168
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v177, v12, v154
	v_mul_f32_e32 v181, v10, v154
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v170
	v_exp_f32_e32 v171, v171
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v173
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v162, v177, v162 :: v_dual_mul_f32 v177, 0xbfb8aa3b, v157
	v_mul_f32_e32 v164, v181, v164
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v182, v10, v155
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v173, 0, 0x42800000, s4
	v_mul_f32_e32 v172, 0xbfb8aa3b, v163
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v177
	v_cndmask_b32_e64 v184, 0, 0xffffffc0, s4
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v165, v182, v165
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v173, 0xbfb8aa3b, v168
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v172
	v_cndmask_b32_e64 v177, 0, 0x42800000, s6
	v_mul_f32_e32 v174, 0xbfb8aa3b, v167
	v_cndmask_b32_e64 v186, 0, 0xffffffc0, s6
	v_exp_f32_e32 v173, v173
	v_cndmask_b32_e64 v172, 0, 0x42800000, s1
	v_fmac_f32_e32 v177, 0xbfb8aa3b, v157
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v174
	v_cndmask_b32_e64 v181, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v170, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v182, 0, 0xffffffc0, s2
	v_exp_f32_e32 v177, v177
	v_cndmask_b32_e64 v174, 0, 0x42800000, s3
	v_cndmask_b32_e64 v183, 0, 0xffffffc0, s3
	v_ldexp_f32 v173, v173, v184
	v_fmac_f32_e32 v172, 0xbfb8aa3b, v163
	v_ldexp_f32 v171, v171, v182
	v_fmac_f32_e32 v170, 0xbfb8aa3b, v161
	v_cndmask_b32_e64 v179, 0, 0xffffffc0, vcc_lo
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v173, 1.0, v173
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v172, v172
	v_ldexp_f32 v177, v177, v186
	v_fmac_f32_e32 v174, 0xbfb8aa3b, v167
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v171, 1.0, v171
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v170, v170
	v_fmac_f32_e32 v169, 0xbfb8aa3b, v24
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v177, 1.0, v177
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v174, v174
	v_cndmask_b32_e64 v180, 0, 0xffffffc0, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v186, s2, v166, v171, v166
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v172, v172, v181
	v_exp_f32_e32 v169, v169
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v190, s4, v168, v173, v168
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v170, v170, v179
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v189, null, v173, v173, v168
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v174, v174, v183
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v192, null, v177, v177, v157
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v198, v189
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v169, v169, v180
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v174, 1.0, v174
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v178, 0xbfb8aa3b, v158
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v200, v192
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v155, v8, v155
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v169, 1.0, v169
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v187, null, v174, v174, v167
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v178
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v207, -v189, v198, 1.0
	v_div_scale_f32 v181, null, v169, v169, v24
	s_waitcnt lgkmcnt(0)
	v_rcp_f32_e32 v197, v187
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v178, 0, 0x42800000, s5
	v_cndmask_b32_e64 v185, 0, 0xffffffc0, s5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v194, v181
	v_div_scale_f32 v182, s0, v24, v169, v24
	v_fma_f32 v209, -v192, v200, 1.0
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v154, v8, v154
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v152, 16, v152
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v138, 16, v138
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v206, -v187, v197, 1.0
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v172, 1.0, v172
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v200, v209, v200
	v_fma_f32 v203, -v181, v194, 1.0
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v150, v154, v150
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v197, v206, v197
	v_div_scale_f32 v183, null, v172, v172, v163
	v_div_scale_f32 v184, s1, v163, v172, v163
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v122, 16, v122
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v195, v183
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v106, 16, v106
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v64, 16, v64
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v151, v155, v151 :: v_dual_lshlrev_b32 v26, 16, v26
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v153, 16, v153
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v147, 16, v147
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v204, -v183, v195, 1.0
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v170, 1.0, v170 :: v_dual_lshlrev_b32 v139, 16, v139
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v131, 16, v131
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v123, 16, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v195, v204, v195
	v_div_scale_f32 v179, null, v170, v170, v161
	v_div_scale_f32 v180, vcc_lo, v161, v170, v161
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v115, 16, v115
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v193, v179
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v105, 16, v105
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v63, 16, v63
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v202, -v179, v193, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v178, 0xbfb8aa3b, v158 :: v_dual_fmac_f32 v193, v202, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v178, v178
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v202, v180, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v210, -v179, v202, v180
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v178, v178, v185
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v185, null, v171, v171, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v202, v210, v193
	v_rcp_f32_e32 v196, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v179, -v179, v202, v180
	v_div_fmas_f32 v179, v179, v193, v202
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v205, -v185, v196, 1.0
	v_div_fixup_f32 v161, v179, v170, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v196, v205, v196
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v178, 1.0, v178 :: v_dual_mul_f32 v159, v159, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v205, v186, v196
	v_div_scale_f32 v191, null, v178, v178, v158
	v_div_scale_f32 v201, s5, v158, v178, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v213, -v185, v205, v186
	v_fmac_f32_e32 v194, v203, v194
	v_rcp_f32_e32 v199, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v205, v213, v196
	v_mul_f32_e32 v203, v182, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v211, -v181, v203, v182
	v_mul_f32_e32 v204, v184, v195
	v_fma_f32 v208, -v191, v199, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v203, v211, v194
	v_fma_f32 v212, -v183, v204, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v199, v208, v199
	v_div_scale_f32 v188, s3, v167, v174, v167
	v_fma_f32 v180, -v181, v203, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v204, v212, v195
	v_fma_f32 v182, -v185, v205, v186
	v_div_scale_f32 v185, s6, v157, v177, v157
	v_div_fmas_f32 v180, v180, v194, v203
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v181, -v183, v204, v184
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v198, v207, v198
	v_mul_f32_e32 v208, v201, v199
	v_div_fixup_f32 v24, v180, v169, v24
	v_div_fmas_f32 v181, v181, v195, v204
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v170, v182, v196, v205
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v163, v181, v172, v163
	v_fma_f32 v216, -v191, v208, v201
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v24, v156, v24
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v161, v170, v171, v166
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v160, v160, v163 :: v_dual_mul_f32 v163, v185, v200
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v207, v190, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v161, v162, v161 :: v_dual_fmac_f32 v208, v216, v199
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v7.l, v160.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v215, -v189, v207, v190
	v_mul_f32_e32 v206, v188, v197
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v14.l, v161.h
	v_cmp_o_f32_e64 s0, v161, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v207, v215, v198
	v_fma_f32 v214, -v187, v206, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v14, 1, v14
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v184, -v189, v207, v190
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v206, v214, v197
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v161, v161, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v183, -v187, v206, v188
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.l, 0x7fff, v161.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v169, v183, v197, v206
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v166, v184, v198, v207
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v162, v169, v174, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v156, v166, v173, v168
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v166, 1, v7
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v162, v165, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v156, v164, v156
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v164, -v192, v163, v185
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v160, v160, v166, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v7.l, v162.h
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v166, 16, v176
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v163, v164, v200
	v_fma_f32 v164, -v191, v208, v201
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.h, 0x7fff, v160.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v165, 1, v7
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v155, v15, v166
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v164, v164, v199, v208
	s_mov_b32 vcc_lo, s6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v160.h, v7.h
	v_add3_u32 v161, v162, v165, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v165, -v192, v163, v185
	v_div_fixup_f32 v154, v164, v178, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v163, v165, v200, v163
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v151, v151, v154
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v154, v155, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v157, v163, v177, v157
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v7.l, v151.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v155, 0xbfb8aa3b, v154
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v160.l, v156.h
	v_cmp_o_f32_e64 s1, v151, v151
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v150, v150, v157 :: v_dual_lshlrev_b32 v157, 16, v175
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v155
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v155, 0, 0x42800000, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v20.h, 0x7fff, v161.h, vcc_lo
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v161, v15, v157 :: v_dual_and_b32 v160, 1, v160
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v155, 0xbfb8aa3b, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v158, v156, v160, 0x7fff
	v_and_b32_e32 v160, 1, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v155, v155
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v156.l, v150.h
	v_mov_b16_e64 v156.h, v7.h
	v_cndmask_b16 v20.l, 0x7fff, v158.h, vcc_lo
	v_add3_u32 v160, v151, v160, 0x7fff
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v151, v161, v23
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v161, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v156, 1, v156
	v_mov_b16_e64 v7.l, v159.h
	v_cndmask_b16 v23.h, 0x7fff, v160.h, s1
	v_mov_b16_e64 v160.l, v24.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v155, v155, v161
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v160.h, v7.h
	v_add3_u32 v156, v150, v156, 0x7fff
	v_cmp_o_f32_e64 s0, v150, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v155, 1.0, v155 :: v_dual_and_b32 v150, 1, v160
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v160, 1, v7
	v_cndmask_b16 v23.l, 0x7fff, v156.h, s0
	v_cmp_o_f32_e64 s0, v159, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v163, s1, v154, v155, v154
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v158, 0xbfb8aa3b, v151
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v156, v159, v160, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v160, v12, v166
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v161, null, v155, v155, v154
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v158
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v150, v24, v150, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v149, v160, v149
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v160, v161
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v162, v12, v157
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v158, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v159, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_cndmask_b16 v24.h, 0x7fff, v156.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v158, 0xbfb8aa3b, v151
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.l, 0x7fff, v150.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v158, v158
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v158, v158, v159
	v_dual_mul_f32 v159, 0xbfb8aa3b, v149 :: v_dual_add_f32 v150, 1.0, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v159
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v158, -v161, v160, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v156, 0, 0x42800000, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v160, v158, v160
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v164, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v156, 0xbfb8aa3b, v149 :: v_dual_mul_f32 v165, v163, v160
	v_exp_f32_e32 v156, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v168, -v161, v165, v163
	v_fmac_f32_e32 v165, v168, v160
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v156, v156, v164
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v161, -v161, v165, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v156, 1.0, v156
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v160, v161, v160, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v154, v160, v155, v154
	v_div_scale_f32 v160, s1, v149, v156, v149
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v148, v162, v148
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v162, null, v150, v150, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v159, 0xbfb8aa3b, v148
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v159, v162
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v158, 0, 0x42800000, s0
	v_cndmask_b32_e64 v169, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v158, 0xbfb8aa3b, v148
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v167, -v162, v159, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v159, v167, v159
	v_div_scale_f32 v167, s0, v151, v150, v151
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v170, v167, v159
	v_fma_f32 v172, -v162, v170, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v170, v172, v159
	v_fma_f32 v155, -v162, v170, v167
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v167, v10, v157
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v158, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v155, v155, v159, v170
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v142, v167, v142
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v150, v155, v150, v151
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v151, v10, v166
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v158, v158, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v143, v151, v143
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v151, v12, v153 :: v_dual_add_f32 v158, 1.0, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v164, v15, v152 :: v_dual_mul_f32 v167, 0xbfb8aa3b, v143
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v141, v151, v141
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v169, null, v156, v156, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v145, v164, v145
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v167
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v168, v15, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v171, v169
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v145, v145, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v165, -v169, v171, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v171, v165, v171
	v_mul_f32_e32 v159, v160, v171
	v_div_scale_f32 v163, null, v158, v158, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v164, -v169, v159, v160
	v_rcp_f32_e32 v161, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v159, v164, v171
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v155, v12, v152
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v151, -v169, v159, v160
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v162, -v163, v161, 1.0
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v140, v155, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v151, v151, v171, v159
	v_fmac_f32_e32 v161, v162, v161
	v_div_scale_f32 v162, s0, v148, v158, v148
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v149, v151, v156, v149
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v151.h, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v165, v162, v161
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v156, v8, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v141, v141, v149
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v164, -v163, v165, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v44, v156, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v7.l, v141.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s0, v141, v141
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v165, v164, v161
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v164, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v159, -v163, v165, v162
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v164, 0xbfb8aa3b, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v159, v159, v161, v165
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v155, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v148, v159, v158, v148
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v159, 0xbfb8aa3b, v44
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v140, v140, v148
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v148, v155, v150
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v151.l, v140.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v148, 1.0, v148
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v146, v168, v146 :: v_dual_and_b32 v151, 1, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v155, null, v148, v148, v143
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v146, v146, v154
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v154, 1, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v157, v155
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v154, v141, v154, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v141, -v155, v157, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v160, 0xbfb8aa3b, v142 :: v_dual_fmac_f32 v157, v141, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v160
	v_cndmask_b32_e64 v160, 0, 0x42800000, s1
	v_cndmask_b32_e64 v150, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v159, 0, 0x42800000, s1
	v_fmac_f32_e32 v160, 0xbfb8aa3b, v142
	v_cndmask_b32_e64 v163, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v159, 0xbfb8aa3b, v44
	v_exp_f32_e32 v149, v160
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v149, v149, v150
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v150, v8, v166 :: v_dual_add_f32 v149, 1.0, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v150, v150, v29
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v158, null, v149, v149, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v29, 0xbfb8aa3b, v150
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v161, s2, v142, v149, v142
	v_rcp_f32_e32 v156, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.h, 0x7fff, v154.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v160, 0, 0x42800000, vcc_lo
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v141, -v158, v156, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v160, 0xbfb8aa3b, v150
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v156, v141, v156
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v141, v159
	v_cndmask_b32_e64 v159, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v141, v141, v163
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v163, v10, v153
	v_mul_f32_e32 v153, v8, v153
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v154, v160
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v141, 1.0, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v137, v163, v137
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v160, s0, v143, v148, v143
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v135, v153, v135
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v164, v10, v152
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v162, v160, v157
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v154, v154, v159
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v159, v161, v156
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v151, v140, v151, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v136, v164, v136
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v165, -v155, v162, v160
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v154, 1.0, v154
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v166, -v158, v159, v161
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v140, v140
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v152, v8, v152
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v162, v165, v157
	v_div_scale_f32 v165, null, v154, v154, v150
	v_fmac_f32_e32 v159, v166, v156
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.l, 0x7fff, v151.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v155, -v155, v162, v160
	v_rcp_f32_e32 v163, v165
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v134, v152, v134
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v158, -v158, v159, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v155, v155, v157, v162
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v156, v158, v156, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v143, v155, v148, v143
	v_fma_f32 v157, -v165, v163, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v142, v156, v149, v142
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v137, v137, v143
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v143.h, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v163, v157, v163 :: v_dual_mul_f32 v136, v136, v142
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v7.l, v137.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v143.l, v136.h
	v_and_b32_e32 v157, 1, v7
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v149, vcc_lo, v150, v154, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v143, 1, v143
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v166, null, v141, v141, v44
	v_mul_f32_e32 v142, v149, v163
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v151, v137, v157, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v160, v166
	v_fma_f32 v155, -v165, v142, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v142, v155, v163
	v_fma_f32 v148, -v166, v160, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v149, -v165, v142, v149
	v_fmac_f32_e32 v160, v148, v160
	v_div_scale_f32 v148, s0, v44, v141, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v142, v149, v163, v142
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v140, v148, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v156, -v166, v140, v148
	v_fmac_f32_e32 v140, v156, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v148, -v166, v140, v148
	v_div_fmas_f32 v140, v148, v160, v140
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v148, v15, v147
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	v_add3_u32 v137, v136, v143, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v44, v140, v141, v44
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v141, 16, v144
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v142, v142, v154, v150
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v140, v148, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.h, 0x7fff, v151.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v143, v15, v141
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v135, v135, v142 :: v_dual_mul_f32 v44, v134, v44
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v134, 0xbfb8aa3b, v140
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.l, 0x7fff, v137.h, vcc_lo
	v_mov_b16_e64 v136.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v7.l, v135.h
	v_cmp_o_f32_e64 s1, v135, v135
	v_mov_b16_e64 v136.l, v44.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v134
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v142, 1, v7
	v_mov_b16_e64 v7.l, v146.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v136, 1, v136
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v134, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v142, v135, v142, 0x7fff
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v135, v143, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v142.l, v145.h
	v_add3_u32 v136, v44, v136, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v143, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.h, 0x7fff, v142.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v137, 0xbfb8aa3b, v135
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v142.h, v7.h
	v_cmp_o_f32_e64 s0, v44, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v137
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v44, 1, v142
	v_and_b32_e32 v142, 1, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v43.l, 0x7fff, v136.h, s0
	v_cmp_o_f32_e64 s0, v146, v146
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v137, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v136, v145, v44, 0x7fff
	v_add3_u32 v44, v146, v142, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v142, v12, v147
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v144, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v137, 0xbfb8aa3b, v135
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v145, v145
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v145, v12, v141
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v133, v142, v133
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v137, v137
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.l, 0x7fff, v136.h, vcc_lo
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v132, v145, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v145, 0xbfb8aa3b, v132
	v_ldexp_f32 v137, v137, v144
	v_mul_f32_e32 v144, 0xbfb8aa3b, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v145
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v136, 1.0, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v144
	v_cndmask_b32_e64 v153, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v146, null, v136, v136, v135
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v137, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v149, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v145, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v137, 0xbfb8aa3b, v133
	v_exp_f32_e32 v137, v137
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v151, -v146, v145, 1.0
	v_fmac_f32_e32 v145, v151, v145
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v137, v137, v149
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v149, v15, v138 :: v_dual_fmac_f32 v134, 0xbfb8aa3b, v140
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v137, 1.0, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v129, v149, v129
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v134, v134
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v134, v134, v143
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v134, 1.0, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v143, null, v134, v134, v140
	v_div_scale_f32 v148, s1, v140, v134, v140
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v142, v143
	v_fma_f32 v144, -v143, v142, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v142, v144, v142
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v144, 0, 0x42800000, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v151, s0, v135, v136, v135
	v_mul_f32_e32 v150, v148, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v144, 0xbfb8aa3b, v132
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v154, v151, v145
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v152, -v143, v150, v148
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v144, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v156, -v146, v154, v151
	v_fmac_f32_e32 v150, v152, v142
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v152, v15, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v154, v156, v145
	v_fma_f32 v143, -v143, v150, v148
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v144, v144, v153
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v153, null, v137, v137, v133
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v130, v152, v130
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v142, v143, v142, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v144, 1.0, v144
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v155, v153
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v134, v142, v134, v140
	v_div_scale_f32 v148, null, v144, v144, v132
	v_fma_f32 v140, -v146, v154, v151
	v_div_scale_f32 v142, s1, v133, v137, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v143, v148
	v_fma_f32 v150, -v153, v155, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v140, v140, v145, v154
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v151, v10, v141
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v130, v130, v134
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v155, v150, v155
	v_div_fixup_f32 v135, v140, v136, v135
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v136, v10, v147
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v126, v151, v126
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_fma_f32 v146, -v148, v143, 1.0
	v_dual_mul_f32 v145, v142, v155 :: v_dual_mul_f32 v140, v12, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v127, v136, v127
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v136, v12, v139
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v143, v146, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v149, -v153, v145, v142
	v_div_scale_f32 v146, s0, v132, v144, v132
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v151, 0xbfb8aa3b, v127
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v125, v136, v125
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v145, v149, v155
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v150, v146, v143
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v124, v140, v124
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v151
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v129, v129, v135
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v136, -v153, v145, v142
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v142, 0xbfb8aa3b, v126
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v149, -v148, v150, v146
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v135, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v136, v136, v155, v145
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v142
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v150, v149, v143
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v149, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v133, v136, v137, v133
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v142, 0, 0x42800000, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v145, -v148, v150, v146
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v149, 0xbfb8aa3b, v127
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v125, v125, v133 :: v_dual_fmac_f32 v142, 0xbfb8aa3b, v126
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v143, v145, v143, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v140, v149
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v125.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v133, v142
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v132, v143, v144, v132
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v125, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v136, 1, v7
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v124, v124, v132
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v132, v140, v135
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v140, v8, v141
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v136, v125, v136, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v133, v133, v134
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v134, v8, v147
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v132, 1.0, v132
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v140, v140, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v135.l, v124.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v133, 1.0, v133 :: v_dual_mul_f32 v60, v134, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v137, null, v132, v132, v127
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v143, 0xbfb8aa3b, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v141, null, v133, v133, v126
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v134, v137
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v142, v141
	v_div_scale_f32 v145, s2, v126, v133, v126
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_cndmask_b32_e64 v143, 0, 0x42800000, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v51.h, 0x7fff, v136.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v147, 0, 0xffffffc0, s1
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v148, v10, v138
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v144, 0, 0x42800000, vcc_lo
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v125, -v137, v134, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v143, 0xbfb8aa3b, v140
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v135.h, v7.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v120, v148, v120
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v144, 0xbfb8aa3b, v60
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v134, v125, v134
	v_fma_f32 v125, -v141, v142, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v135, 1, v135
	v_cmp_o_f32_e64 s1, v124, v124
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v136, v144
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v144, s0, v127, v132, v127
	v_fmac_f32_e32 v142, v125, v142
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v125, v143
	v_cndmask_b32_e64 v143, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v146, v144, v134
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v135, v124, v135, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v136, v136, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v149, -v137, v146, v144
	v_mul_f32_e32 v143, v145, v142
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v51.l, 0x7fff, v135.h, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v125, v125, v147
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v136, 1.0, v136
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v146, v149, v134 :: v_dual_mul_f32 v147, v10, v139
	v_fma_f32 v150, -v141, v143, v145
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v125, 1.0, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v149, null, v136, v136, v60
	v_fma_f32 v137, -v137, v146, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v143, v150, v142
	v_div_scale_f32 v150, null, v125, v125, v140
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v121, v147, v121
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v134, v137, v134, v146
	v_rcp_f32_e32 v147, v149
	v_fma_f32 v141, -v141, v143, v145
	v_rcp_f32_e32 v144, v150
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v127, v134, v132, v127
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v135, v8, v138
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v137, v141, v142, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v121, v121, v127
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v141, -v149, v147, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v127.h, v7.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v132, -v150, v144, 1.0
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v118, v135, v118
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v121.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v147, v141, v147 :: v_dual_fmac_f32 v144, v132, v144
	v_div_scale_f32 v132, s0, v140, v125, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v141, 1, v7
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v126, v137, v133, v126
	v_div_scale_f32 v133, vcc_lo, v60, v136, v60
	v_mul_f32_e32 v124, v132, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v120, v120, v126
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v126, v133, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v137, -v150, v124, v132
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v127.l, v120.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v134, -v149, v126, v133
	v_dual_fmac_f32 v124, v137, v144 :: v_dual_mul_f32 v137, v8, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v127, 1, v127
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v126, v134, v147
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v134, v121, v141, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v132, -v150, v124, v132
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v119, v137, v119
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v133, -v149, v126, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v126, v133, v147, v126
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v124, v132, v144, v124
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v60, v126, v136, v60
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v126, v15, v131
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v121, v120, v127, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v124, v124, v125, v140
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v125, 16, v128
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v60, v119, v60
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v119, v126, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v56.h, 0x7fff, v134.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v120, v120
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v127, v15, v125 :: v_dual_mul_f32 v118, v118, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v120, 0xbfb8aa3b, v119
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v60.h
	v_mov_b16_e32 v124.h, v7.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v127, v127, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v124.l, v118.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v120
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v56.l, 0x7fff, v121.h, vcc_lo
	v_and_b32_e32 v126, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v121, 0xbfb8aa3b, v127 :: v_dual_and_b32 v124, 1, v124
	v_cndmask_b32_e64 v120, 0, 0x42800000, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v60, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v126, v60, v126, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v121
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v60, v118, v124, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v120, 0xbfb8aa3b, v119
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e64 v7.l, v130.h
	v_mov_b16_e64 v124.l, v129.h
	v_mov_b16_e32 v124.h, v7.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v121, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v120, v120
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v57.h, 0x7fff, v126.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v126, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v118, v118
	v_and_b32_e32 v118, 1, v124
	v_and_b32_e32 v124, 1, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v121, 0xbfb8aa3b, v127
	v_cndmask_b32_e64 v128, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v57.l, 0x7fff, v60.h, s0
	v_add3_u32 v118, v129, v118, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v120, v120, v126
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v60, v130, v124, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v121, v121
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v124, v12, v131
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v129, v129
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v120, 1.0, v120 :: v_dual_mul_f32 v129, v12, v125
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v130, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v117, v124, v117
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v60.l, 0x7fff, v118.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v126, null, v120, v120, v119
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v121, v121, v128
	v_mul_f32_e32 v128, 0xbfb8aa3b, v117
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v116, v129, v116
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v124, v126
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v60.h, 0x7fff, v60.h, s0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v118, 1.0, v121
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v128
	v_mul_f32_e32 v129, 0xbfb8aa3b, v116
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v132, s1, v119, v120, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v130, null, v118, v118, v127
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v121, 0, 0x42800000, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v128, -v126, v124, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v129, v130
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v121, 0xbfb8aa3b, v117 :: v_dual_fmac_f32 v124, v128, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v128, 0, 0x42800000, s0
	v_cndmask_b32_e64 v137, 0, 0xffffffc0, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v121, v121
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v134, v132, v124
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v128, 0xbfb8aa3b, v116
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v135, -v130, v129, 1.0
	v_fma_f32 v136, -v126, v134, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v128, v128
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v129, v135, v129
	v_div_scale_f32 v135, s0, v127, v118, v127
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v121, v121, v133
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v134, v136, v124 :: v_dual_mul_f32 v133, v15, v122
	v_mul_f32_e32 v138, v135, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v136, v15, v123 :: v_dual_add_f32 v121, 1.0, v121
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v128, v128, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v126, -v126, v134, v132
	v_fma_f32 v140, -v130, v138, v135
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v113, v133, v113
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v137, null, v121, v121, v117
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v128, 1.0, v128
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v124, v126, v124, v134
	v_fmac_f32_e32 v138, v140, v129
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v139, v137
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v132, null, v128, v128, v116
	v_div_fixup_f32 v119, v124, v120, v119
	v_fma_f32 v120, -v130, v138, v135
	v_div_scale_f32 v124, s1, v117, v121, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v126, v132
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v135, v10, v125
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v134, -v137, v139, 1.0
	v_div_fmas_f32 v120, v120, v129, v138
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v110, v135, v110 :: v_dual_fmac_f32 v139, v134, v139
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v118, v120, v118, v127
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v120, v10, v131
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v130, -v132, v126, 1.0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v127, v12, v122
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v129, v124, v139
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v113, v113, v118
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v111, v120, v111 :: v_dual_fmac_f32 v126, v130, v126
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v130, s0, v116, v128, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v133, -v137, v129, v124
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v120, v12, v123
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v135, 0xbfb8aa3b, v111 :: v_dual_mul_f32 v134, v130, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v104, v127, v104 :: v_dual_fmac_f32 v129, v133, v139
	v_mul_f32_e32 v108, v120, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v135
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v133, -v132, v134, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v120, -v137, v129, v124
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v124, 0xbfb8aa3b, v110
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v134, v133, v126
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v133, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v120, v120, v139, v129
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v124
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v129, -v132, v134, v130
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v133, 0xbfb8aa3b, v111
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v117, v120, v121, v117
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v124, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v126, v129, v126, v134
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v127, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v108, v108, v117
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v124, 0xbfb8aa3b, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v116, v126, v128, v116
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v108.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v117, v124
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v124, v8, v125
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v116, v104, v116
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v104, v127, v118
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v108, v108
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v107, v124, v107 :: v_dual_add_f32 v120, 1.0, v104
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v104, 1, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v117, v117, v118
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v118, v8, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v127, 0xbfb8aa3b, v107
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v121, null, v120, v120, v111
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v117, 1.0, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v109, v118, v109
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v118, v121
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v104, v108, v104, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v125, null, v117, v117, v110
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v124, 0xbfb8aa3b, v109
	v_cndmask_b32_e64 v127, 0, 0x42800000, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v104.h, 0x7fff, v104.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v126, v125
	v_div_scale_f32 v128, s0, v111, v120, v111
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v124
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v108, -v121, v118, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v127, 0xbfb8aa3b, v107
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v129, s2, v110, v117, v110
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v124, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v118, v108, v118
	v_fma_f32 v108, -v125, v126, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v131, 0, 0xffffffc0, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v116, v116
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v124, 0xbfb8aa3b, v109
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v130, v128, v118
	v_fmac_f32_e32 v126, v108, v126
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v108, v127
	v_cndmask_b32_e64 v127, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v124, v124
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v133, -v121, v130, v128
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v130, v133, v118
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v108, v108, v131
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v131, v10, v123
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v124, v124, v127
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v127, v129, v126
	v_fma_f32 v121, -v121, v130, v128
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v108, 1.0, v108
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v102, v131, v102
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v124, 1.0, v124
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v134, -v125, v127, v129
	v_div_fmas_f32 v118, v121, v118, v130
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v133, null, v124, v124, v109
	v_fmac_f32_e32 v127, v134, v126
	v_div_scale_f32 v134, null, v108, v108, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v131, v133
	v_div_fixup_f32 v111, v118, v120, v111
	v_fma_f32 v125, -v125, v127, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v128, v134
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v102, v102, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v121, v125, v126, v127
	v_fma_f32 v125, -v133, v131, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v102.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v110, v121, v117, v110
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v118, -v134, v128, 1.0
	v_div_scale_f32 v117, vcc_lo, v109, v124, v109
	v_fmac_f32_e32 v131, v125, v131
	v_dual_fmac_f32 v128, v118, v128 :: v_dual_and_b32 v125, 1, v7
	v_div_scale_f32 v118, s0, v107, v108, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v111, v118, v128
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v132, v10, v122
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v121, -v134, v111, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v101, v132, v101
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v111, v121, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v101, v101, v110
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v110, v117, v131
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v121, v8, v123
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v118, -v134, v111, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v120, -v133, v110, v117
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v100, v121, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v110, v120, v131
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v120, v8, v122
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v117, -v133, v110, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v99, v120, v99
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v110, v117, v131, v110
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v111, v118, v128, v111
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v109, v110, v124, v109
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v110, v15, v115
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v107, v111, v108, v107
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v108.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v100, v100, v109 :: v_dual_lshlrev_b32 v109, 16, v112
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v114, v136, v114 :: v_dual_mul_f32 v103, v110, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v107, v99, v107
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v100.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v111, v15, v109 :: v_dual_mul_f32 v114, v114, v119
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v119.l, v116.h
	v_mov_b16_e32 v119.h, v7.h
	v_mov_b16_e32 v108.l, v107.h
	v_and_b32_e32 v110, 1, v7
	v_mov_b16_e32 v7.l, v114.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v119, 1, v119
	v_and_b32_e32 v108, 1, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v110, v100, v110, 0x7fff
	v_mov_b16_e32 v110.l, v113.h
	v_add3_u32 v119, v116, v119, 0x7fff
	v_mov_b16_e32 v116.l, v101.h
	v_mov_b16_e32 v116.h, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v104.l, 0x7fff, v119.h, s1
	v_add3_u32 v119, v102, v125, 0x7fff
	v_and_b32_e32 v116, 1, v116
	v_cmp_o_f32_e64 s1, v100, v100
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v100, v111, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v99.h, 0x7fff, v119.h, vcc_lo
	v_add3_u32 v102, v101, v116, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v101, v101
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v101, 0xbfb8aa3b, v103
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v65.h, 0x7fff, v110.h, s1
	v_mov_b16_e32 v110.h, v7.h
	v_cndmask_b16 v99.l, 0x7fff, v102.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v101
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v102, v107, v108, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v108, 0xbfb8aa3b, v100
	v_cndmask_b32_e64 v101, 0, 0x42800000, s0
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v108
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v107, v107
	v_and_b32_e32 v107, 1, v110
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v101, 0xbfb8aa3b, v103
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v110, 1, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v108, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v65.l, 0x7fff, v102.h, s0
	v_add3_u32 v102, v113, v107, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v101, v101
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v107, v114, v110, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v108, 0xbfb8aa3b, v100
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v110, v12, v115
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v112, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v114, v114
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v108, v108
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v110, v110, v98
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v114, v12, v109
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v101, v101, v111
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v98.l, 0x7fff, v102.h, vcc_lo
	v_cndmask_b16 v98.h, 0x7fff, v107.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v97, v114, v97
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v101, 1.0, v101
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v108, v108, v112
	v_mul_f32_e32 v112, 0xbfb8aa3b, v110
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v111, null, v101, v101, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v102, 1.0, v108
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v112
	v_mul_f32_e32 v112, 0xbfb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v113, v111
	v_div_scale_f32 v116, s1, v103, v101, v103
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v107, 0, 0x42800000, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v114, null, v102, v102, v100
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v112
	v_cndmask_b32_e64 v117, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v107, 0xbfb8aa3b, v110
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v112, v114
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v108, -v111, v113, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v121, 0, 0xffffffc0, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v107, v107
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v113, v108, v113
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v108, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v119, -v114, v112, 1.0
	v_mul_f32_e32 v118, v116, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v108, 0xbfb8aa3b, v97
	v_ldexp_f32 v107, v107, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v112, v119, v112
	v_fma_f32 v120, -v111, v118, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v108, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v119, s0, v100, v102, v100
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v107, 1.0, v107 :: v_dual_fmac_f32 v118, v120, v113
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v117, v15, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v122, v119, v112
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v120, v15, v106
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v111, -v111, v118, v116
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v108, v108, v121
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v121, null, v107, v107, v110
	v_fma_f32 v124, -v114, v122, v119
	v_div_fmas_f32 v111, v111, v113, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v108, 1.0, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v123, v121
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v122, v124, v112
	v_div_fixup_f32 v101, v111, v101, v103
	v_div_scale_f32 v116, null, v108, v108, v97
	v_div_scale_f32 v111, s1, v110, v107, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v103, -v114, v122, v119
	v_rcp_f32_e32 v113, v116
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v118, -v121, v123, 1.0
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v95, v117, v95
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v119, v10, v109
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v103, v103, v112, v122
	s_mov_b32 vcc_lo, s1
	v_dual_fmac_f32 v123, v118, v123 :: v_dual_mul_f32 v96, v120, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v61, v119, v61
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v100, v103, v102, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v114, -v116, v113, 1.0
	v_mul_f32_e32 v112, v111, v123
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v102, v10, v115 :: v_dual_mul_f32 v103, v12, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v95, v95, v100
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v113, v114, v113
	v_div_scale_f32 v114, s0, v97, v108, v97
	v_fma_f32 v117, -v121, v112, v111
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v62, v102, v62
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v102, v12, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v118, v114, v113
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v93, v103, v93 :: v_dual_fmac_f32 v112, v117, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v119, 0xbfb8aa3b, v62
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v94, v102, v94
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v117, -v116, v118, v114
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v96, v96, v101
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v102, -v121, v112, v111
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v111, 0xbfb8aa3b, v61
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v119
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v118, v117, v113
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v101.h, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v102, v102, v123, v112
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v111
	v_cndmask_b32_e64 v117, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v112, -v116, v118, v114
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v102, v102, v107, v110
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v111, 0, 0x42800000, s1
	v_fmac_f32_e32 v117, 0xbfb8aa3b, v62
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v112, v112, v113, v118
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v100, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v94, v94, v102 :: v_dual_fmac_f32 v111, 0xbfb8aa3b, v61
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v103, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v97, v112, v108, v97
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v108, v8, v109
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v94.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v102, v111
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v94, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v93, v93, v97 :: v_dual_mul_f32 v108, v108, v54
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v116, v10, v105
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v97, v103, v100
	v_cndmask_b32_e64 v100, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v111, 0xbfb8aa3b, v108
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v103, 1, v7
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v91, v116, v91
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v97, 1.0, v97
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v100, v102, v100
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v102, v8, v115
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v111
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v103, v94, v103, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v107, null, v97, v97, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v55, v102, v55 :: v_dual_add_f32 v100, 1.0, v100
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v111, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v102, v107
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v115, 0, 0xffffffc0, s1
	v_mul_f32_e32 v54, 0xbfb8aa3b, v55
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v109, null, v100, v100, v61
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v111, 0xbfb8aa3b, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v113, s2, v61, v100, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v110, v109
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v107, v102, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v54.h, 0x7fff, v103.h, s0
	v_mov_b16_e32 v101.l, v93.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v112, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v93, v93
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v102, v94, v102 :: v_dual_and_b32 v101, 1, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v112, 0xbfb8aa3b, v55
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v94, -v109, v110, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v101, v93, v101, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v103, v112
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v112, s0, v62, v97, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v110, v94, v110
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v94, v111
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v114, v112, v102
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v93.h, v7.h
	v_cndmask_b16 v54.l, 0x7fff, v101.h, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v103, v103, v111
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v111, v113, v110
	v_fma_f32 v117, -v107, v114, v112
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v94, v94, v115
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v103, 1.0, v103
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v115, v10, v106
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v118, -v109, v111, v113
	v_fmac_f32_e32 v114, v117, v102
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v94, 1.0, v94
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v117, null, v103, v103, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v111, v118, v110 :: v_dual_mul_f32 v92, v115, v92
	v_fma_f32 v107, -v107, v114, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v115, v117
	v_div_scale_f32 v118, null, v94, v94, v108
	v_fma_f32 v109, -v109, v111, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v102, v107, v102, v114
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v112, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v107, v109, v110, v111
	v_div_fixup_f32 v62, v102, v97, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v109, -v117, v115, 1.0
	v_div_fixup_f32 v61, v107, v100, v61
	v_div_scale_f32 v100, vcc_lo, v55, v103, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v115, v109, v115
	v_fma_f32 v97, -v118, v112, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v61, v91, v61 :: v_dual_mul_f32 v62, v92, v62
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v91, v100, v115 :: v_dual_fmac_f32 v112, v97, v112
	v_div_scale_f32 v97, s0, v108, v94, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v62.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v102, -v117, v91, v100
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v93.l, v61.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v92, v97, v112 :: v_dual_and_b32 v109, 1, v7
	v_dual_fmac_f32 v91, v102, v115 :: v_dual_mul_f32 v102, v8, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v107, -v118, v92, v97
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v105, v8, v106
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v93, 1, v93
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v100, -v117, v91, v100
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v101, v62, v109, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v92, v107, v112
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v90, v105, v90 :: v_dual_mul_f32 v89, v102, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v91, v100, v115, v91
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v97, -v118, v92, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v55, v91, v103, v55
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v91, v15, v64
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v92, v97, v112, v92
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	v_add3_u32 v62, v61, v93, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v55, v90, v55 :: v_dual_mul_f32 v90, v91, v49
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v92, v92, v94, v108
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v49.h, 0x7fff, v101.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v93, v15, v63
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v61, 0xbfb8aa3b, v90
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v89, v89, v92
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v55.h
	v_mov_b16_e32 v91.h, v7.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v93, v93, v48
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v91.l, v89.h
	v_cndmask_b16 v49.l, 0x7fff, v62.h, vcc_lo
	v_and_b32_e32 v92, 1, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v62, 0xbfb8aa3b, v93
	v_cndmask_b32_e64 v61, 0, 0x42800000, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v91, 1, v91
	v_cmp_o_f32_e64 s1, v55, v55
	v_add3_u32 v92, v55, v92, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v90
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v55, v89, v91, 0x7fff
	v_mov_b16_e32 v7.l, v96.h
	v_mov_b16_e32 v91.l, v95.h
	v_mov_b16_e32 v91.h, v7.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v61, v61
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v48.h, 0x7fff, v92.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v89, v89
	v_and_b32_e32 v89, 1, v91
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v62, 0xbfb8aa3b, v93 :: v_dual_and_b32 v91, 1, v7
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v48.l, 0x7fff, v55.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v61, v61, v92
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v55, v96, v91, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v62, v62
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v91, v12, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v89, v95, v89, 0x7fff
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v95, v12, v63
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v59, v91, v59
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v96, v96
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v92, null, v61, v61, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v62, v62, v94
	v_mul_f32_e32 v94, 0xbfb8aa3b, v59
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v55.l, 0x7fff, v89.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v91, v92
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v58, v95, v58
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v94
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v97, s1, v90, v61, v90
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v95, 0xbfb8aa3b, v58
	v_cndmask_b32_e64 v89, 0, 0x42800000, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v96, null, v62, v62, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v92, v91, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v89, 0xbfb8aa3b, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v95, v96
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v100, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v91, v94, v91
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v94, 0, 0x42800000, s0
	v_exp_f32_e32 v89, v89
	v_cndmask_b32_e64 v105, 0, 0xffffffc0, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_mul_f32 v101, v97, v91 :: v_dual_fmac_f32 v94, 0xbfb8aa3b, v58
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v102, -v96, v95, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v103, -v92, v101, v97
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v94, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v89, v89, v100
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v95, v102, v95
	v_div_scale_f32 v102, s0, v93, v62, v93
	v_fmac_f32_e32 v101, v103, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v89, 1.0, v89 :: v_dual_mul_f32 v100, v15, v52
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v106, v102, v95 :: v_dual_mul_f32 v103, v15, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v94, v94, v105
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v105, null, v89, v89, v59
	v_fma_f32 v92, -v92, v101, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v108, -v96, v106, v102
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v94, 1.0, v94
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v107, v105
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v87, v100, v87
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v91, v92, v91, v101
	v_fmac_f32_e32 v106, v108, v95
	v_div_scale_f32 v97, null, v94, v94, v58
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v61, v91, v61, v90
	v_fma_f32 v90, -v96, v106, v102
	v_rcp_f32_e32 v92, v97
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v101, -v105, v107, 1.0
	v_div_scale_f32 v91, s1, v59, v89, v59
	v_div_fmas_f32 v90, v90, v95, v106
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v102, v10, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v107, v101, v107
	s_mov_b32 vcc_lo, s1
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v63, v8, v63
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v62, v90, v62, v93
	v_fma_f32 v96, -v97, v92, 1.0
	v_dual_mul_f32 v95, v91, v107 :: v_dual_mul_f32 v90, v10, v64
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v50, v102, v50 :: v_dual_mul_f32 v93, v12, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v92, v96, v92
	v_div_scale_f32 v96, s0, v58, v94, v58
	v_fma_f32 v100, -v105, v95, v91
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v45, v90, v45
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v90, v12, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v101, v96, v92
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v85, v93, v85
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v95, v100, v107 :: v_dual_mul_f32 v102, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v86, v90, v86
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v100, -v97, v101, v96
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v62, v87, v62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v90, -v105, v95, v91
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v91, 0xbfb8aa3b, v50
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v102
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v101, v100, v92
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v63, v63, v32
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v90, v90, v107, v95
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v91
	v_cndmask_b32_e64 v100, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v95, -v97, v101, v96
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v59, v90, v89, v59
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v91, 0, 0x42800000, s1
	v_fmac_f32_e32 v100, 0xbfb8aa3b, v45
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v92, v95, v92, v101
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, s2
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v59, v86, v59
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v50
	v_exp_f32_e32 v93, v100
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v58, v92, v94, v58
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v97, v10, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v59.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v86, v91
	v_mul_f32_e32 v92, 0xbfb8aa3b, v63
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v58, v85, v58
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v83, v97, v83 :: v_dual_mul_f32 v64, v8, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v89, 1, v7
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v85, v93, v87
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v92
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v42, v64, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v89, v59, v89, 0x7fff
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v85, 1.0, v85
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v86, v86, v87
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v59, v59
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v32, 0xbfb8aa3b, v42
	v_cndmask_b32_e64 v92, 0, 0x42800000, s1
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v87, null, v85, v85, v45
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v86, 1.0, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.h, 0x7fff, v89.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v64, v87
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v63
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v90, null, v86, v86, v50
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v93, 0, 0x42800000, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v94, s2, v50, v86, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v90
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v96, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v59, -v87, v64, 1.0
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v88, v103, v88
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v58, v58
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v89, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v64, v59, v64
	v_div_scale_f32 v93, s0, v45, v85, v45
	v_fma_f32 v59, -v90, v91, 1.0
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v61, v88, v61
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v88.l, v58.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v95, v93, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v88.h, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v91, v59, v91
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v59, v92
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v100, -v87, v95, v93
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v88, 1, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v89, v89, v92
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v92, v94, v91 :: v_dual_fmac_f32 v95, v100, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v88, v58, v88, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v59, v59, v96
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v89, 1.0, v89
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v96, v10, v53
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v101, -v90, v92, v94
	v_fma_f32 v87, -v87, v95, v93
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v100, null, v89, v89, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v92, v101, v91
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v84, v96, v84
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v101, null, v59, v59, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v96, v100
	v_fma_f32 v90, -v90, v92, v94
	v_div_fmas_f32 v64, v87, v64, v95
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v93, v101
	s_mov_b32 vcc_lo, s2
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v53, v8, v53
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v87, v90, v91, v92
	v_div_fixup_f32 v45, v64, v85, v45
	v_div_scale_f32 v85, vcc_lo, v42, v89, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v100, v96, 1.0
	v_div_fixup_f32 v50, v87, v86, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v45, v84, v45
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v64, -v101, v93, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v84.h, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v96, v90, v96
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v50, v83, v50
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v45.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v93, v64, v93
	v_div_scale_f32 v64, s0, v63, v59, v63
	v_mul_f32_e32 v83, v85, v96
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v84.l, v50.h
	v_and_b32_e32 v90, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v58, v64, v93 :: v_dual_mul_f32 v53, v53, v82
	v_fma_f32 v86, -v100, v83, v85
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v52, v8, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v84, 1, v84
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v87, -v101, v58, v64
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.l, 0x7fff, v88.h, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v83, v86, v96
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v86, v45, v90, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v52, v52, v81
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v58, v87, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v85, -v100, v83, v85
	v_fma_f32 v64, -v101, v58, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v83, v85, v96, v83
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v58, v64, v93, v58
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v64, v15, v47
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v42, v83, v89, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_add3_u32 v45, v50, v84, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v58, v58, v59, v63
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v63, v15, v46
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v42, v53, v42 :: v_dual_mul_f32 v53, v64, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v28.h, 0x7fff, v86.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v52, v52, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_mov_b16_e32 v7.l, v42.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v50, 0xbfb8aa3b, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v58.h, v7.h
	v_mov_b16_e32 v58.l, v52.h
	v_cmp_o_f32_e64 s1, v42, v42
	v_and_b32_e32 v59, 1, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v28.l, 0x7fff, v45.h, vcc_lo
	v_and_b32_e32 v58, 1, v58
	v_mov_b16_e32 v7.l, v61.h
	v_add3_u32 v59, v42, v59, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v50, 0, 0x42800000, s0
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v42, v63, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v45, v52, v58, 0x7fff
	v_mov_b16_e32 v59.l, v62.h
	v_cndmask_b16 v27.h, 0x7fff, v59.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v53
	v_mul_f32_e32 v58, 0xbfb8aa3b, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v59.h, v7.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v52, v52
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v50, v50
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v52, 1, v59
	v_and_b32_e32 v59, 1, v7
	v_cndmask_b16 v27.l, 0x7fff, v45.h, s0
	v_cmp_o_f32_e64 s0, v61, v61
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v45, v62, v52, 0x7fff
	v_add3_u32 v52, v61, v59, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v59, v12, v47
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v50, v50, v63
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v42
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v64, v12, v46 :: v_dual_mul_f32 v59, v59, v41
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v50, 1.0, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v58, v58
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v40, v64, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.h, 0x7fff, v52.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v63, null, v50, v50, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v41.l, 0x7fff, v45.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v81, s1, v53, v50, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v62, v63
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v58, v58, v61
	v_mul_f32_e32 v61, 0xbfb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v45, 1.0, v58
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	v_mul_f32_e32 v61, 0xbfb8aa3b, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v58, -v63, v62, 1.0
	v_div_scale_f32 v64, null, v45, v45, v42
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v61
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v62, v58, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v61, v64
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v59
	v_cndmask_b32_e64 v58, 0, 0x42800000, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v83, v81, v62
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v86, 0, 0xffffffc0, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v52, v52
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v40
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v85, -v63, v83, v81
	v_fma_f32 v84, -v64, v61, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v58, v58
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v83, v85, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v61, v84, v61
	v_div_scale_f32 v84, s0, v42, v45, v42
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v52, v52, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v63, -v63, v83, v81
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v82, v15, v30 :: v_dual_mul_f32 v87, v84, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v85, v15, v31 :: v_dual_add_f32 v52, 1.0, v52
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v58, v58, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v62, v63, v62, v83
	v_fma_f32 v89, -v64, v87, v84
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v86, null, v52, v52, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v58, 1.0, v58 :: v_dual_fmac_f32 v87, v89, v61
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v50, v62, v50, v53
	v_rcp_f32_e32 v88, v86
	v_div_scale_f32 v62, s1, v59, v52, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_scale_f32 v81, null, v58, v58, v40
	v_fma_f32 v53, -v64, v87, v84
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v84, v10, v46
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v79, v82, v79
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v63, v81
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v46, v8, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v83, -v86, v88, 1.0
	v_div_fmas_f32 v53, v53, v61, v87
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v38, v84, v38
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v46, v46, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v88, v83, v88
	v_div_fixup_f32 v42, v53, v45, v42
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v45, v10, v47
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v64, -v81, v63, 1.0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v53, v12, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v61, v62, v88
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v47, v8, v47
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v39, v45, v39
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v63, v64, v63
	v_div_scale_f32 v64, s0, v40, v58, v40
	v_fma_f32 v82, -v86, v61, v62
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v45, v12, v31
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v84, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v83, v64, v63
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v53, v53, v77
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v61, v82, v88
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v45, v45, v78
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v78, 0xbfb8aa3b, v38
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v82, -v81, v83, v64
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v84
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v62, -v86, v61, v62
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v22, v47, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v78
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v83, v82, v63
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v82, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v61, v62, v88, v61
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v22
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v62, -v81, v83, v64
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v64, 0, 0x42800000, s1
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v39
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v52, v61, v52, v59
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v80, v85, v80
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v62, v62, v63, v83
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v38
	v_exp_f32_e32 v63, v82
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v45, v45, v52
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v40, v62, v58, v40
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v59, v64
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s2
	v_mul_f32_e32 v64, 0xbfb8aa3b, v46
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v45.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v40, v53, v40
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s1
	v_ldexp_f32 v52, v63, v58
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v64
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v62, 1, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v53, v59, v53
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v64, 0, 0x42800000, s0
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v22
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v62, v45, v62, 0x7fff
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v59, null, v52, v52, v39
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v45, v45
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v61, null, v53, v53, v38
	v_rcp_f32_e32 v47, v59
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v21, v21
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v50, v80, v50
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v63, v61
	v_div_scale_f32 v78, s3, v38, v53, v38
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s0
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v42, v79, v42
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v58.l, v40.h
	v_mov_b16_e32 v58.h, v7.h
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v77, -v59, v47, 1.0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v81, v10, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v45, -v61, v63, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v47, v77, v47 :: v_dual_and_b32 v58, 1, v58
	v_div_scale_f32 v77, s2, v39, v52, v39
	v_fmac_f32_e32 v63, v45, v63
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v45, v64
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v79, v77, v47
	s_mov_b32 vcc_lo, s2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v58, v40, v58, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v21, v21, v64
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v64, v78, v63
	v_fma_f32 v82, -v59, v79, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v45, v45, v80
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v83, 1.0, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v21, -v61, v64, v78
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v80, v10, v31
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v79, v82, v47
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v82, null, v83, v83, v22
	v_fmac_f32_e32 v64, v21, v63
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v76, v80, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v84, null, v45, v45, v46
	v_rcp_f32_e32 v80, v82
	v_fma_f32 v21, -v59, v79, v77
	v_fma_f32 v59, -v61, v64, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v61, v84
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v31, v8, v31
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v21, v21, v47, v79
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v47, v59, v63, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v82, v80, 1.0
	v_div_fixup_f32 v39, v21, v52, v39
	v_div_scale_f32 v52, s0, v46, v45, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v84, v61, 1.0
	v_div_fixup_f32 v38, v47, v53, v38
	v_fmac_f32_e32 v80, v59, v80
	v_div_scale_f32 v47, vcc_lo, v22, v83, v22
	v_fmac_f32_e32 v61, v21, v61
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v63, v81, v75
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.h, 0x7fff, v62.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v53, v47, v80
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v40, v40
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v59, v52, v61
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v39, v76, v39 :: v_dual_mul_f32 v38, v63, v38
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v40, -v82, v53, v47
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v62.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v63, -v84, v59, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v39.h
	v_mov_b16_e32 v62.l, v38.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v53, v40, v80
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.l, 0x7fff, v58.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v59, v63, v61 :: v_dual_and_b32 v40, 1, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v58, 1, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v47, -v82, v53, v47
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v31, v31, v74
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v52, -v84, v59, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v62, v15, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v47, v47, v80, v53
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v52, v52, v61, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_add3_u32 v39, v38, v58, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v22, v47, v83, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.l, v42.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v45, v52, v45, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v38, v15, v25
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v22, v31, v22
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v31, v15, v26
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v15, v15, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v40.l, 0x7fff, v39.h, vcc_lo
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v11, v38, v11 :: v_dual_mul_f32 v30, v8, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v13, v31, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v22.h
	v_mov_b16_e32 v31.h, v7.h
	v_cmp_o_f32_e64 s1, v22, v22
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v30, v30, v73
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.h, v7.h
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v47, v12, v25 :: v_dual_mul_f32 v62, v62, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v30, v30, v45 :: v_dual_and_b32 v45, 1, v7
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v46
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v50.h
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v31.l, v30.h
	v_add3_u32 v45, v22, v45, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, s0
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v36, v47, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v39, v42, v39, 0x7fff
	v_and_b32_e32 v31, 1, v31
	v_cndmask_b16 v38.h, 0x7fff, v45.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v30, v30
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v15, v15, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v22, v30, v31, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v11
	v_exp_f32_e32 v45, v46
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v50, v50
	v_cndmask_b16 v38.l, 0x7fff, v22.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v22, 1, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v30, v45, v30
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v45, v12, v26
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v22, v50, v22, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v31, 0xbfb8aa3b, v11 :: v_dual_add_f32 v30, 1.0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v37, v45, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v31, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v42, v42
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v42, 0xbfb8aa3b, v36
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v45, null, v30, v30, v13
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.l, 0x7fff, v39.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v42
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v50, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v31, v31, v46
	v_mul_f32_e32 v46, 0xbfb8aa3b, v37
	v_cndmask_b32_e64 v42, 0, 0x42800000, s1
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v36
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v52, -v45, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_scale_f32 v47, null, v31, v31, v11
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v42, v42
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v53, v47
	v_fmac_f32_e32 v50, v52, v50
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v37
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v52, vcc_lo, v13, v30, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v46, v46
	v_ldexp_f32 v42, v42, v59
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v58, -v47, v53, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v42, 1.0, v42 :: v_dual_fmac_f32 v53, v58, v53
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v58, s0, v11, v31, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v39, v46, v39
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v46, v52, v50 :: v_dual_mul_f32 v63, v58, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v61, -v45, v46, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v47, v63, v58
	v_div_scale_f32 v59, null, v39, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v61, v50
	v_div_scale_f32 v61, null, v42, v42, v36
	v_rcp_f32_e32 v64, v59
	v_fmac_f32_e32 v63, v73, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v45, v46, v52
	v_rcp_f32_e32 v52, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v45, v45, v50, v46
	v_fma_f32 v46, -v47, v63, v58
	v_div_scale_f32 v47, s1, v37, v39, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v72, -v59, v64, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v50, -v61, v52, 1.0
	v_div_fmas_f32 v46, v46, v53, v63
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v58, v10, v26
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v64, v72, v64
	v_div_fixup_f32 v13, v45, v30, v13
	v_fmac_f32_e32 v52, v50, v52
	v_div_scale_f32 v50, s0, v36, v42, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v53, v47, v64
	v_div_fixup_f32 v11, v46, v31, v11
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v46, v50, v52
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v30, v58, v35
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v31, -v59, v53, v47
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v11, v15, v11
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v35, v12, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v15, -v61, v46, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v12, v12, v17 :: v_dual_fmac_f32 v53, v31, v64
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v30
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v35, v35, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v46, v15, v52 :: v_dual_mul_f32 v15, v10, v25
	v_fma_f32 v45, -v59, v53, v47
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v25, v8, v25
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v12, v12, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v47, -v61, v46, v50
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v15, v15, v34
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v45, v45, v64, v53
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v18, v25, v18
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v31
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v34, v47, v52, v46
	v_div_fixup_f32 v37, v45, v39, v37
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v46, 0xbfb8aa3b, v15 :: v_dual_mul_f32 v13, v62, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v31, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v34, v34, v42, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v12, v12, v37 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v30
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v34, v35, v34
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v37
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v31, v31
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v12.h
	v_mov_b16_e32 v39.l, v34.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v37, 0, 0x42800000, s0
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v45, 1, v7
	v_cmp_o_f32_e64 s0, v12, v12
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.h, v7.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v35, v36
	v_ldexp_f32 v31, v31, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v45, v12, v45, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v37, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s0
	v_cmp_o_f32_e64 s0, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v39, v34, v39, 0x7fff
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v34, v10, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v25, null, v31, v31, v30
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v37, v37, v52
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v10, v10, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v34, v34, v67
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v16, v8, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v45.l, 0x7fff, v39.h, s0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v37, 1.0, v37 :: v_dual_mul_f32 v26, v8, v26
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v10, v10, v68
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v8, v8, v17
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v16, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v52, null, v37, v37, v18
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v19, v26, v19
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v8, v8, v9
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v61, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v39, 0x7632
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v36, 0xbfb8aa3b, v19
	v_ldexp_f32 v26, v35, v26
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v35, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v42, null, v26, v26, v15
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v46, -v25, v35, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v19
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v47, v42
	v_div_scale_f32 v53, s1, v15, v26, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v46, v35
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v36, v36
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v46, vcc_lo, v30, v31, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v36, v36, v50
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v50, -v42, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v12, 1.0, v36 :: v_dual_fmac_f32 v47, v50, v47
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v36, v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v50, null, v12, v12, v19
	v_fma_f32 v59, -v25, v36, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v62, v53, v47
	v_rcp_f32_e32 v58, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v59, v35
	v_fma_f32 v59, -v42, v62, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v25, v36, v46
	v_fma_f32 v46, -v52, v61, 1.0
	v_fmac_f32_e32 v62, v59, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v50, v58, 1.0
	v_div_scale_f32 v59, s2, v19, v12, v19
	v_fmac_f32_e32 v61, v46, v61
	v_div_scale_f32 v46, s3, v18, v37, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v58, v63, v58
	v_div_fmas_f32 v25, v25, v35, v36
	v_fma_f32 v35, -v42, v62, v53
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v46, v61
	v_mul_f32_e32 v36, v59, v58
	v_div_fixup_f32 v25, v25, v31, v30
	v_div_fmas_f32 v35, v35, v47, v62
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v53, -v52, v42, v46
	v_fma_f32 v47, -v50, v36, v59
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v10, v10, v25
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v15, v35, v26, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v30.h, v7.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v42, v53, v61
	v_fmac_f32_e32 v36, v47, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v10.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v15, v34, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v13, v13
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v26, -v52, v42, v46
	v_fma_f32 v25, -v50, v36, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v11, v11
	v_mov_b16_e32 v30.l, v15.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v25, v25, v58, v36
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v26, v26, v61, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v25, v12, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v17, v26, v37, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v18, 1, v7
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v8, v8, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.h, v7.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v37, 0x5410 :: v_dual_mul_f32 v12, v16, v17
	v_and_b32_e32 v16, 1, v30
	v_add3_u32 v17, v10, v18, 0x7fff
	v_mov_b16_e32 v7.l, v8.h
	v_mov_b16_e32 v9.l, v12.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v10, v15, v16, 0x7fff
	v_cndmask_b16 v16.h, 0x7fff, v17.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_mov_b16_e32 v15.l, v11.h
	v_mov_b16_e32 v15.h, v7.h
	v_and_b32_e32 v17, 1, v7
	v_mov_b16_e32 v7.l, v13.h
	v_cndmask_b16 v16.l, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_and_b32_e32 v10, 1, v15
	v_add3_u32 v15, v8, v17, 0x7fff
	v_and_b32_e32 v7, 1, v7
	v_and_b32_e32 v9, 1, v9
	v_cmp_o_f32_e64 s0, v12, v12
	v_add3_u32 v8, v11, v10, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v15.h, vcc_lo
	v_add3_u32 v7, v13, v7, 0x7fff
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v8.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v0.h, 0x7fff, v7.h, s1
	v_cndmask_b32_e32 v7, v14, v51, vcc_lo
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s0
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v9, v29, v104, vcc_lo
	v_dual_cndmask_b32 v12, v21, v54 :: v_dual_cndmask_b32 v13, v54, v21
	v_cndmask_b32_e32 v21, v40, v49, vcc_lo
	v_cndmask_b32_e32 v25, v49, v40, vcc_lo
	v_permlanex16_b32 v40, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, 0x1054, v37, vcc_lo
	v_cndmask_b32_e32 v37, 0x3276, v39, vcc_lo
	v_permlanex16_b32 v39, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v15, v32, v45, vcc_lo
	v_cndmask_b32_e32 v17, v56, v20, vcc_lo
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v9, v37, 8, v37
	v_cndmask_b32_e32 v18, v20, v56, vcc_lo
	v_cndmask_b32_e32 v20, v33, v99, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v8, v51, v14 :: v_dual_and_b32 v7, 0x540054, v7
	v_dual_cndmask_b32 v14, v45, v32 :: v_dual_and_b32 v9, 0x760076, v9
	v_cndmask_b32_e32 v26, v16, v28, vcc_lo
	v_cndmask_b32_e32 v16, v28, v16, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v9, v9, 4, v9
	v_dual_cndmask_b32 v31, v38, v48 :: v_dual_cndmask_b32 v32, v48, v38
	v_cndmask_b32_e32 v38, v0, v41, vcc_lo
	v_dual_cndmask_b32 v0, v41, v0 :: v_dual_cndmask_b32 v11, v104, v29
	v_dual_cndmask_b32 v19, v99, v33 :: v_dual_cndmask_b32 v28, v57, v23
	v_cndmask_b32_e32 v23, v23, v57, vcc_lo
	v_dual_cndmask_b32 v30, v43, v65 :: v_dual_cndmask_b32 v33, v10, v27
	v_dual_cndmask_b32 v10, v27, v10 :: v_dual_cndmask_b32 v35, v98, v44
	v_dual_cndmask_b32 v27, v44, v98 :: v_dual_and_b32 v44, 0x5040504, v7
	v_and_b32_e32 v45, 0x7060706, v9
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v34, v60, v24, vcc_lo
	v_cndmask_b32_e32 v24, v24, v60, vcc_lo
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v36, v22, v55, vcc_lo
	v_cndmask_b32_e32 v22, v55, v22, vcc_lo
	v_permlanex16_b32 v25, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v29, v65, v43, vcc_lo
	v_permlanex16_b32 v41, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v40, v8, v44
	v_perm_b32 v8, v40, v8, v45
	v_perm_b32 v9, v39, v11, v44
	v_perm_b32 v10, v39, v11, v45
	v_add_lshl_u32 v39, v2, v4, 1
	v_permlanex16_b32 v32, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v13, v12, v44
	v_perm_b32 v12, v13, v12, v45
	v_perm_b32 v13, v15, v14, v44
	v_perm_b32 v14, v15, v14, v45
	v_add_lshl_u32 v4, v1, v4, 1
	v_permlanex16_b32 v43, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v18, v17, v44
	v_perm_b32 v16, v18, v17, v45
	v_perm_b32 v17, v20, v19, v44
	v_perm_b32 v18, v20, v19, v45
	v_add_lshl_u32 v40, v2, v6, 1
	v_permlanex16_b32 v47, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v19, v25, v21, v44
	v_perm_b32 v20, v25, v21, v45
	v_perm_b32 v21, v37, v26, v44
	v_perm_b32 v22, v37, v26, v45
	v_perm_b32 v37, v0, v38, v44
	v_perm_b32 v38, v0, v38, v45
	v_add_lshl_u32 v0, v1, v6, 1
	v_perm_b32 v23, v41, v28, v44
	v_perm_b32 v24, v41, v28, v45
	v_perm_b32 v25, v30, v29, v44
	v_perm_b32 v26, v30, v29, v45
	s_clause 0x2
	buffer_store_b128 v[7:10], v39, s[8:11], 0 offen
	buffer_store_b128 v[11:14], v4, s[8:11], 0 offen
	buffer_store_b128 v[15:18], v40, s[8:11], 0 offen
	v_add_lshl_u32 v4, v2, v5, 1
	v_perm_b32 v27, v32, v31, v44
	v_perm_b32 v28, v32, v31, v45
	v_perm_b32 v29, v42, v33, v44
	v_perm_b32 v30, v42, v33, v45
	v_add_lshl_u32 v5, v1, v5, 1
	v_perm_b32 v31, v43, v34, v44
	v_perm_b32 v32, v43, v34, v45
	v_perm_b32 v33, v46, v35, v44
	v_perm_b32 v34, v46, v35, v45
	v_add_lshl_u32 v2, v2, v3, 1
	v_perm_b32 v35, v47, v36, v44
	v_perm_b32 v36, v47, v36, v45
	v_add_lshl_u32 v1, v1, v3, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[8:11], 0 offen
	buffer_store_b128 v[23:26], v4, s[8:11], 0 offen
	buffer_store_b128 v[27:30], v5, s[8:11], 0 offen
	buffer_store_b128 v[31:34], v2, s[8:11], 0 offen
	buffer_store_b128 v[35:38], v1, s[8:11], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 204
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.private_seg_size, 204
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 27500
; TotalNumSgprs: 34
; NumVgprs: 256
; ScratchSize: 204
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 34
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 204
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 70
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
