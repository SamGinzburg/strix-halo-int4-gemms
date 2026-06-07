	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[14:15], s[0:1], 0x30
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v35, 3, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v75, 4, v0
	v_and_b32_e32 v58, 15, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v13, v0, 7, 1
	v_and_b32_e32 v14, 0x17f, v0
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v15, 0, v35
	s_load_b32 s25, s[0:1], 0x38
	v_and_b32_e32 v36, 8, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v13, 0x88, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v38, v13, v14
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v13, 0x1e0, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s14, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v14, 0, v38
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s5, s4
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v76, 1, v13
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
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
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
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
	s_load_b128 s[8:11], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s12, s7
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s13, s12
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s13
	v_readfirstlane_b32 s13, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[10:11]
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v1, 0xf8, v35
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s13, s13, 0x4f7ffffe
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s19, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s13
	s_sub_i32 s13, 0, s12
	s_mul_i32 s13, s13, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s13
	s_xor_b32 s13, s2, s7
	s_add_i32 s4, s10, s4
	s_ashr_i32 s23, s13, 31
	s_mul_hi_u32 s4, s5, s4
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s14, s4, s12
	s_add_i32 s13, s4, 1
	s_sub_i32 s5, s5, s14
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s18, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s14, s5, s12
	s_cmp_ge_u32 s5, s12
	s_cselect_b32 s4, s13, s4
	s_cselect_b32 s5, s14, s5
	s_add_i32 s13, s4, 1
	s_cmp_ge_u32 s5, s12
	s_cselect_b32 s4, s13, s4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s5, s25, 31
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s12, s15, 1
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s29, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s24, s4, s23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s25, s5
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s5, s12, s29
	v_mad_u64_u32 v[3:4], null, s12, v2, v[1:2]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s12, s24, s23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s28, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s12, s7
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mul_lo_u32 v4, s28, v75
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s4, s2, s4
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v5, s29, v2
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s6
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v6, s29, v58
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s20, s4, 5
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s14, s12, 8
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s4, s20, s28
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s28, v5
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v6
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v4, v4, v58, s4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s25, 1
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v3, s5, s14, v3
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s22, -1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 s2, s22, s2
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v6, s29, v4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s22, vcc_lo
	s_cmp_gt_i32 s25, 33
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v5, s15, v3
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s21, -1, 0
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s4, s29, 16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v11, 0x80000000, v6, vcc_lo
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v8, s4, v58
	v_or_b32_e32 v9, s4, v2
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_lshl_add_u32 v7, s15, 5, v3
	.loc	1 117 22 is_stmt 0              ; generate_amdgcn.py:117:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 125 31 is_stmt 1              ; generate_amdgcn.py:125:31
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v8
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v12, s4, v4
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s28, v9
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v10, s15, v7
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b64 v[3:4], v3, s[16:19], 0 offen
	buffer_load_b64 v[5:6], v5, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v11, v11, s[8:11], 0 offen
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s21, vcc_lo
	v_or_b32_e32 v37, v76, v58
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v8, 0x80000000, v12, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s21, s2
	s_cmpk_gt_i32 s25, 0x41
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v12, v8, s[8:11], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b64 v[7:8], v7, s[16:19], 0 offen
	buffer_load_b64 v[9:10], v9, s[16:19], 0 offen
	s_mov_b32 s18, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(3)
	ds_store_b8 v14, v11 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_store_2addr_stride64_b64 v15, v[3:4], v[5:6] offset1:16
	v_lshlrev_b32_e32 v3, 4, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v14, v12 offset:16896
	.loc	1 0 0                           ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v15, v[7:8], v[9:10] offset0:8 offset1:24
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v92, v76, v58
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v34, 0x70, v3
	v_and_b32_e32 v39, 8, v0
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v78, 0x100, v92
	v_or_b32_e32 v80, 0x200, v92
	v_or_b32_e32 v81, 0x300, v92
	v_or_b32_e32 v82, 0x400, v92
	v_or_b32_e32 v83, 0x500, v92
	v_or_b32_e32 v84, 0x600, v92
	v_or_b32_e32 v85, 0x700, v92
	v_or_b32_e32 v77, 0x800, v92
	v_or_b32_e32 v79, 0x900, v92
	v_or_b32_e32 v86, 0xa00, v92
	v_or_b32_e32 v87, 0xb00, v92
	v_or_b32_e32 v88, 0xc00, v92
	v_or_b32_e32 v89, 0xd00, v92
	v_or_b32_e32 v90, 0xe00, v92
	v_or_b32_e32 v91, 0xf00, v92
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr91
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s25, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v6, s20, v75
	v_sub_nc_u32_e32 v40, s28, v2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s0, s28, 15
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_lshl_b32 s1, s24, 8
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s0, s0, 4
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_mad_u64_u32 v[9:10], null, s28, v6, v[58:59]
	v_mov_b32_e32 v10, 0
	v_lshlrev_b32_e32 v4, 1, v2
	v_and_b32_e32 v34, 0x70, v3
	v_bfe_i32 v3, v0, 3, 1
	v_sub_nc_u32_e64 v5, s0, 3 clamp
	v_mov_b32_e32 v11, v10
	v_lshl_or_b32 v2, s3, 5, v4
	v_mov_b32_e32 v13, v10
	v_and_or_b32 v41, 0x88, v3, v34
	v_mov_b32_e32 v15, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v17, v10 :: v_dual_add_nc_u32 v4, 0x41, v2
	v_add_nc_u32_e32 v2, 64, v2
	s_lshl_b32 s2, s23, 8
	v_readfirstlane_b32 s0, v5
	v_sub_nc_u32_e32 v39, s28, v58
	v_mul_lo_u32 v4, s15, v4
	v_mul_lo_u32 v2, s15, v2
	v_xor_b32_e32 v42, 8, v41
	v_mov_b32_e32 v12, v10
	v_mov_b32_e32 v14, v10
	v_mov_b32_e32 v16, v10
	v_mov_b32_e32 v5, v10
	v_mov_b32_e32 v6, v10
	v_add3_u32 v3, v4, s1, v1
	v_add3_u32 v1, v2, s1, v1
	v_mov_b32_e32 v2, v10
	v_mov_b32_e32 v4, v10
	v_mov_b32_e32 v7, v10
	v_subrev_nc_u32_e32 v43, s2, v3
	v_subrev_nc_u32_e32 v44, s2, v1
	v_mov_b32_e32 v1, v10
	v_mov_b32_e32 v3, v10
	v_mov_b32_e32 v8, v10
	v_mov_b32_e32 v18, v10
	v_mov_b32_e32 v19, v10
	v_mov_b32_e32 v20, v10
	v_mov_b32_e32 v21, v10
	v_mov_b32_e32 v22, v10
	v_mov_b32_e32 v23, v10
	v_mov_b32_e32 v24, v10
	v_mov_b32_e32 v25, v10
	v_mov_b32_e32 v26, v10
	v_mov_b32_e32 v27, v10
	v_mov_b32_e32 v28, v10
	v_mov_b32_e32 v29, v10
	v_mov_b32_e32 v30, v10
	v_mov_b32_e32 v31, v10
	v_mov_b32_e32 v32, v10
	v_mov_b32_e32 v33, v10
	s_mov_b32 s27, 1
	s_lshl_b32 s26, s15, 5
	s_add_i32 s24, 0, 0x4000
	s_add_i32 s28, s0, 1
	s_add_i32 s23, 0, 0x4200
	s_add_i32 s2, 0, 0x1000
	s_add_i32 s3, 0, 0x2000
	s_add_i32 s1, 0, 0x3000
	s_add_i32 s29, s29, 32
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v45, s29, v9
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s29, v40
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e64 s0, s29, v39
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_dual_cndmask_b32 v46, 0x80000000, v44 :: v_dual_cndmask_b32 v47, 0x80000000, v43
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v45, 0x80000000, v45, s0
	s_mov_b32 s0, s24
	s_mov_b32 s24, s23
	s_mov_b32 s23, s25
	s_mov_b32 s25, s2
	buffer_load_u8 v57, v45, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b64 v[53:54], v46, s[16:19], 0 offen
	buffer_load_b64 v[55:56], v47, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v45, s0, v41
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v50, s23, v37
	s_mov_b32 s2, s3
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v49, s0, v42
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v51, s2, v37
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[45:48], v45 offset1:32
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v59, v50 offset:1280
	ds_load_u8 v60, v50 offset:1792
	ds_load_u8 v61, v50 offset:1536
	ds_load_u8 v62, v50 offset:1024
	ds_load_u8 v63, v50 offset:256
	ds_load_u8 v64, v50 offset:768
	ds_load_u8 v65, v50 offset:512
	ds_load_u8 v66, v50
	ds_load_u8 v67, v50 offset:3328
	ds_load_u8 v68, v50 offset:3840
	ds_load_u8 v69, v50 offset:3584
	ds_load_u8 v70, v50 offset:3072
	ds_load_u8 v71, v50 offset:2304
	ds_load_u8 v72, v50 offset:2816
	ds_load_u8 v73, v50 offset:2560
	ds_load_u8 v74, v50 offset:2048
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v77, v51 offset:1280
	ds_load_u8 v78, v51 offset:1792
	ds_load_u8 v79, v51 offset:1536
	ds_load_u8 v80, v51 offset:1024
	ds_load_u8 v81, v51 offset:256
	ds_load_u8 v82, v51 offset:768
	ds_load_u8 v83, v51 offset:512
	ds_load_u8 v84, v51
	ds_load_u8 v85, v51 offset:3328
	ds_load_u8 v86, v51 offset:3840
	ds_load_u8 v87, v51 offset:3584
	ds_load_u8 v88, v51 offset:3072
	ds_load_u8 v89, v51 offset:2304
	ds_load_u8 v90, v51 offset:2816
	ds_load_u8 v91, v51 offset:2560
	ds_load_u8 v92, v51 offset:2048
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[49:52], v49 offset1:32
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v59, v62, v59, 0xc0c0004
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v61, v66, v63, 0xc0c0004
	v_perm_b32 v62, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v63, v70, v67, 0xc0c0004
	v_perm_b32 v64, v69, v68, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v67, v80, v77, 0xc0c0004
	v_perm_b32 v68, v79, v78, 0xc0c0004
	s_mov_b32 s3, s1
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v70, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v69, v84, v81, 0xc0c0004
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s1, s27, 1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v65, v74, v71, 0xc0c0004
	v_perm_b32 v66, v73, v72, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v71, v88, v85, 0xc0c0004
	v_perm_b32 v72, v87, v86, 0xc0c0004
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v60, v60, 16, v59
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v73, v92, v89, 0xc0c0004
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v59, v62, 16, v61
	v_lshl_or_b32 v62, v64, 16, v63
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v64, v68, 16, v67
	v_lshl_or_b32 v63, v70, 16, v69
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s1, 2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v61, v66, 16, v65
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s27, s1, 0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v72, 16, v71
	v_lshl_or_b32 v65, v74, 16, v73
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[18:25], v[59:60], v[45:46], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[59:60], v[47:48], v[26:33] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[63:64], v[45:46], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[47:48], v[1:8] neg_lo:[1,1,0]
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_lshl_b32 s0, s27, 9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_lshl_b32 s1, s27, 12
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s0, s0, 0
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_add_i32 s2, s1, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v44, s26, v44
	v_add_nc_u32_e32 v43, s26, v43
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v93, s0, v38
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[61:62], v[49:50], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[61:62], v[51:52], v[26:33] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[65:66], v[49:50], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[51:52], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s28, s28, -1
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v45, s2, v35
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s29, s29, 16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s23, s0, 0x4000
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_add_i32 s1, s2, 0x2000
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s28, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v93, v57 offset:16384
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v45, v[53:54], v[55:56] offset1:16
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_or_b32_e32 v78, 0x100, v37
	v_or_b32_e32 v80, 0x200, v37
	v_or_b32_e32 v81, 0x300, v37
	v_or_b32_e32 v82, 0x400, v37
	v_or_b32_e32 v83, 0x500, v37
	v_or_b32_e32 v84, 0x600, v37
	v_or_b32_e32 v85, 0x700, v37
	v_or_b32_e32 v77, 0x800, v37
	v_or_b32_e32 v79, 0x900, v37
	v_or_b32_e32 v86, 0xa00, v37
	v_or_b32_e32 v87, 0xb00, v37
	v_or_b32_e32 v88, 0xc00, v37
	v_or_b32_e32 v89, 0xd00, v37
	v_or_b32_e32 v90, 0xe00, v37
	v_or_b32_e32 v91, 0xf00, v37
	v_dual_mov_b32 v39, v36 :: v_dual_mov_b32 v92, v37
	s_mov_b32 s18, s25
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	s_branch .LBB0_8
.LBB0_7:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_mov_b32_e32 v8, 0
	s_add_i32 s24, 0, 0x4000
	s_add_i32 s23, 0, 0x4200
	s_add_i32 s2, 0, 0x1000
	s_add_i32 s3, 0, 0x2000
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v2, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v16, v8 :: v_dual_mov_b32 v25, v9
	v_dual_mov_b32 v19, v9 :: v_dual_mov_b32 v12, v8
	v_dual_mov_b32 v27, v9 :: v_dual_mov_b32 v14, v8
	v_dual_mov_b32 v31, v9 :: v_dual_mov_b32 v10, v8
	v_dual_mov_b32 v29, v9 :: v_dual_mov_b32 v18, v8
	v_mov_b32_e32 v33, v9
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v32, v8
	s_add_i32 s1, 0, 0x3000
.LBB0_8:                                ; %Flow186
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v39
	v_mov_b32_e32 v45, v29
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v47, v31
	v_cndmask_b32_e64 v35, 0x88, 0, vcc_lo
	v_mov_b32_e32 v43, v27
	v_mov_b32_e32 v41, v25
	v_mov_b32_e32 v37, v21
	v_mov_b32_e32 v39, v23
	v_or_b32_e32 v59, v35, v34
	v_dual_mov_b32 v46, v30 :: v_dual_and_b32 v9, 0x1f0, v0
	v_mov_b32_e32 v42, v26
	v_mov_b32_e32 v40, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v60, 8, v59
	v_dual_mov_b32 v49, v33 :: v_dual_add_nc_u32 v34, s24, v59
	v_mov_b32_e32 v48, v32
	v_dual_mov_b32 v36, v20 :: v_dual_add_nc_u32 v35, s24, v60
	v_mov_b32_e32 v44, v28
	v_mov_b32_e32 v38, v22
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s22
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[54:57], v34 offset1:32
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_b64 v[50:53], v35 offset1:32
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v34, 0, 1, s22
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v34
	v_dual_mov_b32 v35, v19 :: v_dual_mov_b32 v34, v18
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v41, s18, v83
	v_add_nc_u32_e32 v42, s18, v82
	v_add_nc_u32_e32 v39, s18, v85
	v_add_nc_u32_e32 v45, s18, v78
	v_add_nc_u32_e32 v40, s18, v84
	v_add_nc_u32_e32 v43, s18, v81
	v_add_nc_u32_e32 v44, s18, v80
	v_add_nc_u32_e32 v46, s18, v92
	v_add_nc_u32_e32 v36, s18, v89
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v39, v39
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	ds_load_u8 v43, v43
	ds_load_u8 v44, v44
	ds_load_u8 v40, v40
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v37, s18, v88
	v_add_nc_u32_e32 v34, s18, v91
	v_add_nc_u32_e32 v48, s18, v77
	v_add_nc_u32_e32 v38, s18, v87
	v_add_nc_u32_e32 v47, s18, v86
	v_add_nc_u32_e32 v49, s18, v79
	v_add_nc_u32_e32 v35, s18, v90
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v63, v36
	ds_load_u8 v64, v37
	ds_load_u8 v65, v34
	ds_load_u8 v48, v48
	ds_load_u8 v66, v38
	ds_load_u8 v47, v47
	ds_load_u8 v67, v35
	ds_load_u8 v49, v49
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v34, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v36, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v37, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v35, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	v_lshl_or_b32 v61, v37, 16, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v62, v35, 16, v34
	v_mov_b32_e32 v41, v25
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v64, v67, v65, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v48, v49, 0xc0c0004
	v_perm_b32 v66, v47, v66, 0xc0c0004
	v_dual_mov_b32 v49, v33 :: v_dual_mov_b32 v40, v24
	v_dual_mov_b32 v39, v23 :: v_dual_mov_b32 v38, v22
	v_dual_mov_b32 v37, v21 :: v_dual_mov_b32 v36, v20
	v_dual_mov_b32 v35, v19 :: v_dual_mov_b32 v34, v18
	v_dual_mov_b32 v48, v32 :: v_dual_mov_b32 v47, v31
	v_dual_mov_b32 v46, v30 :: v_dual_mov_b32 v45, v29
	v_dual_mov_b32 v44, v28 :: v_dual_mov_b32 v43, v27
	v_mov_b32_e32 v42, v26
	v_wmma_i32_16x16x16_iu4 v[34:41], v[61:62], v[54:55], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v64, v64, 16, v63
	v_lshl_or_b32 v63, v66, 16, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[61:62], v[56:57], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[63:64], v[50:51], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[63:64], v[52:53], v[42:49] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v26, s3, v83
	v_add_nc_u32_e32 v27, s3, v82
	v_add_nc_u32_e32 v24, s3, v85
	v_add_nc_u32_e32 v30, s3, v78
	v_add_nc_u32_e32 v25, s3, v84
	v_add_nc_u32_e32 v28, s3, v81
	v_add_nc_u32_e32 v29, s3, v80
	v_add_nc_u32_e32 v31, s3, v92
	v_add_nc_u32_e32 v20, s3, v89
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v26, v26
	ds_load_u8 v27, v27
	ds_load_u8 v24, v24
	ds_load_u8 v30, v30
	ds_load_u8 v31, v31
	ds_load_u8 v28, v28
	ds_load_u8 v29, v29
	ds_load_u8 v25, v25
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v21, s3, v88
	v_add_nc_u32_e32 v18, s3, v91
	v_add_nc_u32_e32 v32, s3, v77
	v_add_nc_u32_e32 v22, s3, v87
	v_add_nc_u32_e32 v23, s3, v86
	v_add_nc_u32_e32 v33, s3, v79
	v_add_nc_u32_e32 v19, s3, v90
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v20, v20
	ds_load_u8 v21, v21
	ds_load_u8 v61, v18
	ds_load_u8 v32, v32
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	ds_load_u8 v62, v19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v27, v26, 0xc0c0004
	v_dual_mov_b32 v26, v42 :: v_dual_mov_b32 v27, v43
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v19, v25, v24, 0xc0c0004
	v_perm_b32 v24, v31, v30, 0xc0c0004
	v_perm_b32 v25, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	v_mov_b32_e32 v28, v44
	v_lshl_or_b32 v19, v19, 16, v18
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	v_lshl_or_b32 v18, v25, 16, v24
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v21, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v32, v33, 0xc0c0004
	v_mov_b32_e32 v32, v48
	v_mov_b32_e32 v30, v46
	v_wmma_i32_16x16x16_iu4 v[10:17], v[18:19], v[54:55], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v21, v21, 16, v20
	v_lshl_or_b32 v20, v22, 16, v24
	v_wmma_i32_16x16x16_iu4 v[1:8], v[18:19], v[56:57], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v24, v40
	v_mov_b32_e32 v22, v38
	v_mov_b32_e32 v18, v34
	v_wmma_i32_16x16x16_iu4 v[10:17], v[20:21], v[50:51], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[20:21], v[52:53], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v20, v36 :: v_dual_mov_b32 v33, v49
	v_mov_b32_e32 v29, v45
	v_mov_b32_e32 v31, v47
	v_mov_b32_e32 v25, v41
	v_mov_b32_e32 v21, v37
	v_mov_b32_e32 v23, v39
	v_mov_b32_e32 v19, v35
.LBB0_12:                               ; %._crit_edge87
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v50, s23, v59
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v59, 0, 1, s21
	v_dual_mov_b32 v62, v29 :: v_dual_add_nc_u32 v51, s23, v60
	v_dual_mov_b32 v61, v28 :: v_dual_mov_b32 v64, v31
	v_mov_b32_e32 v63, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v59
	v_dual_mov_b32 v60, v33 :: v_dual_mov_b32 v59, v32
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[54:57], v50 offset1:32
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_b64 v[50:53], v51 offset1:32
	v_dual_mov_b32 v66, v27 :: v_dual_mov_b32 v65, v26
	v_dual_mov_b32 v68, v25 :: v_dual_mov_b32 v67, v24
	v_dual_mov_b32 v70, v21 :: v_dual_mov_b32 v69, v20
	v_dual_mov_b32 v72, v23 :: v_dual_mov_b32 v71, v22
	v_dual_mov_b32 v74, v19 :: v_dual_mov_b32 v73, v18
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s21
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v67, s2, v83
	v_add_nc_u32_e32 v68, s2, v82
	v_add_nc_u32_e32 v65, s2, v85
	v_add_nc_u32_e32 v71, s2, v78
	v_add_nc_u32_e32 v66, s2, v84
	v_add_nc_u32_e32 v69, s2, v81
	v_add_nc_u32_e32 v70, s2, v80
	v_add_nc_u32_e32 v72, s2, v92
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	ds_load_u8 v65, v65
	ds_load_u8 v71, v71
	ds_load_u8 v72, v72
	ds_load_u8 v69, v69
	ds_load_u8 v70, v70
	ds_load_u8 v66, v66
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v61, s2, v89
	v_add_nc_u32_e32 v62, s2, v88
	v_add_nc_u32_e32 v59, s2, v91
	v_add_nc_u32_e32 v73, s2, v77
	v_add_nc_u32_e32 v63, s2, v87
	v_add_nc_u32_e32 v64, s2, v86
	v_add_nc_u32_e32 v74, s2, v79
	v_add_nc_u32_e32 v60, s2, v90
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v61, v61
	ds_load_u8 v62, v62
	ds_load_u8 v59, v59
	ds_load_u8 v73, v73
	ds_load_u8 v63, v63
	ds_load_u8 v64, v64
	ds_load_u8 v93, v60
	ds_load_u8 v74, v74
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v60, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_perm_b32 v66, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v60, v65, 16, v60
	v_perm_b32 v65, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v62, v93, v59, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v73, v74, 0xc0c0004
	v_lshl_or_b32 v59, v66, 16, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v62, v62, 16, v61
	v_lshl_or_b32 v61, v63, 16, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[59:60], v[56:57], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[59:60], v[54:55], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[61:62], v[52:53], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[61:62], v[50:51], v[34:41] neg_lo:[1,1,0]
	v_mov_b32_e32 v60, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v62, v45
	v_mov_b32_e32 v64, v47
	v_mov_b32_e32 v66, v43
	v_mov_b32_e32 v68, v41
	v_mov_b32_e32 v70, v37
	v_mov_b32_e32 v72, v39
	v_dual_mov_b32 v74, v35 :: v_dual_mov_b32 v59, v48
	v_mov_b32_e32 v61, v44
	v_mov_b32_e32 v63, v46
	v_mov_b32_e32 v65, v42
	v_mov_b32_e32 v67, v40
	v_mov_b32_e32 v69, v36
	v_mov_b32_e32 v71, v38
	v_mov_b32_e32 v73, v34
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v26, s1, v83
	v_add_nc_u32_e32 v27, s1, v82
	v_add_nc_u32_e32 v24, s1, v85
	v_add_nc_u32_e32 v30, s1, v78
	v_add_nc_u32_e32 v25, s1, v84
	v_add_nc_u32_e32 v28, s1, v81
	v_add_nc_u32_e32 v29, s1, v80
	v_add_nc_u32_e32 v31, s1, v92
	v_add_nc_u32_e32 v20, s1, v89
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v26, v26
	ds_load_u8 v27, v27
	ds_load_u8 v24, v24
	ds_load_u8 v30, v30
	ds_load_u8 v31, v31
	ds_load_u8 v28, v28
	ds_load_u8 v29, v29
	ds_load_u8 v25, v25
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v21, s1, v88
	v_add_nc_u32_e32 v18, s1, v91
	v_add_nc_u32_e32 v32, s1, v77
	v_add_nc_u32_e32 v22, s1, v87
	v_add_nc_u32_e32 v23, s1, v86
	v_add_nc_u32_e32 v33, s1, v79
	v_add_nc_u32_e32 v19, s1, v90
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v20, v20
	ds_load_u8 v21, v21
	ds_load_u8 v34, v18
	ds_load_u8 v32, v32
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	ds_load_u8 v35, v19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v19, v25, v24, 0xc0c0004
	v_perm_b32 v24, v31, v30, 0xc0c0004
	v_perm_b32 v25, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	v_lshl_or_b32 v19, v19, 16, v18
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	v_lshl_or_b32 v18, v25, 16, v24
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v21, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v32, v33, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[10:17], v[18:19], v[54:55], v[10:17] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v21, v21, 16, v20
	v_lshl_or_b32 v20, v22, 16, v24
	v_wmma_i32_16x16x16_iu4 v[1:8], v[18:19], v[56:57], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[20:21], v[50:51], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[20:21], v[52:53], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v60, v33 :: v_dual_mov_b32 v59, v32
	v_dual_mov_b32 v62, v29 :: v_dual_mov_b32 v61, v28
	v_dual_mov_b32 v64, v31 :: v_dual_mov_b32 v63, v30
	v_dual_mov_b32 v66, v27 :: v_dual_mov_b32 v65, v26
	v_dual_mov_b32 v68, v25 :: v_dual_mov_b32 v67, v24
	v_dual_mov_b32 v70, v21 :: v_dual_mov_b32 v69, v20
	v_dual_mov_b32 v72, v23 :: v_dual_mov_b32 v71, v22
	v_dual_mov_b32 v74, v19 :: v_dual_mov_b32 v73, v18
.LBB0_17:
	.loc	1 128 22 is_stmt 1              ; generate_amdgcn.py:128:22
	v_or_b32_e32 v18, s20, v58
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_or_b32 v22, v75, 1, v76
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	s_add_i32 s0, s14, s15
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s17, s5, 0xffff
	s_mov_b32 s19, 0x31027000
	.loc	1 128 22 is_stmt 0              ; generate_amdgcn.py:128:22
	v_lshlrev_b32_e32 v18, 1, v18
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_or_b32_e32 v24, 2, v22
	v_or_b32_e32 v23, 4, v22
	v_or_b32_e32 v21, 6, v22
	v_or_b32_e32 v20, 8, v22
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_or_b32_e32 v25, 32, v18
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s4
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v19, 10, v22
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v32, s0, v22, 1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x1
	buffer_load_u16 v27, v18, s[16:19], 0 offen
	buffer_load_u16 v25, v25, s[16:19], 0 offen
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v18, s14, v24
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v24, s0, v24, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v28, s14, v23
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v23, s0, v23, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v29, s14, v21
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	s_and_b32 s17, s7, 0xffff
	s_mov_b32 s16, s6
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v21, s0, v21, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v30, s14, v20
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v20, s0, v20, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v31, s14, v19
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v19, s0, v19, 1
	s_clause 0x5
	buffer_load_u16 v32, v32, s[16:19], 0 offen
	buffer_load_u16 v24, v24, s[16:19], 0 offen
	buffer_load_u16 v23, v23, s[16:19], 0 offen
	buffer_load_u16 v33, v21, s[16:19], 0 offen
	buffer_load_u16 v34, v20, s[16:19], 0 offen
	buffer_load_u16 v35, v19, s[16:19], 0 offen
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v49, v11
	v_cvt_f32_i32_e32 v11, v17
	v_cvt_f32_i32_e32 v17, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v1, 12, v22
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_i32_e32 v50, v10
	v_cvt_f32_i32_e32 v10, v16
	v_cvt_f32_i32_e32 v16, v2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v2, 14, v22
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v52, v3
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v3, s14, v1
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v53, v4
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v26, s14, v22
	v_or_b32_e32 v4, s14, v2
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v22, v5
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v5, s0, v1, 1
	v_add_lshl_u32 v2, s0, v2, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v3, 1, v3
	v_lshlrev_b32_e32 v55, 1, v4
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v51, v12
	v_cvt_f32_i32_e32 v54, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_clause 0x3
	buffer_load_u16 v8, v5, s[16:19], 0 offen
	buffer_load_u16 v12, v2, s[16:19], 0 offen
	buffer_load_u16 v4, v3, s[16:19], 0 offen
	buffer_load_u16 v5, v55, s[16:19], 0 offen
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v21, v60
	v_cvt_f32_i32_e32 v47, v63
	v_cvt_f32_i32_e32 v46, v62
	v_cvt_f32_i32_e32 v48, v64
	v_cvt_f32_i32_e32 v38, v73
	v_cvt_f32_i32_e32 v42, v72
	v_cvt_f32_i32_e32 v45, v61
	v_cvt_f32_i32_e32 v44, v65
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v1, s15, v58
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v37, v74
	v_cvt_f32_i32_e32 v39, v69
	v_cvt_f32_i32_e32 v41, v71
	v_cvt_f32_i32_e32 v43, v66
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v40, v70
	v_cvt_f32_i32_e32 v20, v68
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v9, 1, v9
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s20, s20, s15
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 16, v0
	s_and_b32 s13, s13, 0xffff
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v2, 16, v25
	v_lshlrev_b32_e32 v3, 16, v27
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v26, 1, v26
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v27, 16, v33
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v18, 1, v18
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v33, 16, v34
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v26, v26, s[16:19], 0 offen
	v_lshlrev_b32_e32 v29, 1, v29
	v_lshlrev_b32_e32 v31, 1, v31
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v56, v2, v23 :: v_dual_lshlrev_b32 v19, 1, v30
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v57, v2, v27 :: v_dual_lshlrev_b32 v8, 16, v8
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v4, 16, v4
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v5, 16, v5
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v26
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v26, 16, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v55, v2, v26 :: v_dual_lshlrev_b32 v28, 1, v28
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x4
	buffer_load_u16 v30, v18, s[16:19], 0 offen
	buffer_load_u16 v29, v29, s[16:19], 0 offen
	buffer_load_u16 v28, v28, s[16:19], 0 offen
	buffer_load_u16 v31, v31, s[16:19], 0 offen
	buffer_load_u16 v36, v19, s[16:19], 0 offen
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v18, v59
	v_cvt_f32_i32_e32 v19, v67
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v17, v55, v17 :: v_dual_lshlrev_b32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v60, v2, v30
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v36
	v_lshlrev_b32_e32 v31, 16, v31
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v23, v3, v23
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v63, v2, v34
	v_dual_mul_f32 v34, v3, v34 :: v_dual_lshlrev_b32 v29, 16, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v64, v2, v31
	v_dual_mul_f32 v31, v3, v31 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v23, v23, v51 :: v_dual_mul_f32 v62, v2, v29
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v29, v3, v29 :: v_dual_lshlrev_b32 v32, 16, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v61, v2, v28
	v_mul_f32_e32 v28, v3, v28
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v58, v2, v33
	v_mul_f32_e32 v33, v3, v33
	v_mul_f32_e32 v59, v2, v32
	v_dual_mul_f32 v32, v3, v32 :: v_dual_mul_f32 v35, v2, v25
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v25, v3, v25 :: v_dual_mul_f32 v36, v2, v24
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v24, v3, v24
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v30, v3, v30
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v27, v3, v27
	v_mul_f32_e32 v26, v3, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v25, v25, v38 :: v_dual_mul_f32 v24, v24, v49
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v38, v56, v52 :: v_dual_mul_f32 v31, v31, v42
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v42, 0xbfb8aa3b, v17 :: v_dual_mul_f32 v35, v35, v44
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v26, v26, v50
	v_mul_f32_e32 v16, v36, v16
	v_mul_f32_e32 v36, v57, v53
	v_dual_mul_f32 v13, v27, v13 :: v_dual_mul_f32 v22, v58, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v27, v59, v54
	v_dual_mul_f32 v15, v32, v15 :: v_dual_mul_f32 v14, v33, v14
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v32, v60, v43
	v_dual_mul_f32 v30, v30, v37 :: v_dual_mul_f32 v29, v29, v40
	v_dual_mul_f32 v33, v62, v46 :: v_dual_mul_f32 v28, v28, v39
	v_dual_mul_f32 v37, v61, v45 :: v_dual_mul_f32 v40, v63, v47
	v_dual_mul_f32 v39, v64, v48 :: v_dual_mul_f32 v34, v34, v41
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v41, 0xbfb8aa3b, v16 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v26
	v_dual_mul_f32 v43, 0xbfb8aa3b, v24 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v13
	v_dual_mul_f32 v45, 0xbfb8aa3b, v38 :: v_dual_mul_f32 v46, 0xbfb8aa3b, v36
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v47, 0xbfb8aa3b, v23
	v_dual_mul_f32 v49, 0xbfb8aa3b, v22 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v41
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v43
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v46
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v48
	v_dual_fmac_f32 v42, 0xbfb8aa3b, v17 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v14
	v_mul_f32_e32 v52, 0xbfb8aa3b, v15
	v_cndmask_b32_e64 v41, 0, 0x42800000, s0
	v_cndmask_b32_e64 v44, 0, 0x42800000, s1
	v_cndmask_b32_e64 v43, 0, 0x42800000, s2
	v_cndmask_b32_e64 v46, 0, 0x42800000, s3
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	v_cndmask_b32_e64 v48, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v47
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v50
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v49
	v_exp_f32_e32 v42, v42
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v52
	v_cndmask_b32_e64 v47, 0, 0x42800000, s6
	v_cndmask_b32_e64 v50, 0, 0x42800000, s7
	v_cndmask_b32_e64 v49, 0, 0x42800000, s8
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v51
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v41, 0xbfb8aa3b, v16 :: v_dual_fmac_f32 v44, 0xbfb8aa3b, v26
	v_dual_fmac_f32 v43, 0xbfb8aa3b, v24 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v13
	v_dual_fmac_f32 v46, 0xbfb8aa3b, v36 :: v_dual_fmac_f32 v45, 0xbfb8aa3b, v38
	v_cndmask_b32_e64 v52, 0, 0x42800000, s9
	v_cndmask_b32_e64 v51, 0, 0x42800000, s10
	v_dual_fmac_f32 v50, 0xbfb8aa3b, v27 :: v_dual_fmac_f32 v49, 0xbfb8aa3b, v22
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v48, v48
	v_ldexp_f32 v42, v42, v53
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v23
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s5
	v_dual_fmac_f32 v52, 0xbfb8aa3b, v15 :: v_dual_fmac_f32 v51, 0xbfb8aa3b, v14
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v49, v49
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v47, v47
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s8
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v41, v41, v54
	v_ldexp_f32 v44, v44, v55
	v_ldexp_f32 v43, v43, v56
	v_ldexp_f32 v45, v45, v58
	v_ldexp_f32 v48, v48, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v53, null, v42, v42, v17
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s10
	v_ldexp_f32 v46, v46, v57
	v_ldexp_f32 v47, v47, v60
	v_ldexp_f32 v50, v50, v61
	v_ldexp_f32 v49, v49, v62
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v41, 1.0, v41 :: v_dual_add_f32 v44, 1.0, v44
	v_dual_add_f32 v43, 1.0, v43 :: v_dual_add_f32 v46, 1.0, v46
	v_dual_add_f32 v45, 1.0, v45 :: v_dual_add_f32 v48, 1.0, v48
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v74, v53
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v52, v52, v63
	v_ldexp_f32 v51, v51, v64
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v47, 1.0, v47 :: v_dual_add_f32 v50, 1.0, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v49, 1.0, v49 :: v_dual_add_f32 v52, 1.0, v52
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v55, null, v41, v41, v16
	v_div_scale_f32 v57, null, v44, v44, v26
	v_div_scale_f32 v59, null, v43, v43, v24
	v_div_scale_f32 v63, null, v45, v45, v38
	v_div_scale_f32 v65, null, v48, v48, v13
	v_div_scale_f32 v61, null, v46, v46, v36
	v_div_scale_f32 v67, null, v47, v47, v23
	v_div_scale_f32 v69, null, v50, v50, v27
	v_div_scale_f32 v71, null, v49, v49, v22
	v_rcp_f32_e32 v75, v55
	v_rcp_f32_e32 v76, v57
	v_rcp_f32_e32 v77, v59
	v_rcp_f32_e32 v79, v63
	v_rcp_f32_e32 v80, v65
	v_fma_f32 v86, -v53, v74, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v72, null, v52, v52, v15
	v_rcp_f32_e32 v78, v61
	v_rcp_f32_e32 v81, v67
	v_rcp_f32_e32 v82, v69
	v_rcp_f32_e32 v83, v71
	v_fmac_f32_e32 v74, v86, v74
	v_div_scale_f32 v73, null, v51, v51, v14
	v_div_scale_f32 v54, vcc_lo, v17, v42, v17
	v_rcp_f32_e32 v84, v72
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v85, v73
	v_fma_f32 v87, -v55, v75, 1.0
	v_fma_f32 v88, -v57, v76, 1.0
	v_fma_f32 v89, -v59, v77, 1.0
	v_fma_f32 v91, -v63, v79, 1.0
	v_fma_f32 v86, -v65, v80, 1.0
	v_div_scale_f32 v56, s0, v16, v41, v16
	v_fma_f32 v90, -v61, v78, 1.0
	v_dual_fmac_f32 v75, v87, v75 :: v_dual_fmac_f32 v76, v88, v76
	v_fma_f32 v87, -v67, v81, 1.0
	v_fma_f32 v88, -v69, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v77, v89, v77 :: v_dual_fmac_f32 v78, v90, v78
	v_fma_f32 v89, -v71, v83, 1.0
	v_dual_fmac_f32 v79, v91, v79 :: v_dual_fmac_f32 v80, v86, v80
	v_mul_f32_e32 v86, v54, v74
	v_div_scale_f32 v58, s1, v26, v44, v26
	v_fma_f32 v90, -v72, v84, 1.0
	v_fma_f32 v91, -v73, v85, 1.0
	v_dual_fmac_f32 v81, v87, v81 :: v_dual_fmac_f32 v82, v88, v82
	v_fmac_f32_e32 v83, v89, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v87, v56, v75 :: v_dual_fmac_f32 v84, v90, v84
	v_fma_f32 v88, -v53, v86, v54
	v_div_scale_f32 v60, s2, v24, v43, v24
	v_fmac_f32_e32 v85, v91, v85
	v_mul_f32_e32 v89, v58, v76
	v_fma_f32 v90, -v55, v87, v56
	v_fmac_f32_e32 v86, v88, v74
	v_div_scale_f32 v62, s3, v36, v46, v36
	v_div_scale_f32 v68, s6, v23, v47, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v90, v75
	v_fma_f32 v53, -v53, v86, v54
	v_mul_f32_e32 v54, v60, v77
	v_fma_f32 v88, -v57, v89, v58
	v_div_scale_f32 v91, s8, v22, v49, v22
	v_fma_f32 v55, -v55, v87, v56
	v_div_fmas_f32 v53, v53, v74, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v88, v76 :: v_dual_mul_f32 v88, v62, v78
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v56, v68, v81
	v_div_fmas_f32 v55, v55, v75, v87
	v_fma_f32 v57, -v57, v89, v58
	v_fma_f32 v87, -v61, v88, v62
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v64, s4, v38, v45, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v57, v57, v76, v89
	v_mul_f32_e32 v76, v91, v83
	v_fmac_f32_e32 v88, v87, v78
	v_fma_f32 v87, -v67, v56, v68
	v_div_scale_f32 v66, s5, v13, v48, v13
	v_div_scale_f32 v90, s9, v15, v52, v15
	v_mul_f32_e32 v74, v64, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v87, v81
	v_fma_f32 v87, -v71, v76, v91
	v_div_scale_f32 v70, s7, v27, v50, v27
	v_fma_f32 v75, -v59, v54, v60
	v_fma_f32 v89, -v63, v74, v64
	v_fmac_f32_e32 v76, v87, v83
	v_div_scale_f32 v87, s0, v14, v51, v14
	v_mul_f32_e32 v86, v66, v80
	v_div_fixup_f32 v17, v53, v42, v17
	v_dual_fmac_f32 v74, v89, v79 :: v_dual_mul_f32 v89, v90, v84
	v_mul_f32_e32 v58, v70, v82
	v_div_fixup_f32 v26, v57, v44, v26
	v_fmac_f32_e32 v54, v75, v77
	v_fma_f32 v75, -v65, v86, v66
	s_mov_b32 vcc_lo, s2
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v17, v35, v17
	v_mul_f32_e32 v25, v25, v26
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v59, -v59, v54, v60
	v_fmac_f32_e32 v86, v75, v80
	v_fma_f32 v75, -v69, v58, v70
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v60.h, 0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v16, v55, v41, v16
	v_div_fmas_f32 v42, v59, v77, v54
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v58, v75, v82
	v_fma_f32 v75, -v72, v89, v90
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v16, v32, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v24, v42, v43, v24
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v60.l, v25.h
	v_cmp_o_f32_e64 s3, v25, v25
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v89, v75, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v75, v87, v85 :: v_dual_mul_f32 v24, v30, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v17, v17
	v_cmp_o_f32_e64 s2, v16, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v72, -v72, v89, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v73, v75, v87
	v_fmac_f32_e32 v75, v92, v85
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v92, s20, s14, v9
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v9, -v61, v88, v62
	v_fma_f32 v62, -v63, v74, v64
	v_fma_f32 v64, -v65, v86, v66
	v_fma_f32 v66, -v67, v56, v68
	v_fma_f32 v68, -v69, v58, v70
	v_div_fmas_f32 v9, v9, v78, v88
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v70, -v71, v76, v91
	v_div_fmas_f32 v35, v62, v79, v74
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v9, v46, v36
	v_div_fmas_f32 v32, v64, v80, v86
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v73, -v73, v75, v87
	v_div_fmas_f32 v26, v66, v81, v56
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v13, v32, v48, v13
	v_div_fmas_f32 v30, v68, v82, v58
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v23, v26, v47, v23
	v_div_fmas_f32 v32, v70, v83, v76
	s_mov_b32 vcc_lo, s9
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v9, v33, v9
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v33, v72, v84, v89
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.h, v60.h
	v_mov_b16_e32 v61.l, v24.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v13, v29, v13
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v29, v73, v85, v75
	v_div_fixup_f32 v22, v32, v49, v22
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v32, 1, v60
	v_mov_b16_e32 v60.l, v17.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v23, v28, v23 :: v_dual_and_b32 v28, 1, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v65.h, v60.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v15, v33, v52, v15
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v14, v29, v51, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v25, v25, v32, 0x7fff
	v_and_b32_e32 v29, 1, v60
	v_mov_b16_e32 v60.l, v13.h
	v_mov_b16_e32 v65.l, v23.h
	v_cmp_o_f32_e64 s4, v24, v24
	v_add3_u32 v24, v24, v28, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v35, v35, v45, v38
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v15, v31, v15 :: v_dual_mul_f32 v90, v2, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s3
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v12, v3, v12 :: v_dual_and_b32 v25, 1, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v28, 1, v60
	v_mov_b16_e32 v60.l, v9.h
	v_mov_b16_e32 v63.h, v60.h
	v_mov_b16_e32 v63.l, v16.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v26, v37, v35
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v27, v30, v50, v27
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s6, v23, v23
	v_add3_u32 v17, v17, v29, 0x7fff
	v_and_b32_e32 v29, 1, v60
	v_add3_u32 v23, v23, v25, 0x7fff
	v_mov_b16_e32 v60.l, v15.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v14, v34, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v30, 1, v63
	v_cmp_o_f32_e64 s5, v13, v13
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v11, v12, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v13, v13, v28, 0x7fff
	v_mov_b16_e32 v69.h, v60.h
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_add3_u32 v9, v9, v29, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v23.h, s6
	v_and_b32_e32 v23, 1, v60
	v_mov_b16_e32 v69.l, v14.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v25, v39, v27
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v27, v2, v8
	v_mul_f32_e32 v8, v3, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v16, v30, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v17, v40, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v15, v23, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v6, v27, v6
	v_mul_f32_e32 v8, v8, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v22, 1, v69
	v_cmp_o_f32_e64 s1, v14, v14
	v_mov_b16_e32 v67.h, v60.h
	v_mov_b16_e32 v67.l, v26.h
	v_cmp_o_f32_e64 s0, v26, v26
	v_add3_u32 v22, v14, v22, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v23.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v6
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v7, v90, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v10, 0xbfb8aa3b, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.l, 0x7fff, v22.h, s1
	v_mov_b16_e32 v60.l, v25.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_mul_f32_e32 v23, 0xbfb8aa3b, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s2
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s4
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s5
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_lshl_add_u32 v71, s15, 4, v1
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v23.l, v17.h
	v_mov_b16_e32 v23.h, v60.h
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v23
	v_and_b32_e32 v30, 1, v67
	v_add3_u32 v23, v17, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v26, v26, v30, 0x7fff
	v_and_b32_e32 v30, 1, v60
	v_cndmask_b16 v9.l, 0x7fff, v26.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v25, v30, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v10
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v10, 0, 0x42800000, s0
	v_exp_f32_e32 v12, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v10, 0xbfb8aa3b, v11 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v6
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v12, v12, v22
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v15, v15, v26
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v25, v25
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v10, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v26, null, v15, v15, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v31, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v32, null, v10, v10, v11
	v_rcp_f32_e32 v33, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v26, v31, 1.0
	v_dual_fmac_f32 v31, v35, v31 :: v_dual_fmac_f32 v22, 0xbfb8aa3b, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v32, v33, 1.0
	v_div_scale_f32 v35, s1, v6, v15, v6
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v33, v37, v33
	v_div_scale_f32 v37, s0, v11, v10, v11
	v_dual_mul_f32 v40, v35, v31 :: v_dual_mul_f32 v41, v37, v33
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v22, v22, v29
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v27, null, v12, v12, v7
	v_div_scale_f32 v34, vcc_lo, v7, v12, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v27
	v_fma_f32 v29, -v27, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v29, v28
	v_mul_f32_e32 v25, v34, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v27, v25, v34
	v_fmac_f32_e32 v25, v38, v28
	v_fma_f32 v38, -v26, v40, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v27, v25, v34
	v_fma_f32 v34, -v32, v41, v37
	v_div_fmas_f32 v25, v27, v28, v25
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v27, v3, v4
	v_dual_mul_f32 v3, v3, v5 :: v_dual_add_f32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v41, v34, v33
	s_mov_b32 vcc_lo, s1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v19, v27, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v3, v3, v20
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v29, null, v22, v22, v8
	v_fmac_f32_e32 v40, v38, v31
	v_fma_f32 v28, -v32, v41, v37
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v5, v2, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v36, v29
	v_div_fixup_f32 v7, v25, v12, v7
	v_fma_f32 v26, -v26, v40, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v26, v26, v31, v40
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e64 s0, 0, v0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v39, -v29, v36, 1.0
	v_div_fmas_f32 v28, v28, v33, v41
	v_div_fixup_f32 v6, v26, v15, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v0, 0x5410
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v36, v39, v36
	v_div_scale_f32 v39, s2, v8, v22, v8
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v10, v28, v10, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v42, v39, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v3, v3, v10 :: v_dual_mul_f32 v2, v2, v4
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v38, -v29, v42, v39
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v4, v5, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v0, v0, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v60.l, v3.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v2, v2, v18
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v42, v38, v36
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v4, v4, v7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 0x540054, v0
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v2, v2, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v29, -v29, v42, v39
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v6, 1, v60
	v_mov_b16_e32 v60.l, v4.h
	v_cmp_o_f32_e64 s1, v4, v4
	v_cmp_o_f32_e64 s2, v2, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v29, v29, v36, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_add3_u32 v6, v3, v6, 0x7fff
	v_lshl_or_b32 v0, v0, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v8, v29, v22, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.l, 0x7fff, v23.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_and_b32_e32 v0, 0x5040504, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v5, v19, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.h, v60.h
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cndmask_b32_e64 v10, v16, v30, s0
	v_mov_b16_e32 v8.l, v5.h
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v7, 1, v8
	v_mov_b16_e32 v8.l, v2.h
	v_add3_u32 v3, v5, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v7, 1, v8
	v_and_b32_e32 v8, 1, v60
	v_cndmask_b16 v6.l, 0x7fff, v3.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v5, v2, v7, 0x7fff
	v_add3_u32 v7, v4, v8, 0x7fff
	v_mov_b32_e32 v8, 0x7632
	v_cndmask_b32_e64 v4, v14, v24, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s2
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x3276, v8, s0
	v_cndmask_b32_e64 v5, v24, v14, s0
	v_cndmask_b32_e64 v7, v6, v13, s0
	v_cndmask_b32_e64 v6, v13, v6, s0
	v_cndmask_b32_e64 v11, v3, v9, s0
	v_lshl_or_b32 v2, v2, 8, v2
	v_cndmask_b32_e64 v3, v9, v3, s0
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v8, v30, v16, s0
	v_permlanex16_b32 v5, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x760076, v2
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v3, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 4, v2
	v_and_b32_e32 v9, 0x7060706, v2
	v_perm_b32 v2, v5, v4, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_perm_b32 v3, v5, v4, v9
	v_perm_b32 v4, v6, v7, v0
	v_perm_b32 v5, v6, v7, v9
	v_perm_b32 v6, v10, v8, v0
	v_perm_b32 v7, v10, v8, v9
	v_perm_b32 v8, v12, v11, v0
	v_add_lshl_u32 v0, v92, v1, 1
	v_perm_b32 v9, v12, v11, v9
	v_add_lshl_u32 v1, v92, v71, 1
	s_clause 0x1
	buffer_store_b128 v[2:5], v0, s[12:15], 0 offen
	buffer_store_b128 v[6:9], v1, s[12:15], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 30
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_vgpr, 94
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9072
; TotalNumSgprs: 32
; NumVgprs: 94
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 32
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm32_bn256_bk32_gm4_w16_s3_weu2_sk1_maskk.kd
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
