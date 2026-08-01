	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[72:73], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	v_lshlrev_b32_e32 v121, 1, v0
	v_and_b32_e32 v122, 0x7f, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s72, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s12
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s12, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s15, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s17, s14, 1
	s_sub_i32 s16, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s18, s16, s13
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s13, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s13, s13, s15
	s_sub_i32 s80, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s80, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s12
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s6, s6, s2
	s_addc_u32 s7, s7, s3
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[24:25], s[4:5], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[78:79], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s8, s2
	s_addc_u32 s5, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s7, s80, 8
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s73, 0
	v_or_b32_e32 v89, s7, v0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_or_b32_e32 v2, s7, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshlrev_b32_e32 v1, 1, v0
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v7, s78 :: v_dual_and_b32 v8, 0x7f, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr7
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[64:67], s[0:1], 0x40
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[74:75], s[4:5], 0x0
	s_load_b64 s[76:77], s[2:3], 0x0
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v120, 0x80, v0
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v119, 15, v0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s2, 0, v120
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v18, 5, v0
	s_load_b128 s[20:23], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_mov_b32_e32 v1, 0
	.loc	1 1058 13 is_stmt 1             ; ragged.py:1058:13
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s25, 0
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_and_b32_e32 v146, 31, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s78, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s79, 0, s0
	v_add_co_u32 v4, vcc_lo, v2, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 16
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	v_add_co_u32 v10, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v11, null, 0, v3, vcc_lo
	v_add_co_u32 v12, vcc_lo, v2, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, 0, v3, vcc_lo
	v_add_co_u32 v14, vcc_lo, v2, 48
	v_add_co_ci_u32_e64 v15, null, 0, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[76:77], v[12:13]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v16, vcc_lo, v2, 56
	v_add_co_ci_u32_e64 v17, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[2:3]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 20 is_stmt 0             ; ragged.py:1046:20
	s_and_b32 s5, s5, s13
	.loc	1 1068 35 is_stmt 1             ; ragged.py:1068:35
	s_mul_i32 s13, s73, s72
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[2:3]
	v_mad_u64_u32 v[90:91], null, s13, s24, v[89:90]
	v_cndmask_b32_e64 v2, 0x88, 0, s2
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[74:75], v[10:11]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[10:11]
	v_add_nc_u32_e32 v10, s78, v18
	v_and_b32_e32 v3, 24, v121
	v_xor_b32_e32 v123, v2, v122
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_mad_u64_u32 v[92:93], null, s72, 3, v[90:91]
	v_mad_u64_u32 v[93:94], null, s72, 5, v[90:91]
	v_mad_u64_u32 v[94:95], null, s72, 6, v[90:91]
	v_mad_u64_u32 v[95:96], null, s72, 7, v[90:91]
	v_mad_u64_u32 v[96:97], null, s72, 9, v[90:91]
	v_mad_u64_u32 v[97:98], null, s72, 10, v[90:91]
	v_mad_u64_u32 v[98:99], null, s72, 11, v[90:91]
	v_mad_u64_u32 v[99:100], null, s72, 12, v[90:91]
	v_mad_u64_u32 v[100:101], null, s72, 13, v[90:91]
	v_mad_u64_u32 v[101:102], null, s72, 14, v[90:91]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v19, 0xe0, v0
	v_lshl_or_b32 v124, v119, 5, v3
	v_xor_b32_e32 v2, 0x110, v123
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_mad_u64_u32 v[102:103], null, s72, 15, v[90:91]
	v_mad_u64_u32 v[103:104], null, s72, 17, v[90:91]
	v_mad_u64_u32 v[104:105], null, s72, 18, v[90:91]
	v_mad_u64_u32 v[105:106], null, s72, 19, v[90:91]
	v_mad_u64_u32 v[106:107], null, s72, 20, v[90:91]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[6:7]
	v_cmp_le_i64_e64 s6, s[74:75], v[14:15]
	v_cmp_le_i64_e64 s7, s[74:75], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[6:7]
	v_cmp_gt_i64_e64 s14, s[76:77], v[14:15]
	v_cmp_gt_i64_e64 s15, s[76:77], v[16:17]
	v_xor_b32_e32 v3, 8, v124
	v_or_b32_e32 v6, 0x300, v0
	v_add_nc_u32_e32 v15, 8, v10
	v_add_nc_u32_e32 v16, 16, v10
	v_add_nc_u32_e32 v134, 0, v2
	v_mov_b32_e32 v2, v1
	v_lshrrev_b32_e32 v13, 1, v19
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_mad_u64_u32 v[107:108], null, s72, 21, v[90:91]
	v_mad_u64_u32 v[108:109], null, s72, 22, v[90:91]
	v_mad_u64_u32 v[109:110], null, s72, 23, v[90:91]
	v_mad_u64_u32 v[110:111], null, s72, 24, v[90:91]
	v_mad_u64_u32 v[111:112], null, s72, 25, v[90:91]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[4:5]
	v_cmp_le_i64_e64 s3, s[74:75], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[76:77], v[4:5]
	v_cmp_gt_i64_e64 s11, s[76:77], v[8:9]
	v_xor_b32_e32 v5, 24, v124
	v_or_b32_e32 v7, 0x700, v0
	v_or_b32_e32 v8, 0xb00, v0
	v_or_b32_e32 v9, 0xf00, v0
	v_add3_u32 v125, 0, v119, v13
	v_mul_lo_u32 v126, v10, s73
	v_add_nc_u32_e32 v13, 24, v10
	v_add_nc_u32_e32 v18, 48, v10
	v_add_nc_u32_e32 v135, 0, v3
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v138, 0, v6
	v_mul_lo_u32 v128, v16, s73
	v_add_nc_u32_e32 v16, 40, v10
	v_mov_b32_e32 v6, v1
	v_mul_lo_u32 v127, v15, s73
	v_add_nc_u32_e32 v15, 32, v10
	v_add_nc_u32_e32 v10, 56, v10
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_mad_u64_u32 v[112:113], null, s72, 26, v[90:91]
	v_mad_u64_u32 v[113:114], null, s72, 27, v[90:91]
	v_mad_u64_u32 v[114:115], null, s72, 28, v[90:91]
	v_xor_b32_e32 v4, 16, v124
	v_or_b32_e32 v11, 0x1300, v0
	v_or_b32_e32 v12, 0x1700, v0
	v_or_b32_e32 v14, 0x1b00, v0
	v_or_b32_e32 v17, 0x1f00, v0
	v_mad_u64_u32 v[115:116], null, s72, 29, v[90:91]
	v_mad_u64_u32 v[116:117], null, s72, 30, v[90:91]
	v_add_nc_u32_e32 v137, 0, v5
	v_add_nc_u32_e32 v139, 0, v7
	v_add_nc_u32_e32 v140, 0, v8
	v_add_nc_u32_e32 v141, 0, v9
	v_mov_b32_e32 v5, v1
	v_mul_lo_u32 v131, v16, s73
	v_mov_b32_e32 v7, v1
	v_mul_lo_u32 v132, v18, s73
	v_mov_b32_e32 v8, v1
	v_mul_lo_u32 v129, v13, s73
	v_mov_b32_e32 v9, v1
	v_mul_lo_u32 v133, v10, s73
	v_mov_b32_e32 v10, v1
	v_mul_lo_u32 v130, v15, s73
	v_mad_u64_u32 v[117:118], null, s72, 31, v[90:91]
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v136, 0, v4
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v142, 0, v11
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v143, 0, v12
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v144, 0, v14
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v145, 0, v17
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v23, v1
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v147, s72, v90
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	v_lshl_add_u32 v148, s72, 1, v90
	v_lshl_add_u32 v91, s72, 2, v90
	v_lshl_add_u32 v118, s72, 3, v90
	v_lshl_add_u32 v149, s72, 4, v90
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s10
	s_and_b32 s3, s3, s11
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_and_b32 s23, s23, 0xffff
	s_and_b32 vcc_lo, vcc_lo, s8
	s_and_b32 s0, s0, s9
	s_and_b32 s4, s4, s12
	s_and_b32 s6, s6, s14
	s_and_b32 s7, s7, s15
	s_mov_b32 s8, s20
	s_mov_b32 s9, s21
	s_mov_b32 s12, s22
	s_mov_b32 s13, s23
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v65, s25, v146
	.loc	1 1068 65                       ; ragged.py:1068:65
	s_mul_i32 s20, s25, s72
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s25, s25, 32
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v66, s20, v90
	v_add_nc_u32_e32 v67, s20, v147
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v159, v126, v65
	v_add_nc_u32_e32 v161, v128, v65
	v_add_nc_u32_e32 v68, s20, v148
	v_add_nc_u32_e32 v163, v130, v65
	v_add_nc_u32_e32 v69, s20, v92
	v_add_nc_u32_e32 v165, v132, v65
	v_add_nc_u32_e32 v70, s20, v91
	v_add_nc_u32_e32 v158, s20, v117
	v_add_nc_u32_e32 v160, v127, v65
	v_add_nc_u32_e32 v162, v129, v65
	v_add_nc_u32_e32 v164, v131, v65
	v_add_nc_u32_e32 v65, v133, v65
	v_add_nc_u32_e32 v71, s20, v93
	v_add_nc_u32_e32 v72, s20, v94
	v_add_nc_u32_e32 v73, s20, v95
	v_add_nc_u32_e32 v74, s20, v118
	v_add_nc_u32_e32 v75, s20, v96
	v_add_nc_u32_e32 v76, s20, v97
	v_add_nc_u32_e32 v77, s20, v98
	v_add_nc_u32_e32 v78, s20, v99
	v_add_nc_u32_e32 v79, s20, v100
	v_add_nc_u32_e32 v80, s20, v101
	v_add_nc_u32_e32 v81, s20, v102
	v_add_nc_u32_e32 v82, s20, v149
	v_add_nc_u32_e32 v83, s20, v103
	v_add_nc_u32_e32 v84, s20, v104
	v_add_nc_u32_e32 v85, s20, v105
	v_add_nc_u32_e32 v86, s20, v106
	v_add_nc_u32_e32 v87, s20, v107
	v_add_nc_u32_e32 v88, s20, v108
	v_add_nc_u32_e32 v150, s20, v109
	v_add_nc_u32_e32 v151, s20, v110
	v_add_nc_u32_e32 v152, s20, v111
	v_add_nc_u32_e32 v153, s20, v112
	v_add_nc_u32_e32 v154, s20, v113
	v_add_nc_u32_e32 v155, s20, v114
	v_add_nc_u32_e32 v156, s20, v115
	v_add_nc_u32_e32 v157, s20, v116
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x1f
	buffer_load_u8 v166, v66, s[12:15], 0 offen
	buffer_load_u8 v167, v67, s[12:15], 0 offen
	buffer_load_u8 v168, v68, s[12:15], 0 offen
	buffer_load_u8 v169, v69, s[12:15], 0 offen
	buffer_load_u8 v170, v70, s[12:15], 0 offen
	buffer_load_u8 v171, v71, s[12:15], 0 offen
	buffer_load_u8 v172, v72, s[12:15], 0 offen
	buffer_load_u8 v173, v73, s[12:15], 0 offen
	buffer_load_u8 v174, v74, s[12:15], 0 offen
	buffer_load_u8 v175, v75, s[12:15], 0 offen
	buffer_load_u8 v176, v76, s[12:15], 0 offen
	buffer_load_u8 v177, v77, s[12:15], 0 offen
	buffer_load_u8 v178, v78, s[12:15], 0 offen
	buffer_load_u8 v179, v79, s[12:15], 0 offen
	buffer_load_u8 v180, v80, s[12:15], 0 offen
	buffer_load_u8 v181, v81, s[12:15], 0 offen
	buffer_load_u8 v182, v82, s[12:15], 0 offen
	buffer_load_u8 v183, v83, s[12:15], 0 offen
	buffer_load_u8 v184, v84, s[12:15], 0 offen
	buffer_load_u8 v185, v85, s[12:15], 0 offen
	buffer_load_u8 v186, v86, s[12:15], 0 offen
	buffer_load_u8 v187, v87, s[12:15], 0 offen
	buffer_load_u8 v188, v88, s[12:15], 0 offen
	buffer_load_u8 v189, v150, s[12:15], 0 offen
	buffer_load_u8 v190, v151, s[12:15], 0 offen
	buffer_load_u8 v191, v152, s[12:15], 0 offen
	buffer_load_u8 v192, v153, s[12:15], 0 offen
	buffer_load_u8 v193, v154, s[12:15], 0 offen
	buffer_load_u8 v194, v155, s[12:15], 0 offen
	buffer_load_u8 v195, v156, s[12:15], 0 offen
	buffer_load_u8 v196, v157, s[12:15], 0 offen
	buffer_load_u8 v158, v158, s[12:15], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v66, 0x80000000, v159, vcc_lo
	v_cndmask_b32_e64 v68, 0x80000000, v161, s1
	v_cndmask_b32_e64 v70, 0x80000000, v163, s4
	v_cndmask_b32_e64 v72, 0x80000000, v165, s6
	v_cndmask_b32_e64 v67, 0x80000000, v160, s0
	v_cndmask_b32_e64 v69, 0x80000000, v162, s3
	v_cndmask_b32_e64 v71, 0x80000000, v164, s5
	v_cndmask_b32_e64 v65, 0x80000000, v65, s7
	s_clause 0x7
	buffer_load_u8 v66, v66, s[8:11], 0 offen
	buffer_load_u8 v68, v68, s[8:11], 0 offen
	buffer_load_u8 v70, v70, s[8:11], 0 offen
	buffer_load_u8 v72, v72, s[8:11], 0 offen
	buffer_load_u8 v65, v65, s[8:11], 0 offen
	buffer_load_u8 v71, v71, s[8:11], 0 offen
	buffer_load_u8 v69, v69, s[8:11], 0 offen
	buffer_load_u8 v67, v67, s[8:11], 0 offen
	v_add_nc_u32_e32 v73, 0, v123
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_add_nc_u32_e32 v159, 0, v0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s25, s73
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(7)
	ds_store_b8 v73, v66
	s_waitcnt vmcnt(6)
	ds_store_b8 v73, v68 offset:512
	v_add_nc_u32_e32 v66, 0, v124
	s_waitcnt vmcnt(5)
	ds_store_b8 v73, v70 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v73, v72 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8 v134, v67
	ds_store_b8 v134, v69 offset:512
	ds_store_b8 v134, v71 offset:1024
	ds_store_b8 v134, v65 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[150:153], v66 offset1:1
	ds_load_2addr_stride64_b64 v[154:157], v66 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[85:88], v135 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v135 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v136 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v136 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v137 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v137 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v159, v166
	ds_store_b8 v159, v167 offset:256
	ds_store_b8 v159, v168 offset:512
	ds_store_b8 v159, v170 offset:1024
	ds_store_b8 v159, v171 offset:1280
	ds_store_b8 v159, v172 offset:1536
	ds_store_b8 v159, v174 offset:2048
	ds_store_b8 v159, v175 offset:2304
	ds_store_b8 v159, v176 offset:2560
	ds_store_b8 v159, v178 offset:3072
	ds_store_b8 v159, v179 offset:3328
	ds_store_b8 v159, v180 offset:3584
	ds_store_b8 v159, v182 offset:4096
	ds_store_b8 v159, v183 offset:4352
	ds_store_b8 v159, v184 offset:4608
	ds_store_b8 v159, v186 offset:5120
	ds_store_b8 v159, v187 offset:5376
	ds_store_b8 v159, v188 offset:5632
	ds_store_b8 v159, v190 offset:6144
	ds_store_b8 v159, v191 offset:6400
	ds_store_b8 v159, v192 offset:6656
	ds_store_b8 v159, v194 offset:7168
	ds_store_b8 v159, v195 offset:7424
	ds_store_b8 v159, v196 offset:7680
	ds_store_b8 v138, v169
	ds_store_b8 v139, v173
	ds_store_b8 v140, v177
	ds_store_b8 v141, v181
	ds_store_b8 v142, v185
	ds_store_b8 v143, v189
	ds_store_b8 v144, v193
	ds_store_b8 v145, v158
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v158, v125 offset:1280
	ds_load_u8 v159, v125 offset:1024
	ds_load_u8 v160, v125 offset:1792
	ds_load_u8 v161, v125 offset:1536
	ds_load_u8 v162, v125 offset:1920
	ds_load_u8 v163, v125 offset:1664
	ds_load_u8 v164, v125 offset:1408
	ds_load_u8 v165, v125 offset:1152
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v125 offset:256
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v125
	ds_load_u8 v166, v125 offset:896
	ds_load_u8 v167, v125 offset:640
	ds_load_u8 v168, v125 offset:384
	ds_load_u8 v169, v125 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v161, v161, v159, 0xc0c0004
	ds_load_u8 v159, v125 offset:768
	ds_load_u8 v170, v125 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v170, v159, 0xc0c0004
	v_lshl_or_b32 v159, v160, 16, v158
	v_perm_b32 v160, v165, v164, 0xc0c0004
	v_perm_b32 v164, v167, v166, 0xc0c0004
	ds_load_u8 v166, v125 offset:5888
	ds_load_u8 v167, v125 offset:5632
	v_lshl_or_b32 v158, v170, 16, v161
	v_perm_b32 v161, v163, v162, 0xc0c0004
	v_perm_b32 v162, v169, v168, 0xc0c0004
	ds_load_u8 v163, v125 offset:3328
	ds_load_u8 v168, v125 offset:6016
	v_wmma_i32_16x16x16_iu4 v[1:8], v[158:159], v[150:151], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v161, v161, 16, v160
	v_lshl_or_b32 v160, v164, 16, v162
	v_wmma_i32_16x16x16_iu4 v[17:24], v[158:159], v[152:153], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v162, v125 offset:3840
	ds_load_u8 v164, v125 offset:3584
	v_wmma_i32_16x16x16_iu4 v[33:40], v[158:159], v[154:155], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[158:159], v[156:157], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[160:161], v[150:151], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[160:161], v[152:153], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v150, v125 offset:2304
	ds_load_u8 v151, v125 offset:2048
	ds_load_u8 v152, v125 offset:2816
	ds_load_u8 v153, v125 offset:2560
	ds_load_u8 v158, v125 offset:3968
	ds_load_u8 v159, v125 offset:3712
	v_wmma_i32_16x16x16_iu4 v[41:48], v[160:161], v[154:155], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[160:161], v[156:157], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v154, v125 offset:3456
	ds_load_u8 v155, v125 offset:3200
	ds_load_u8 v156, v125 offset:2944
	ds_load_u8 v157, v125 offset:2688
	ds_load_u8 v160, v125 offset:2432
	ds_load_u8 v161, v125 offset:2176
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v162, v164, v162, 0xc0c0004
	ds_load_u8 v164, v125 offset:5120
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v153, v159, v158, 0xc0c0004
	ds_load_u8 v158, v125 offset:5760
	ds_load_u8 v159, v125 offset:5504
	v_lshl_or_b32 v150, v152, 16, v150
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v152, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v154, v161, v160, 0xc0c0004
	ds_load_u8 v161, v125 offset:4480
	ds_load_u8 v165, v125 offset:3072
	v_perm_b32 v155, v157, v156, 0xc0c0004
	ds_load_u8 v156, v125 offset:5248
	v_lshl_or_b32 v153, v153, 16, v152
	ds_load_u8 v157, v125 offset:4992
	ds_load_u8 v160, v125 offset:4736
	v_lshl_or_b32 v152, v155, 16, v154
	v_perm_b32 v155, v167, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[152:153], v[85:86], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[152:153], v[87:88], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v158, v158, v168, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[152:153], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[152:153], v[83:84], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v163, v165, v163, 0xc0c0004
	ds_load_u8 v165, v125 offset:5376
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v160, v160, v157, 0xc0c0004
	v_lshl_or_b32 v151, v162, 16, v163
	ds_load_u8 v162, v125 offset:4352
	ds_load_u8 v163, v125 offset:4096
	v_wmma_i32_16x16x16_iu4 v[1:8], v[150:151], v[85:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[150:151], v[87:88], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[150:151], v[81:82], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[150:151], v[83:84], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v154, v164, v165, 0xc0c0004
	ds_load_u8 v164, v125 offset:4224
	v_perm_b32 v156, v156, v159, 0xc0c0004
	ds_load_u8 v159, v125 offset:7936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v125 offset:4864
	ds_load_u8 v165, v125 offset:4608
	v_lshl_or_b32 v155, v155, 16, v154
	v_lshl_or_b32 v157, v158, 16, v156
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v161, v164, v161, 0xc0c0004
	ds_load_u8 v164, v125 offset:8064
	ds_load_u8 v166, v125 offset:7808
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v163, v165, v163, 0xc0c0004
	ds_load_u8 v165, v125 offset:7680
	v_lshl_or_b32 v156, v160, 16, v161
	ds_load_u8 v158, v125 offset:7552
	ds_load_u8 v160, v125 offset:7296
	v_lshl_or_b32 v154, v163, 16, v162
	ds_load_u8 v162, v125 offset:7424
	ds_load_u8 v163, v125 offset:7168
	v_wmma_i32_16x16x16_iu4 v[9:16], v[156:157], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[156:157], v[79:80], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[156:157], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[154:155], v[77:78], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[154:155], v[79:80], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[154:155], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[154:155], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[156:157], v[75:76], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v164, v166, v164, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v160, v160, v158, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v163, v162, 0xc0c0004
	ds_load_u8 v162, v125 offset:6400
	v_perm_b32 v159, v165, v159, 0xc0c0004
	ds_load_u8 v163, v125 offset:6144
	ds_load_u8 v165, v125 offset:7040
	ds_load_u8 v167, v125 offset:6784
	ds_load_u8 v168, v125 offset:6528
	ds_load_u8 v169, v125 offset:6272
	v_lshl_or_b32 v159, v159, 16, v161
	v_lshl_or_b32 v161, v164, 16, v160
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v125 offset:6912
	ds_load_u8 v170, v125 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v166, v169, v168, 0xc0c0004
	v_perm_b32 v165, v167, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v160, v165, 16, v166
	v_wmma_i32_16x16x16_iu4 v[9:16], v[160:161], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[160:161], v[71:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[160:161], v[65:66], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[160:161], v[67:68], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v170, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v158, v163, 16, v162
	v_wmma_i32_16x16x16_iu4 v[1:8], v[158:159], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[158:159], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[158:159], v[65:66], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[158:159], v[67:68], v[49:56] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v100, v1
	v_cvt_f32_i32_e32 v99, v2
	v_cvt_f32_i32_e32 v98, v3
	v_cvt_f32_i32_e32 v97, v4
	v_cvt_f32_i32_e32 v96, v5
	v_cvt_f32_i32_e32 v95, v6
	v_cvt_f32_i32_e32 v94, v7
	v_cvt_f32_i32_e32 v93, v8
	v_cvt_f32_i32_e32 v92, v9
	v_cvt_f32_i32_e32 v91, v10
	v_cvt_f32_i32_e32 v90, v11
	v_cvt_f32_i32_e32 v88, v12
	v_cvt_f32_i32_e32 v87, v13
	v_cvt_f32_i32_e32 v86, v14
	v_cvt_f32_i32_e32 v85, v15
	v_cvt_f32_i32_e32 v84, v16
	v_cvt_f32_i32_e32 v83, v17
	v_cvt_f32_i32_e32 v82, v18
	v_cvt_f32_i32_e32 v81, v19
	v_cvt_f32_i32_e32 v80, v20
	v_cvt_f32_i32_e32 v79, v21
	v_cvt_f32_i32_e32 v78, v22
	v_cvt_f32_i32_e32 v77, v23
	v_cvt_f32_i32_e32 v76, v24
	v_cvt_f32_i32_e32 v75, v25
	v_cvt_f32_i32_e32 v74, v26
	v_cvt_f32_i32_e32 v73, v27
	v_cvt_f32_i32_e32 v72, v28
	v_cvt_f32_i32_e32 v71, v29
	v_cvt_f32_i32_e32 v70, v30
	v_cvt_f32_i32_e32 v69, v31
	v_cvt_f32_i32_e32 v68, v32
	v_cvt_f32_i32_e32 v67, v33
	v_cvt_f32_i32_e32 v66, v34
	v_cvt_f32_i32_e32 v65, v35
	v_cvt_f32_i32_e32 v35, v36
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v33, v38
	v_cvt_f32_i32_e32 v32, v39
	v_cvt_f32_i32_e32 v31, v40
	v_cvt_f32_i32_e32 v30, v41
	v_cvt_f32_i32_e32 v29, v42
	v_cvt_f32_i32_e32 v28, v43
	v_cvt_f32_i32_e32 v27, v44
	v_cvt_f32_i32_e32 v26, v45
	v_cvt_f32_i32_e32 v25, v46
	v_cvt_f32_i32_e32 v24, v47
	v_cvt_f32_i32_e32 v23, v48
	v_cvt_f32_i32_e32 v22, v49
	v_cvt_f32_i32_e32 v21, v50
	v_cvt_f32_i32_e32 v20, v51
	v_cvt_f32_i32_e32 v19, v52
	v_cvt_f32_i32_e32 v18, v53
	v_cvt_f32_i32_e32 v17, v54
	v_cvt_f32_i32_e32 v16, v55
	v_cvt_f32_i32_e32 v15, v56
	v_cvt_f32_i32_e32 v14, v57
	v_cvt_f32_i32_e32 v13, v58
	v_cvt_f32_i32_e32 v12, v59
	v_cvt_f32_i32_e32 v11, v60
	v_cvt_f32_i32_e32 v6, v61
	v_cvt_f32_i32_e32 v5, v62
	v_cvt_f32_i32_e32 v4, v63
	v_cvt_f32_i32_e32 v3, v64
	v_dual_mov_b32 v7, s78 :: v_dual_mov_b32 v2, v89
	v_dual_mov_b32 v1, v121 :: v_dual_mov_b32 v8, v122
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v36, 32, v119
	v_or_b32_e32 v9, 48, v119
	v_or_b32_e32 v38, 16, v119
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s69, s17, 0xffff
	s_mov_b32 s71, 0x31027000
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v36, s1, s78, v36
	v_add_co_u32 v9, s0, s78, v9
	v_add_co_ci_u32_e64 v37, null, s79, 0, s1
	v_add_co_u32 v38, s1, s78, v38
	v_add_co_ci_u32_e64 v10, null, s79, 0, s0
	v_add_co_ci_u32_e64 v39, null, s79, 0, s1
	v_add_co_u32 v40, s1, s78, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v41, null, s79, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[9:10]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[74:75], v[38:39]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s6, s[74:75], v[40:41]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[76:77], v[40:41]
	v_cmp_gt_i64_e64 s5, s[76:77], v[38:39]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[36:37]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[76:77], v[36:37]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v10, 1, v40
	v_lshlrev_b32_e32 v37, 1, v38
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s6, s7
	s_and_b32 s4, s4, s5
	s_and_b32 s1, s1, s3
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_cndmask_b32_e64 v10, 0x80000000, v10, s6
	v_cndmask_b32_e64 v37, 0x80000000, v37, s4
	.loc	1 1120 21                       ; ragged.py:1120:21
	s_mul_i32 s0, s72, s24
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e64 v36, 0x80000000, v36, s1
	s_mov_b32 s70, 0x7ffffffe
	s_mov_b32 s68, s16
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_add_lshl_u32 v2, v2, s0, 1
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_clause 0x3
	buffer_load_u16 v60, v10, s[68:71], 0 offen
	buffer_load_u16 v61, v37, s[68:71], 0 offen
	buffer_load_u16 v62, v36, s[68:71], 0 offen
	buffer_load_u16 v63, v9, s[68:71], 0 offen
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s69, s19, 0xffff
	s_mov_b32 s68, s18
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v10, 7, v120
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v64, v2, s[68:71], 0 offen
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v9, 63, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v36, 0xf0, v0
	v_lshlrev_b32_e32 v37, 5, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v38, 62, v10
	v_or_b32_e32 v39, 60, v10
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v89, 28, v1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s78, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v40, 58, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s79, 0, s0
	.loc	1 1122 17 is_stmt 1             ; ragged.py:1122:17
	v_lshl_add_u32 v105, v36, 2, 0
	v_lshl_add_u32 v106, v36, 1, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v36, s0, s78, v38
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v42, 56, v10
	.loc	1 1122 17 is_stmt 1             ; ragged.py:1122:17
	v_and_b32_e32 v104, 32, v37
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v37, null, s79, 0, s0
	v_add_co_u32 v38, s0, s78, v39
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v44, 54, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v39, null, s79, 0, s0
	v_add_co_u32 v40, s0, s78, v40
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v46, 52, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v41, null, s79, 0, s0
	v_add_co_u32 v42, s0, s78, v42
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v48, 50, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v43, null, s79, 0, s0
	v_add_co_u32 v44, s0, s78, v44
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v50, 48, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v45, null, s79, 0, s0
	v_add_co_u32 v46, s0, s78, v46
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v52, 46, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v47, null, s79, 0, s0
	v_add_co_u32 v48, s0, s78, v48
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v54, 44, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v49, null, s79, 0, s0
	v_add_co_u32 v50, s0, s78, v50
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v56, 42, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v51, null, s79, 0, s0
	v_add_co_u32 v52, s0, s78, v52
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v58, 40, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v53, null, s79, 0, s0
	v_add_co_u32 v54, s0, s78, v54
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v101, 38, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v55, null, s79, 0, s0
	v_add_co_u32 v56, s0, s78, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v57, null, s79, 0, s0
	v_add_co_u32 v58, s0, s78, v58
	v_add_co_ci_u32_e64 v59, null, s79, 0, s0
	v_add_co_u32 v101, s0, s78, v101
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v102, null, s79, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[36:37]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[76:77], v[36:37]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[38:39]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[76:77], v[38:39]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[40:41]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[76:77], v[40:41]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[44:45]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[44:45]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[74:75], v[46:47]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[46:47]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[74:75], v[54:55]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[54:55]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[42:43]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[42:43]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[74:75], v[48:49]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[48:49]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[74:75], v[50:51]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[50:51]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[74:75], v[52:53]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[52:53]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[74:75], v[56:57]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[56:57]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[74:75], v[58:59]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[76:77], v[58:59]
	.loc	1 1122 17 is_stmt 1             ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s26, 0x76543210
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v103, 36, v10
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[74:75], v[101:102]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s68, s72, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s72, s68
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	s_ashr_i32 s73, s68, 1
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v37, 16, v61
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v61, v78, v37 :: v_dual_lshlrev_b32 v36, 16, v60
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v43, v97, v36 :: v_dual_lshlrev_b32 v38, 16, v62
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v48, v92, v36 :: v_dual_lshlrev_b32 v39, 16, v63
	v_mul_f32_e32 v41, v99, v36
	v_mul_f32_e32 v44, v96, v36
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v89, v105, v104, v89
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v46, v94, v36
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v74, v74, v37 :: v_dual_lshlrev_b32 v55, 16, v64
	v_mul_f32_e32 v40, v100, v36
	v_mul_f32_e32 v42, v98, v36
	v_dual_mul_f32 v45, v95, v36 :: v_dual_mul_f32 v58, v81, v37
	v_dual_mul_f32 v47, v93, v36 :: v_dual_mul_f32 v60, v79, v37
	v_dual_mul_f32 v49, v91, v36 :: v_dual_mul_f32 v62, v77, v37
	v_dual_mul_f32 v50, v90, v36 :: v_dual_mul_f32 v63, v76, v37
	v_dual_mul_f32 v51, v88, v36 :: v_dual_mul_f32 v64, v75, v37
	v_dual_mul_f32 v52, v87, v36 :: v_dual_mul_f32 v73, v73, v37
	v_dual_mul_f32 v53, v86, v36 :: v_dual_mul_f32 v72, v72, v37
	v_dual_mul_f32 v54, v85, v36 :: v_dual_mul_f32 v71, v71, v37
	v_dual_mul_f32 v36, v84, v36 :: v_dual_mul_f32 v69, v69, v37
	v_mul_f32_e32 v56, v83, v37
	v_mul_f32_e32 v57, v82, v37
	v_mul_f32_e32 v59, v80, v37
	v_dual_mul_f32 v70, v70, v37 :: v_dual_mul_f32 v67, v67, v38
	v_dual_mul_f32 v37, v68, v37 :: v_dual_mul_f32 v68, v34, v38
	v_mul_f32_e32 v66, v66, v38
	v_dual_mul_f32 v65, v65, v38 :: v_dual_mul_f32 v22, v22, v39
	v_dual_mul_f32 v35, v35, v38 :: v_dual_mul_f32 v86, v18, v39
	v_dual_mul_f32 v75, v33, v38 :: v_dual_mul_f32 v16, v16, v39
	v_dual_mul_f32 v76, v32, v38 :: v_dual_mul_f32 v21, v21, v39
	v_dual_mul_f32 v77, v31, v38 :: v_dual_mul_f32 v14, v14, v39
	v_mul_f32_e32 v78, v30, v38
	v_dual_mul_f32 v79, v29, v38 :: v_dual_mul_f32 v12, v12, v39
	v_dual_mul_f32 v80, v28, v38 :: v_dual_mul_f32 v85, v19, v39
	v_dual_mul_f32 v81, v27, v38 :: v_dual_mul_f32 v6, v6, v39
	v_dual_mul_f32 v82, v26, v38 :: v_dual_mul_f32 v87, v17, v39
	v_dual_mul_f32 v83, v25, v38 :: v_dual_mul_f32 v4, v4, v39
	v_dual_mul_f32 v84, v24, v38 :: v_dual_mul_f32 v15, v15, v39
	v_dual_mul_f32 v38, v23, v38 :: v_dual_mul_f32 v13, v13, v39
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v89, v55
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v106
	ds_load_b128 v[27:30], v106 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v55, v20, v39
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[17:20], v106 offset:512
	ds_load_b128 v[31:34], v106 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v11, v11, v39
	v_mul_f32_e32 v5, v5, v39
	v_mul_f32_e32 v3, v3, v39
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v39, v40, v23 :: v_dual_mul_f32 v40, v41, v24
	v_dual_mul_f32 v41, v42, v25 :: v_dual_mul_f32 v42, v43, v26
	v_dual_mul_f32 v43, v44, v27 :: v_dual_mul_f32 v44, v45, v28
	v_dual_mul_f32 v45, v46, v29 :: v_dual_mul_f32 v46, v47, v30
	v_dual_mul_f32 v47, v48, v17 :: v_dual_mul_f32 v48, v49, v18
	v_dual_mul_f32 v49, v50, v19 :: v_dual_mul_f32 v36, v36, v34
	v_dual_mul_f32 v50, v51, v20 :: v_dual_mul_f32 v51, v52, v31
	v_dual_mul_f32 v52, v53, v32 :: v_dual_mul_f32 v53, v54, v33
	v_mul_f32_e32 v54, v56, v23
	v_dual_mul_f32 v56, v57, v24 :: v_dual_mul_f32 v57, v58, v25
	v_dual_mul_f32 v58, v59, v26 :: v_dual_mul_f32 v59, v60, v27
	v_dual_mul_f32 v60, v61, v28 :: v_dual_mul_f32 v61, v62, v29
	v_mul_f32_e32 v72, v72, v20
	v_dual_mul_f32 v62, v63, v30 :: v_dual_mul_f32 v63, v64, v17
	v_dual_mul_f32 v64, v74, v18 :: v_dual_mul_f32 v73, v73, v19
	v_dual_mul_f32 v70, v70, v32 :: v_dual_mul_f32 v71, v71, v31
	v_dual_mul_f32 v66, v66, v24 :: v_dual_mul_f32 v69, v69, v33
	v_dual_mul_f32 v68, v68, v27 :: v_dual_mul_f32 v37, v37, v34
	v_mul_f32_e32 v74, v75, v28
	v_mul_f32_e32 v67, v67, v23
	v_mul_f32_e32 v65, v65, v25
	v_mul_f32_e32 v35, v35, v26
	v_dual_mul_f32 v75, v76, v29 :: v_dual_mul_f32 v76, v77, v30
	v_dual_mul_f32 v77, v78, v17 :: v_dual_mul_f32 v78, v79, v18
	v_dual_mul_f32 v79, v80, v19 :: v_dual_mul_f32 v38, v38, v34
	v_dual_mul_f32 v80, v81, v20 :: v_dual_mul_f32 v81, v82, v31
	v_dual_mul_f32 v82, v83, v32 :: v_dual_mul_f32 v83, v84, v33
	v_dual_mul_f32 v22, v22, v23 :: v_dual_mul_f32 v21, v21, v24
	v_mul_f32_e32 v16, v16, v29
	v_dual_mul_f32 v23, v55, v25 :: v_dual_mul_f32 v12, v12, v19
	v_dual_mul_f32 v24, v85, v26 :: v_dual_mul_f32 v25, v86, v27
	v_mul_f32_e32 v4, v4, v33
	v_mul_f32_e32 v26, v87, v28
	v_dual_mul_f32 v15, v15, v30 :: v_dual_mul_f32 v14, v14, v17
	v_dual_mul_f32 v13, v13, v18 :: v_dual_mul_f32 v6, v6, v31
	v_dual_mul_f32 v11, v11, v20 :: v_dual_max_f32 v20, 0, v42
	v_dual_mul_f32 v5, v5, v32 :: v_dual_max_f32 v30, 0, v46
	v_dual_mul_f32 v3, v3, v34 :: v_dual_max_f32 v18, 0, v40
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v17, 0, v39 :: v_dual_max_f32 v28, 0, v44
	v_dual_max_f32 v19, 0, v41 :: v_dual_max_f32 v32, 0, v48
	v_dual_max_f32 v27, 0, v43 :: v_dual_max_f32 v34, 0, v50
	v_dual_max_f32 v29, 0, v45 :: v_dual_max_f32 v40, 0, v52
	v_dual_max_f32 v33, 0, v49 :: v_dual_max_f32 v42, 0, v54
	v_dual_max_f32 v39, 0, v51 :: v_dual_max_f32 v44, 0, v57
	v_dual_max_f32 v41, 0, v53 :: v_dual_max_f32 v48, 0, v59
	v_dual_max_f32 v43, 0, v56 :: v_dual_max_f32 v52, 0, v61
	v_dual_max_f32 v45, 0, v58 :: v_dual_max_f32 v56, 0, v63
	v_dual_max_f32 v49, 0, v60 :: v_dual_max_f32 v60, 0, v73
	v_dual_max_f32 v53, 0, v62 :: v_dual_max_f32 v84, 0, v71
	v_dual_max_f32 v57, 0, v64 :: v_dual_max_f32 v70, 0, v70
	v_dual_max_f32 v61, 0, v72 :: v_dual_max_f32 v86, 0, v67
	v_dual_max_f32 v85, 0, v69 :: v_dual_max_f32 v90, 0, v74
	v_dual_max_f32 v31, 0, v47 :: v_dual_max_f32 v36, 0, v36
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v92, 0, v76
	v_dual_max_f32 v87, 0, v66 :: v_dual_max_f32 v88, 0, v65
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v94, 0, v78
	v_dual_max_f32 v89, 0, v68 :: v_dual_max_f32 v98, 0, v82
	v_dual_max_f32 v91, 0, v75 :: v_dual_max_f32 v96, 0, v80
	v_dual_max_f32 v93, 0, v77 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v95, 0, v79 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v97, 0, v81 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v83, 0, v83 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v99, 0, v38 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v15, 0, v15 :: v_dual_mul_f32 v46, v17, v17
	v_dual_max_f32 v13, 0, v13 :: v_dual_mul_f32 v50, v19, v19
	v_dual_max_f32 v11, 0, v11 :: v_dual_mul_f32 v58, v29, v29
	v_dual_max_f32 v5, 0, v5 :: v_dual_mul_f32 v54, v27, v27
	v_dual_max_f32 v3, 0, v3 :: v_dual_mul_f32 v66, v33, v33
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v47, v18, v18 :: v_dual_mul_f32 v62, v31, v31
	v_dual_mul_f32 v51, v20, v20 :: v_dual_mul_f32 v80, v43, v43
	v_dual_mul_f32 v55, v28, v28 :: v_dual_mul_f32 v82, v45, v45
	v_dual_mul_f32 v59, v30, v30 :: v_dual_mul_f32 v72, v40, v40
	v_dual_mul_f32 v63, v32, v32 :: v_dual_mul_f32 v74, v53, v53
	v_dual_mul_f32 v67, v34, v34 :: v_dual_mul_f32 v76, v36, v36
	v_dual_mul_f32 v71, v39, v39 :: v_dual_mul_f32 v78, v48, v48
	v_dual_mul_f32 v75, v41, v41 :: v_dual_mul_f32 v68, v56, v56
	v_dual_mul_f32 v79, v42, v42 :: v_dual_mul_f32 v64, v60, v60
	v_dual_mul_f32 v77, v49, v49 :: v_dual_mul_f32 v60, v84, v84
	v_dual_mul_f32 v69, v57, v57 :: v_dual_mul_f32 v48, v88, v88
	v_dual_mul_f32 v65, v61, v61 :: v_dual_mul_f32 v42, v92, v92
	v_mul_f32_e32 v61, v70, v70
	v_dual_mul_f32 v57, v85, v85 :: v_dual_mul_f32 v38, v96, v96
	v_dual_mul_f32 v81, v44, v44 :: v_dual_mul_f32 v56, v37, v37
	v_dual_mul_f32 v73, v52, v52 :: v_dual_mul_f32 v52, v86, v86
	v_dual_mul_f32 v53, v87, v87 :: v_dual_mul_f32 v40, v93, v93
	v_dual_mul_f32 v49, v35, v35 :: v_dual_mul_f32 v36, v97, v97
	v_dual_mul_f32 v44, v89, v89 :: v_dual_mul_f32 v45, v90, v90
	v_mul_f32_e32 v34, v99, v99
	v_dual_mul_f32 v41, v91, v91 :: v_dual_mul_f32 v32, v22, v22
	v_dual_mul_f32 v39, v94, v94 :: v_dual_mul_f32 v30, v21, v21
	v_dual_mul_f32 v37, v95, v95 :: v_dual_mul_f32 v28, v25, v25
	v_mul_f32_e32 v35, v98, v98
	v_mul_f32_e32 v33, v83, v83
	v_dual_mul_f32 v31, v23, v23 :: v_dual_mul_f32 v22, v12, v12
	v_mul_f32_e32 v29, v24, v24
	v_dual_mul_f32 v27, v26, v26 :: v_dual_mul_f32 v18, v5, v5
	v_dual_mul_f32 v23, v16, v16 :: v_dual_mul_f32 v20, v3, v3
	v_dual_mul_f32 v24, v15, v15 :: v_dual_mul_f32 v25, v14, v14
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v79, v80
.Ltmp6:
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v26, v13, v13
	v_dual_mul_f32 v16, v11, v11 :: v_dual_mul_f32 v17, v6, v6
	v_mul_f32_e32 v19, v4, v4
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v46, v47
	v_max3_f32 v4, v51, v54, v55
	v_max3_f32 v6, v63, v66, v67
	v_max3_f32 v11, v71, v72, v75
	v_max3_f32 v13, v82, v78, v77
	v_max3_f32 v14, v69, v64, v65
	v_max3_f32 v15, v60, v61, v57
	v_max3_f32 v5, v58, v59, v62
	v_max3_f32 v3, v3, v50, v4
	v_max3_f32 v4, v6, v11, v76
	v_max3_f32 v6, v73, v74, v68
	v_max3_f32 v11, v12, v81, v13
	v_max3_f32 v12, v14, v15, v56
	v_max_f32_e32 v13, v52, v53
	v_max3_f32 v14, v49, v44, v45
	v_max3_f32 v15, v39, v37, v38
	v_max3_f32 v21, v36, v35, v33
	v_max3_f32 v3, v3, v5, v4
	v_max3_f32 v4, v11, v6, v12
	v_max3_f32 v5, v41, v42, v40
	v_max3_f32 v6, v13, v48, v14
	v_max3_f32 v11, v15, v21, v34
	v_max_f32_e32 v12, v32, v30
	v_max3_f32 v13, v29, v28, v27
	v_max3_f32 v14, v26, v22, v16
	v_max3_f32 v15, v17, v18, v19
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v21, v3, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v6, v5, v11
	v_max3_f32 v6, v23, v24, v25
	v_max3_f32 v11, v12, v31, v13
	v_max3_f32 v12, v14, v15, v20
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v14, v4, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v5, s26, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v70, 8, v0
	v_lshlrev_b32_e32 v86, 1, v120
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v11, v6, v12
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v13, v21, v21
	v_max_f32_e32 v15, v15, v15
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v21, 4, v0
	v_and_b32_e32 v12, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v14 :: v_dual_max_f32 v3, v3, v13
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v13, v6, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v15 :: v_dual_lshlrev_b32 v14, 4, v0
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v87, 3, v120
	v_lshl_add_u32 v88, v21, 6, 0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v13, v13
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v11, 3, v0
.Ltmp19:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s27, s78, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v84, null, s79, 0, s27
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v15, v11, 9, 0
	v_lshlrev_b32_e32 v43, 5, v11
.Ltmp22:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[74:75], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[76:77], v[83:84]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_mov_b16_e32 v90.h, 0
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v15, v21, 2, v15
	v_and_or_b32 v85, 0x680, v14, v43
	v_xor_b32_e32 v43, v43, v12
.Ltmp24:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v14, 0x2f0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v15, v70, 4, v15
	v_xor_b32_e32 v85, v85, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v13, v15, v86, v43
	v_add3_u32 v43, v88, v87, v85
.Ltmp26:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v15, 34, v10
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v13, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v43
.Ltmp28:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v13, 32, v10
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v85, s26, s78, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v86, null, s79, 0, s26
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v15, 30, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s31, s78, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v84, null, s79, 0, s31
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[74:75], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[76:77], v[85:86]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v85, s31, s78, v15
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v86, null, s79, 0, s31
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[74:75], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[76:77], v[83:84]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v43, 28, v10
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v84, v6, v6
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v4
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp32:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[74:75], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[76:77], v[85:86]
.Ltmp33:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp35:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v86, 24, v10
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v84, v6 :: v_dual_mov_b32 v13, v3
	v_max_f32_e32 v15, v15, v15
	v_max_f32_e32 v3, v3, v3
.Ltmp37:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[76:77], v[101:102]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v84, v6
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v15, v4, v15
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v13, v13
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v85, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v13, v3, v13
.Ltmp44:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s36, s78, v43
	v_add_co_ci_u32_e64 v4, null, s79, 0, s36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v85, v85 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[76:77], v[3:4]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v85, v85
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v83, v5 :: v_dual_max_f32 v4, v15, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v83, v83 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v15, v84, v84
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v85, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v83, v83, v83
	v_dual_max_f32 v6, v6, v15 :: v_dual_max_f32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v85, v85 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v83
	v_max_f32_e32 v87, v85, v85
.Ltmp54:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s39, s78, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v83, v5
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v87 :: v_dual_mov_b32 v43, v13
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v87, 1, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s79, 0, s39
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v12, 5, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[74:75], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[76:77], v[85:86]
.Ltmp61:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v43, v43
.Ltmp62:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v43, 26, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v13, v3
	v_max_f32_e32 v13, v83, v83
.Ltmp64:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s38, s78, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v84, null, s79, 0, s38
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v43, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v13
.Ltmp67:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[74:75], v[83:84]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v13, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v43, v43, v43
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v43
	v_max_f32_e32 v13, v13, v13
	v_max_f32_e32 v43, v15, v15
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v15, 4, v11
	v_lshlrev_b32_e32 v11, 3, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v13 :: v_dual_add_nc_u32 v70, 0, v120
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v13, 5, v21
	v_add_nc_u32_e32 v21, 0, v15
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v43, v70, v87, v11
.Ltmp77:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v70, 22, v10
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v11, v21, v13, v11
.Ltmp79:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v13, 18, v10
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v43, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v11
.Ltmp81:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 20, v10
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v87, s39, s78, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v88, null, s79, 0, s39
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[76:77], v[83:84]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s44, s78, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v84, null, s79, 0, s44
	v_add_co_u32 v85, s44, s78, v13
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v11, 16, v10
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s79, 0, s44
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[74:75], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[76:77], v[83:84]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v83, s48, s78, v11
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v3, v3, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[74:75], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[76:77], v[85:86]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s79, 0, s48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v13, 0x2b8cbccc, v3
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 14, v10
	v_or_b32_e32 v11, 12, v10
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[74:75], v[87:88]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[76:77], v[87:88]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v13
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v85, s48, s78, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v86, null, s79, 0, s48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v3, v21
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v87, s48, s78, v11
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v11, 10, v10
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v5, v5, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v88, null, s79, 0, s48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[74:75], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[76:77], v[83:84]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v83, s54, s78, v11
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v43, -v21, v3, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 8, v10
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v5, 0x2b8cbccc, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[74:75], v[85:86]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[76:77], v[85:86]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v3, v43, v3
	v_div_scale_f32 v43, vcc_lo, v13, 0x40e00000, v13
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s79, 0, s54
	v_add_co_u32 v85, s54, s78, v11
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v70, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s79, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v11, v43, v3 :: v_dual_max_f32 v4, v4, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[74:75], v[87:88]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[76:77], v[87:88]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[74:75], v[83:84]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v87, v70
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[76:77], v[83:84]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[74:75], v[85:86]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v83, -v21, v11, v43
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[76:77], v[85:86]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v85, 0x2b8cbccc, v4
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v84, 6, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v11, v83, v3
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v83, 0x2b8cbccc, v6
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v85
	v_fma_f32 v4, -v70, v87, 1.0
	v_fma_f32 v21, -v21, v11, v43
	v_div_scale_f32 v43, s60, v5, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v86, v6
	v_fmac_f32_e32 v87, v4, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v11, v21, v3, v11
	v_div_scale_f32 v88, null, 0x40e00000, 0x40e00000, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s58, s78, v84
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v21, v43, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v11, v11, 0x40e00000, v13
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v6, v86, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s79, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v13, -v70, v21, v43
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v86, v84, v86
	v_div_scale_f32 v84, s61, v85, 0x40e00000, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v21, v13, v87
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v13.l, v11.h
	v_mov_b16_e32 v13.h, v90.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v91, v84, v86
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[74:75], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v92, -v88, v89, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[76:77], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v70, v21, v43
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v13
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v13, -v6, v91, v84
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v43, s62, v83, 0x40e00000, v83
	v_div_fmas_f32 v3, v3, v87, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v13, v86
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v11, v11, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v13, v43, v89
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v3, v3, 0x40e00000, v5
	v_fma_f32 v5, -v6, v91, v84
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v84, 0xffff0000, v11
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v6, -v88, v13, v43
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 4, v10
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v90.l, v3.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v21, v5, v86, v91
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v86, null, v84, v84, v46
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v13, v6, v89
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s60, s78, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v87, v86
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v4, -v88, v13, v43
	v_div_fixup_f32 v43, v21, 0x40e00000, v85
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v84, v84, v47
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v70.h, v90.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v4, v4, v89, v13
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v13, 1, v90
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v88, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v86, v87, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v70.l, v43.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v83
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v89, vcc_lo, v46, v84, v46
	v_fmac_f32_e32 v87, v21, v87
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v3, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mov_b16_e32 v90.l, v4.h
	v_and_b32_e32 v13, 1, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v70, -v85, v88, 1.0
	v_mul_f32_e32 v91, v89, v87
	v_div_scale_f32 v92, null, v84, v84, v50
	v_div_scale_f32 v93, null, v84, v84, v51
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s79, 0, s60
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v83, 1, v90
	v_add3_u32 v13, v43, v13, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v43, -v86, v91, v89
	v_fmac_f32_e32 v88, v70, v88
	v_rcp_f32_e32 v90, v92
	v_div_scale_f32 v94, s60, v47, v84, v47
	v_rcp_f32_e32 v95, v93
	v_fmac_f32_e32 v91, v43, v87
	v_div_scale_f32 v99, null, v84, v84, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v96, v94, v88
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v4, v83, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v86, v91, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v97, -v92, v90, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v85, v96, v94
	v_fma_f32 v98, -v93, v95, 1.0
	v_div_fmas_f32 v86, v86, v87, v91
	v_fmac_f32_e32 v90, v97, v90
	v_div_scale_f32 v97, s61, v50, v84, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v96, v89, v88 :: v_dual_fmac_f32 v95, v98, v95
	v_rcp_f32_e32 v89, v99
	v_div_scale_f32 v98, null, v84, v84, v55
	v_mul_f32_e32 v87, v97, v90
	v_div_scale_f32 v91, s62, v51, v84, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v100, v98
	v_div_fixup_f32 v46, v86, v84, v46
	v_fma_f32 v85, -v85, v96, v94
	v_fma_f32 v86, -v92, v87, v97
	v_mul_f32_e32 v94, v91, v95
	v_fma_f32 v101, -v99, v89, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v70, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v85, v85, v88, v96
	v_fmac_f32_e32 v87, v86, v90
	v_fma_f32 v86, -v93, v94, v91
	v_fmac_f32_e32 v89, v101, v89
	v_div_scale_f32 v88, s60, v54, v84, v54
	v_fma_f32 v96, -v98, v100, 1.0
	v_div_fixup_f32 v47, v85, v84, v47
	v_fma_f32 v85, -v92, v87, v97
	v_fmac_f32_e32 v94, v86, v95
	v_mul_f32_e32 v86, v88, v89
	v_fmac_f32_e32 v100, v96, v100
	v_div_scale_f32 v96, null, v84, v84, v58
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v92, s63, v55, v84, v55
	v_div_fmas_f32 v85, v85, v90, v87
	v_fma_f32 v87, -v93, v94, v91
	v_fma_f32 v90, -v99, v86, v88
	v_rcp_f32_e32 v91, v96
	v_div_scale_f32 v97, null, v84, v84, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v93, v92, v100 :: v_dual_fmac_f32 v86, v90, v89
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v90, v97
	v_div_fmas_f32 v87, v87, v95, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v94, -v98, v93, v92
	v_div_fixup_f32 v50, v85, v84, v50
	v_fma_f32 v95, -v96, v91, 1.0
	v_fma_f32 v85, -v99, v86, v88
	v_div_fixup_f32 v51, v87, v84, v51
	v_fmac_f32_e32 v93, v94, v100
	v_div_scale_f32 v87, s61, v58, v84, v58
	v_fmac_f32_e32 v91, v95, v91
	v_fma_f32 v88, -v97, v90, 1.0
	v_div_scale_f32 v94, null, v84, v84, v62
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v95, null, v84, v84, v63
	v_div_fmas_f32 v85, v85, v89, v86
	v_fma_f32 v86, -v98, v93, v92
	v_dual_mul_f32 v89, v87, v91 :: v_dual_fmac_f32 v90, v88, v90
	v_rcp_f32_e32 v88, v94
	v_div_scale_f32 v92, s60, v59, v84, v59
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v54, v85, v84, v54
	v_div_fmas_f32 v86, v86, v100, v93
	v_fma_f32 v93, -v96, v89, v87
	v_mul_f32_e32 v98, v92, v90
	v_rcp_f32_e32 v100, v95
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v94, v88, 1.0
	v_fmac_f32_e32 v89, v93, v91
	v_fma_f32 v85, -v97, v98, v92
	v_div_scale_f32 v93, null, v84, v84, v66
	v_div_fixup_f32 v55, v86, v84, v55
	v_fmac_f32_e32 v88, v99, v88
	v_div_scale_f32 v86, s62, v62, v84, v62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v99, -v95, v100, 1.0
	v_fma_f32 v87, -v96, v89, v87
	v_fmac_f32_e32 v98, v85, v90
	v_rcp_f32_e32 v96, v93
	v_mul_f32_e32 v85, v86, v88
	v_fmac_f32_e32 v100, v99, v100
	v_div_scale_f32 v99, s63, v63, v84, v63
	v_div_fmas_f32 v87, v87, v91, v89
	v_fma_f32 v89, -v97, v98, v92
	v_div_scale_f32 v101, null, v84, v84, v67
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v91, -v94, v85, v86
	v_mul_f32_e32 v92, v99, v100
	v_fma_f32 v97, -v93, v96, 1.0
	v_div_fmas_f32 v89, v89, v90, v98
	v_rcp_f32_e32 v90, v101
	v_fmac_f32_e32 v85, v91, v88
	v_fma_f32 v91, -v95, v92, v99
	v_fmac_f32_e32 v96, v97, v96
	v_div_scale_f32 v97, s60, v66, v84, v66
	v_div_fixup_f32 v58, v87, v84, v58
	v_div_fixup_f32 v59, v89, v84, v59
	v_fma_f32 v86, -v94, v85, v86
	v_fmac_f32_e32 v92, v91, v100
	v_mul_f32_e32 v87, v97, v96
	v_fma_f32 v89, -v101, v90, 1.0
	v_div_scale_f32 v91, null, v84, v84, v71
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v94, s61, v67, v84, v67
	v_div_fmas_f32 v85, v86, v88, v85
	v_fma_f32 v86, -v95, v92, v99
	v_fma_f32 v88, -v93, v87, v97
	v_fmac_f32_e32 v90, v89, v90
	v_rcp_f32_e32 v89, v91
	v_div_scale_f32 v95, null, v84, v84, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v88, v96
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v62, v85, v84, v62
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v86, v86, v100, v92
	v_mul_f32_e32 v92, v94, v90
	v_fma_f32 v85, -v93, v87, v97
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v98, -v91, v89, 1.0
	v_div_scale_f32 v93, s62, v71, v84, v71
	v_div_fixup_f32 v63, v86, v84, v63
	v_fma_f32 v86, -v101, v92, v94
	v_fmac_f32_e32 v89, v98, v89
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v95, v88, 1.0
	v_div_scale_f32 v98, null, v84, v84, v75
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v92, v86, v90
	v_div_fmas_f32 v85, v85, v96, v87
	v_mul_f32_e32 v86, v93, v89
	v_fmac_f32_e32 v88, v97, v88
	v_rcp_f32_e32 v87, v98
	v_div_scale_f32 v96, s60, v72, v84, v72
	v_div_scale_f32 v97, null, v84, v84, v76
	v_div_fixup_f32 v66, v85, v84, v66
	v_fma_f32 v85, -v101, v92, v94
	v_fma_f32 v94, -v91, v86, v93
	v_mul_f32_e32 v99, v96, v88
	v_rcp_f32_e32 v100, v97
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v101, -v98, v87, 1.0
	v_div_fmas_f32 v85, v85, v90, v92
	v_fmac_f32_e32 v86, v94, v89
	v_fma_f32 v90, -v95, v99, v96
	v_div_scale_f32 v92, s61, v75, v84, v75
	v_fmac_f32_e32 v87, v101, v87
	v_div_fixup_f32 v67, v85, v84, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v97, v100, 1.0
	v_fma_f32 v85, -v91, v86, v93
	v_fmac_f32_e32 v99, v90, v88
	v_div_scale_f32 v93, null, v83, v83, v79
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v90, v92, v87
	v_fmac_f32_e32 v100, v94, v100
	v_div_scale_f32 v91, s63, v76, v84, v76
	v_div_fmas_f32 v85, v85, v89, v86
	v_fma_f32 v86, -v95, v99, v96
	v_rcp_f32_e32 v94, v93
	v_div_scale_f32 v96, null, v83, v83, v80
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v89, -v98, v90, v92
	v_mul_f32_e32 v95, v91, v100
	v_div_fmas_f32 v86, v86, v88, v99
	v_rcp_f32_e32 v88, v96
	v_div_fixup_f32 v71, v85, v84, v71
	v_fmac_f32_e32 v90, v89, v87
	v_fma_f32 v89, -v97, v95, v91
	v_fma_f32 v99, -v93, v94, 1.0
	v_div_fixup_f32 v72, v86, v84, v72
	v_div_scale_f32 v86, s60, v79, v83, v79
	v_fma_f32 v85, -v98, v90, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v95, v89, v100 :: v_dual_fmac_f32 v94, v99, v94
	v_fma_f32 v89, -v96, v88, 1.0
	v_div_scale_f32 v92, null, v83, v83, v81
	s_mov_b32 vcc_lo, s61
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_barrier
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v85, v85, v87, v90
	v_fma_f32 v87, -v97, v95, v91
	v_mul_f32_e32 v90, v86, v94
	v_fmac_f32_e32 v88, v89, v88
	v_rcp_f32_e32 v89, v92
	v_div_scale_f32 v91, s61, v80, v83, v80
	v_div_scale_f32 v97, null, v83, v83, v82
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v98, v91, v88
	v_div_fmas_f32 v87, v87, v100, v95
	v_fma_f32 v95, -v93, v90, v86
	v_rcp_f32_e32 v100, v97
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v92, v89, 1.0
	v_div_fixup_f32 v75, v85, v84, v75
	v_div_fixup_f32 v76, v87, v84, v76
	v_fmac_f32_e32 v90, v95, v94
	v_fma_f32 v84, -v96, v98, v91
	v_fmac_f32_e32 v89, v99, v89
	v_div_scale_f32 v85, s62, v81, v83, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v86, -v93, v90, v86
	v_fma_f32 v95, -v97, v100, 1.0
	v_fmac_f32_e32 v98, v84, v88
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v84, v85, v89
	v_div_fmas_f32 v86, v86, v94, v90
	v_fmac_f32_e32 v100, v95, v100
	v_div_scale_f32 v95, s63, v82, v83, v82
	v_fma_f32 v90, -v96, v98, v91
	v_div_scale_f32 v99, null, v83, v83, v77
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v91, -v92, v84, v85
	v_mul_f32_e32 v94, v95, v100
	v_div_fmas_f32 v88, v90, v88, v98
	v_rcp_f32_e32 v90, v99
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v84, v91, v89
	v_fma_f32 v91, -v97, v94, v95
	v_div_fixup_f32 v80, v88, v83, v80
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v21, 2, v10
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v3.l, v11.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v92, v84, v85
	v_fmac_f32_e32 v94, v91, v100
	v_div_scale_f32 v92, s61, v77, v83, v77
	v_fma_f32 v88, -v99, v90, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v84, v85, v89, v84
	v_fma_f32 v85, -v97, v94, v95
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v90, v88, v90
	v_div_fmas_f32 v85, v85, v100, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v94, v92, v90
	v_div_fixup_f32 v82, v85, v83, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v99, v94, v92
	v_fmac_f32_e32 v94, v85, v90
	v_div_scale_f32 v87, null, v83, v83, v78
	v_div_scale_f32 v91, null, v83, v83, v73
	v_div_fixup_f32 v79, v86, v83, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v93, v87
	v_div_scale_f32 v95, null, v83, v83, v74
	v_rcp_f32_e32 v88, v91
	v_div_fixup_f32 v81, v84, v83, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v96, -v87, v93, 1.0
	v_fma_f32 v97, -v91, v88, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v93, v96, v93
	v_div_scale_f32 v96, s60, v78, v83, v78
	v_fmac_f32_e32 v88, v97, v88
	v_div_scale_f32 v97, null, v83, v83, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v86, v96, v93
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v89, -v87, v86, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v89, v93
	v_rcp_f32_e32 v89, v95
	v_fma_f32 v84, -v87, v86, v96
	v_div_scale_f32 v87, s62, v73, v83, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v84, v84, v93, v86
	v_fma_f32 v96, -v95, v89, 1.0
	v_rcp_f32_e32 v86, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v85, v87, v88
	v_div_scale_f32 v93, s60, v74, v83, v74
	v_fmac_f32_e32 v89, v96, v89
	v_div_scale_f32 v96, null, v83, v83, v69
	v_div_fixup_f32 v78, v84, v83, v78
	v_fma_f32 v84, -v99, v94, v92
	v_fma_f32 v92, -v91, v85, v87
	v_mul_f32_e32 v98, v93, v89
	v_rcp_f32_e32 v99, v96
	v_fma_f32 v100, -v97, v86, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v43, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v90, v94
	v_fmac_f32_e32 v85, v92, v88
	v_fma_f32 v90, -v95, v98, v93
	v_fmac_f32_e32 v86, v100, v86
	v_div_scale_f32 v92, s61, v68, v83, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v96, v99, 1.0
	v_div_fixup_f32 v77, v84, v83, v77
	v_fma_f32 v84, -v91, v85, v87
	v_dual_fmac_f32 v98, v90, v89 :: v_dual_mul_f32 v87, v92, v86
	v_div_scale_f32 v91, null, v83, v83, v64
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v99, v94, v99
	v_div_scale_f32 v90, s63, v69, v83, v69
	v_div_fmas_f32 v84, v84, v88, v85
	v_fma_f32 v85, -v95, v98, v93
	v_fma_f32 v88, -v97, v87, v92
	v_rcp_f32_e32 v93, v91
	v_div_scale_f32 v95, null, v83, v83, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v94, v90, v99 :: v_dual_fmac_f32 v87, v88, v86
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v85, v85, v89, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v89, -v96, v94, v90
	v_div_fixup_f32 v73, v84, v83, v73
	v_fma_f32 v98, -v91, v93, 1.0
	v_fma_f32 v84, -v97, v87, v92
	v_div_fixup_f32 v74, v85, v83, v74
	v_fmac_f32_e32 v94, v89, v99
	v_div_scale_f32 v85, s60, v64, v83, v64
	v_fmac_f32_e32 v93, v98, v93
	v_fma_f32 v89, -v95, v88, 1.0
	v_div_scale_f32 v92, null, v83, v83, v60
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v100, null, v83, v83, v56
	v_div_fmas_f32 v84, v84, v86, v87
	v_fma_f32 v86, -v96, v94, v90
	v_mul_f32_e32 v87, v85, v93
	v_fmac_f32_e32 v88, v89, v88
	v_rcp_f32_e32 v89, v92
	v_div_scale_f32 v90, s61, v65, v83, v65
	v_div_scale_f32 v96, null, v83, v83, v61
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v97, v90, v88
	v_div_fmas_f32 v86, v86, v99, v94
	v_fma_f32 v94, -v91, v87, v85
	v_rcp_f32_e32 v99, v96
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v92, v89, 1.0
	v_div_fixup_f32 v68, v84, v83, v68
	v_fma_f32 v84, -v95, v97, v90
	v_fmac_f32_e32 v87, v94, v93
	v_div_fixup_f32 v69, v86, v83, v69
	v_fmac_f32_e32 v89, v98, v89
	v_div_scale_f32 v86, s62, v60, v83, v60
	v_div_scale_f32 v94, null, v83, v83, v57
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v98, -v96, v99, 1.0
	v_fma_f32 v85, -v91, v87, v85
	v_fmac_f32_e32 v97, v84, v88
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v84, v86, v89
	v_rcp_f32_e32 v91, v94
	v_fmac_f32_e32 v99, v98, v99
	v_div_scale_f32 v98, s63, v61, v83, v61
	v_div_fmas_f32 v85, v85, v93, v87
	v_fma_f32 v87, -v95, v97, v90
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v90, -v92, v84, v86
	v_mul_f32_e32 v93, v98, v99
	v_div_fixup_f32 v64, v85, v83, v64
	v_div_fmas_f32 v87, v87, v88, v97
	v_rcp_f32_e32 v88, v100
	v_fma_f32 v95, -v94, v91, 1.0
	v_fmac_f32_e32 v84, v90, v89
	v_fma_f32 v90, -v96, v93, v98
	v_div_fixup_f32 v65, v87, v83, v65
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s60, v57, v83, v57
	v_fmac_f32_e32 v93, v90, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v100, v88, 1.0
	v_div_scale_f32 v90, null, v70, v70, v52
	v_fma_f32 v85, -v92, v84, v86
	v_mul_f32_e32 v86, v95, v91
	v_fmac_f32_e32 v88, v87, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v92, s61, v56, v83, v56
	v_div_fmas_f32 v84, v85, v89, v84
	v_fma_f32 v85, -v96, v93, v98
	v_fma_f32 v89, -v94, v86, v95
	v_div_scale_f32 v96, null, v70, v70, v53
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v60, v84, v83, v60
	v_fmac_f32_e32 v86, v89, v91
	v_rcp_f32_e32 v89, v96
	v_fma_f32 v97, -v90, v87, 1.0
	v_div_fmas_f32 v85, v85, v99, v93
	v_mul_f32_e32 v93, v92, v88
	v_fma_f32 v84, -v94, v86, v95
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v97, null, v70, v70, v48
	v_div_fixup_f32 v61, v85, v83, v61
	v_fma_f32 v85, -v100, v93, v92
	v_div_scale_f32 v94, s62, v52, v70, v52
	v_fma_f32 v95, -v96, v89, 1.0
	v_div_fmas_f32 v84, v84, v91, v86
	v_rcp_f32_e32 v86, v97
	v_fmac_f32_e32 v93, v85, v88
	v_mul_f32_e32 v85, v94, v87
	v_fmac_f32_e32 v89, v95, v89
	v_div_scale_f32 v91, s60, v53, v70, v53
	v_div_scale_f32 v95, null, v70, v70, v49
	v_div_fixup_f32 v57, v84, v83, v57
	v_fma_f32 v84, -v100, v93, v92
	v_fma_f32 v92, -v90, v85, v94
	v_mul_f32_e32 v98, v91, v89
	v_rcp_f32_e32 v99, v95
	v_fma_f32 v100, -v97, v86, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v85, v92, v87
	v_div_fmas_f32 v84, v84, v88, v93
	v_fma_f32 v88, -v96, v98, v91
	v_fmac_f32_e32 v86, v100, v86
	v_div_scale_f32 v92, s61, v48, v70, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v56, v84, v83, v56
	v_fma_f32 v93, -v95, v99, 1.0
	v_fma_f32 v83, -v90, v85, v94
	v_fmac_f32_e32 v98, v88, v89
	v_mul_f32_e32 v84, v92, v86
	v_div_scale_f32 v90, null, v70, v70, v44
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v99, v93, v99
	v_div_scale_f32 v88, s63, v49, v70, v49
	v_div_fmas_f32 v83, v83, v87, v85
	v_fma_f32 v85, -v96, v98, v91
	v_fma_f32 v87, -v97, v84, v92
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v94, null, v70, v70, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v93, v88, v99 :: v_dual_fmac_f32 v84, v87, v86
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v87, v94
	v_div_fmas_f32 v85, v85, v89, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v89, -v95, v93, v88
	v_div_fixup_f32 v52, v83, v70, v52
	v_fma_f32 v96, -v90, v91, 1.0
	v_fma_f32 v83, -v97, v84, v92
	v_div_fixup_f32 v53, v85, v70, v53
	v_fmac_f32_e32 v93, v89, v99
	v_div_scale_f32 v85, s60, v44, v70, v44
	v_fmac_f32_e32 v91, v96, v91
	v_fma_f32 v89, -v94, v87, 1.0
	v_div_scale_f32 v92, null, v70, v70, v41
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v86, v84
	v_fma_f32 v84, -v95, v93, v88
	v_mul_f32_e32 v86, v85, v91
	v_fmac_f32_e32 v87, v89, v87
	v_rcp_f32_e32 v88, v92
	v_div_scale_f32 v89, s61, v45, v70, v45
	v_div_scale_f32 v95, null, v70, v70, v42
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v96, v89, v87
	v_div_fmas_f32 v84, v84, v99, v93
	v_fma_f32 v93, -v90, v86, v85
	v_rcp_f32_e32 v98, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v92, v88, 1.0
	v_div_fixup_f32 v48, v83, v70, v48
	v_fma_f32 v83, -v94, v96, v89
	v_fmac_f32_e32 v86, v93, v91
	v_div_scale_f32 v93, null, v70, v70, v40
	v_div_fixup_f32 v49, v84, v70, v49
	v_fmac_f32_e32 v88, v97, v88
	v_div_scale_f32 v84, s62, v41, v70, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v95, v98, 1.0
	v_fma_f32 v85, -v90, v86, v85
	v_fmac_f32_e32 v96, v83, v87
	v_rcp_f32_e32 v90, v93
	s_mov_b32 vcc_lo, s60
	v_dual_mul_f32 v83, v84, v88 :: v_dual_fmac_f32 v98, v97, v98
	v_div_scale_f32 v97, s63, v42, v70, v42
	v_div_fmas_f32 v85, v85, v91, v86
	v_fma_f32 v86, -v94, v96, v89
	v_div_scale_f32 v99, null, v70, v70, v39
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v89, -v92, v83, v84
	v_mul_f32_e32 v91, v97, v98
	v_fma_f32 v94, -v93, v90, 1.0
	v_div_fmas_f32 v86, v86, v87, v96
	v_rcp_f32_e32 v87, v99
	v_fmac_f32_e32 v83, v89, v88
	v_fma_f32 v89, -v95, v91, v97
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s60, v40, v70, v40
	v_div_fixup_f32 v44, v85, v70, v44
	v_div_fixup_f32 v45, v86, v70, v45
	v_fma_f32 v84, -v92, v83, v84
	v_fmac_f32_e32 v91, v89, v98
	v_mul_f32_e32 v85, v94, v90
	v_fma_f32 v86, -v99, v87, 1.0
	v_div_scale_f32 v89, null, v70, v70, v37
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v92, s61, v39, v70, v39
	v_div_fmas_f32 v83, v84, v88, v83
	v_fma_f32 v84, -v95, v91, v97
	v_fma_f32 v88, -v93, v85, v94
	v_fmac_f32_e32 v87, v86, v87
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v95, null, v70, v70, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v88, v90
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v41, v83, v70, v41
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v84, v84, v98, v91
	v_mul_f32_e32 v91, v92, v87
	v_fma_f32 v83, -v93, v85, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v89, v86, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v42, v84, v70, v42
	v_fma_f32 v84, -v99, v91, v92
	v_div_scale_f32 v93, s62, v37, v70, v37
	v_fmac_f32_e32 v86, v96, v86
	v_fma_f32 v94, -v95, v88, 1.0
	v_div_scale_f32 v96, null, v70, v70, v36
	v_div_fmas_f32 v83, v83, v90, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v84, v87 :: v_dual_fmac_f32 v88, v94, v88
	v_rcp_f32_e32 v85, v96
	v_div_scale_f32 v94, null, v70, v70, v35
	v_mul_f32_e32 v84, v93, v86
	v_div_scale_f32 v90, s60, v38, v70, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v98, v94
	v_div_fixup_f32 v40, v83, v70, v40
	v_fma_f32 v83, -v99, v91, v92
	v_fma_f32 v92, -v89, v84, v93
	v_mul_f32_e32 v97, v90, v88
	v_fma_f32 v99, -v96, v85, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v87, v91
	v_fmac_f32_e32 v84, v92, v86
	v_fma_f32 v87, -v95, v97, v90
	v_fmac_f32_e32 v85, v99, v85
	v_div_scale_f32 v91, s61, v36, v70, v36
	v_fma_f32 v92, -v94, v98, 1.0
	v_div_fixup_f32 v39, v83, v70, v39
	v_fma_f32 v83, -v89, v84, v93
	v_fmac_f32_e32 v97, v87, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v87, v91, v85 :: v_dual_fmac_f32 v98, v92, v98
	v_div_scale_f32 v92, null, v70, v70, v33
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v89, s63, v35, v70, v35
	v_div_fmas_f32 v83, v83, v86, v84
	v_fma_f32 v84, -v95, v97, v90
	v_fma_f32 v86, -v96, v87, v91
	v_rcp_f32_e32 v90, v92
	v_div_scale_f32 v95, null, v70, v70, v34
	v_mul_f32_e32 v93, v89, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v86, v85
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v86, v95
	v_div_fmas_f32 v84, v84, v88, v97
	v_fma_f32 v88, -v94, v93, v89
	v_div_fixup_f32 v37, v83, v70, v37
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v92, v90, 1.0
	v_fma_f32 v83, -v96, v87, v91
	v_div_fixup_f32 v38, v84, v70, v38
	v_fmac_f32_e32 v93, v88, v98
	v_div_scale_f32 v84, s60, v33, v70, v33
	v_fmac_f32_e32 v90, v97, v90
	v_fma_f32 v88, -v95, v86, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v96, null, v43, v43, v30
	v_div_fmas_f32 v83, v83, v85, v87
	v_fma_f32 v85, -v94, v93, v89
	v_mul_f32_e32 v87, v84, v90
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, null, v43, v43, v32
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v89, s61, v34, v70, v34
	v_div_fmas_f32 v85, v85, v98, v93
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v93, -v92, v87, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v94, v89, v86
	v_div_fixup_f32 v36, v83, v70, v36
	v_div_fixup_f32 v35, v85, v70, v35
	v_rcp_f32_e32 v85, v96
	v_fmac_f32_e32 v87, v93, v90
	v_fma_f32 v83, -v95, v94, v89
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v98, null, v43, v43, v29
	v_fma_f32 v93, -v88, v91, 1.0
	v_fma_f32 v84, -v92, v87, v84
	v_div_scale_f32 v92, null, v43, v43, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v83, v86 :: v_dual_fmac_f32 v91, v93, v91
	v_div_scale_f32 v83, s62, v32, v43, v32
	v_rcp_f32_e32 v93, v92
	v_fma_f32 v97, -v96, v85, 1.0
	v_div_fmas_f32 v84, v84, v90, v87
	v_fma_f32 v87, -v95, v94, v89
	v_mul_f32_e32 v89, v83, v91
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v85, v97, v85
	v_div_scale_f32 v90, s60, v30, v43, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v97, -v88, v89, v83
	v_fma_f32 v95, -v92, v93, 1.0
	v_rcp_f32_e32 v100, v98
	v_div_fmas_f32 v86, v87, v86, v94
	v_mul_f32_e32 v99, v90, v85
	v_fmac_f32_e32 v89, v97, v91
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v95, s63, v31, v43, v31
	v_div_fixup_f32 v33, v84, v70, v33
	v_div_fixup_f32 v34, v86, v70, v34
	v_fma_f32 v70, -v88, v89, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v94, v95, v93
	v_div_scale_f32 v86, null, v43, v43, v28
	v_fma_f32 v87, -v96, v99, v90
	v_fma_f32 v84, -v98, v100, 1.0
	v_fma_f32 v83, -v92, v94, v95
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v99, v87, v85 :: v_dual_fmac_f32 v100, v84, v100
	v_fmac_f32_e32 v94, v83, v93
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v84, s61, v29, v43, v29
	v_div_fmas_f32 v70, v70, v91, v89
	v_fma_f32 v87, -v96, v99, v90
	v_div_scale_f32 v89, null, v43, v43, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v88, v84, v100
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v32, v70, v43, v32
	v_fma_f32 v90, -v86, v83, 1.0
	v_div_fmas_f32 v85, v87, v85, v99
	v_fma_f32 v87, -v92, v94, v95
	v_rcp_f32_e32 v91, v89
	v_fma_f32 v92, -v98, v88, v84
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v90, s60, v28, v43, v28
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v88, v92, v100
	v_div_fmas_f32 v87, v87, v93, v94
	v_mul_f32_e32 v70, v90, v83
	v_div_fixup_f32 v30, v85, v43, v30
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v89, v91, 1.0
	v_fma_f32 v84, -v98, v88, v84
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v92, -v86, v70, v90
	v_div_fixup_f32 v31, v87, v43, v31
	v_div_scale_f32 v87, null, v43, v43, v23
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v85, s62, v27, v43, v27
	v_div_fmas_f32 v84, v84, v100, v88
	v_fmac_f32_e32 v70, v92, v83
	v_rcp_f32_e32 v93, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v88, v85, v91
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v29, v84, v43, v29
	v_fma_f32 v84, -v86, v70, v90
	v_div_scale_f32 v92, null, v43, v43, v24
	v_fma_f32 v86, -v89, v88, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v84, v83, v70
	v_div_scale_f32 v83, null, v43, v43, v25
	v_fma_f32 v90, -v87, v93, 1.0
	v_rcp_f32_e32 v94, v92
	v_fmac_f32_e32 v88, v86, v91
	v_rcp_f32_e32 v86, v83
	v_div_scale_f32 v84, s60, v23, v43, v23
	v_fmac_f32_e32 v93, v90, v93
	v_div_scale_f32 v90, null, v43, v43, v26
	v_div_fixup_f32 v28, v70, v43, v28
	v_fma_f32 v85, -v89, v88, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v92, v94, 1.0
	v_rcp_f32_e32 v96, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v83, v86, 1.0
	v_mul_f32_e32 v89, v84, v93
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v94, v70, v94
	v_div_scale_f32 v70, s61, v24, v43, v24
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v95, null, v43, v43, v22
	v_div_fmas_f32 v85, v85, v91, v88
	v_fma_f32 v88, -v87, v89, v84
	v_mul_f32_e32 v91, v70, v94
	v_div_scale_f32 v97, s62, v25, v43, v25
	v_fma_f32 v98, -v90, v96, 1.0
	v_rcp_f32_e32 v99, v95
	v_fmac_f32_e32 v89, v88, v93
	v_fma_f32 v88, -v92, v91, v70
	v_mul_f32_e32 v100, v97, v86
	v_fmac_f32_e32 v96, v98, v96
	v_div_scale_f32 v98, s63, v26, v43, v26
	v_div_fixup_f32 v27, v85, v43, v27
	v_fma_f32 v84, -v87, v89, v84
	v_fmac_f32_e32 v91, v88, v94
	v_fma_f32 v85, -v83, v100, v97
	v_mul_f32_e32 v87, v98, v96
	v_fma_f32 v88, -v95, v99, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v70, -v92, v91, v70
	v_fmac_f32_e32 v100, v85, v86
	v_fma_f32 v85, -v90, v87, v98
	v_fmac_f32_e32 v99, v88, v99
	v_div_scale_f32 v88, s60, v22, v43, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v83, v100, v97
	v_fmac_f32_e32 v87, v85, v96
	v_div_fmas_f32 v84, v84, v93, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v85, v88, v99
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v89, null, v43, v43, v16
	v_div_fmas_f32 v70, v70, v94, v91
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v23, v84, v43, v23
	v_div_fmas_f32 v83, v83, v86, v100
	v_fma_f32 v86, -v90, v87, v98
	v_fma_f32 v90, -v95, v85, v88
	v_rcp_f32_e32 v91, v89
	v_div_fixup_f32 v24, v70, v43, v24
	v_div_fixup_f32 v25, v83, v43, v25
	v_div_scale_f32 v83, null, v43, v43, v17
	v_fmac_f32_e32 v85, v90, v99
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v93, null, v43, v43, v20
	v_div_fmas_f32 v86, v86, v96, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v70, -v95, v85, v88
	v_fma_f32 v84, -v89, v91, 1.0
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v95, v93
	v_div_fixup_f32 v26, v86, v43, v26
	v_div_fmas_f32 v70, v70, v99, v85
	v_rcp_f32_e32 v85, v83
	v_fmac_f32_e32 v91, v84, v91
	v_div_scale_f32 v84, null, v43, v43, v18
	v_div_scale_f32 v86, null, v43, v43, v19
	v_div_scale_f32 v87, vcc_lo, v16, v43, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v88, v84
	v_rcp_f32_e32 v90, v86
	v_div_fixup_f32 v22, v70, v43, v22
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v70, -v83, v85, 1.0
	v_mul_f32_e32 v92, v87, v91
	v_fma_f32 v99, -v93, v95, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v70, v85
	v_div_scale_f32 v70, s60, v17, v43, v17
	v_fma_f32 v94, -v84, v88, 1.0
	v_fma_f32 v97, -v86, v90, 1.0
	v_fma_f32 v96, -v89, v92, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v98, v70, v85 :: v_dual_fmac_f32 v95, v99, v95
	v_fmac_f32_e32 v88, v94, v88
	v_div_scale_f32 v94, s61, v18, v43, v18
	v_fmac_f32_e32 v90, v97, v90
	v_div_scale_f32 v97, s62, v19, v43, v19
	v_fmac_f32_e32 v92, v96, v91
	v_fma_f32 v96, -v83, v98, v70
	v_div_scale_f32 v99, s63, v20, v43, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v100, v94, v88 :: v_dual_mul_f32 v101, v97, v90
	v_fmac_f32_e32 v98, v96, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v102, v99, v95
	v_fma_f32 v87, -v89, v92, v87
	v_fma_f32 v89, -v84, v100, v94
	v_fma_f32 v96, -v86, v101, v97
	v_fma_f32 v70, -v83, v98, v70
	v_fma_f32 v83, -v93, v102, v99
	v_div_fmas_f32 v87, v87, v91, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v100, v89, v88 :: v_dual_fmac_f32 v101, v96, v90
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v102, v83, v95
	v_div_fmas_f32 v70, v70, v85, v98
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v84, -v84, v100, v94
	v_fma_f32 v83, -v86, v101, v97
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v85, -v93, v102, v99
	v_div_fixup_f32 v16, v87, v43, v16
	v_div_fmas_f32 v84, v84, v88, v100
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v17, v70, v43, v17
	v_div_fmas_f32 v83, v83, v90, v101
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v18, v84, v43, v18
	v_div_fmas_f32 v85, v85, v95, v102
	s_mov_b32 s60, 0xc1000000
	v_div_fixup_f32 v19, v83, v43, v19
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v74, v74, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v72
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v20, v85, v43, v20
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v46
	v_rndne_f32_e32 v46, v47
	v_rndne_f32_e32 v47, v50
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v54
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v58
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v47, v47, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v62
	v_rndne_f32_e32 v62, v63
	v_rndne_f32_e32 v63, v66
	v_rndne_f32_e32 v66, v67
	v_rndne_f32_e32 v67, v71
	v_rndne_f32_e32 v71, v75
	v_rndne_f32_e32 v72, v76
	v_rndne_f32_e32 v76, v80
	v_rndne_f32_e32 v80, v82
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v24, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v26, v26, s60, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v82, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_med3_f32 v24, v24, s60, 0x40e00000
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v99, v26
	v_and_b32_e32 v26, 15, v47
	v_and_b32_e32 v47, 15, v82
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v82, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v79
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v84, v40
	v_cvt_i32_f32_e32 v90, v32
	v_cvt_i32_f32_e32 v97, v24
	v_and_b32_e32 v24, 15, v53
	v_and_b32_e32 v32, 15, v49
	v_and_b32_e32 v40, 15, v45
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v45, 13, v0
	v_lshlrev_b32_e32 v49, 8, v82
	v_and_b32_e32 v53, 64, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v78, v78
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_cvt_i32_f32_e32 v100, v22
	v_and_b32_e32 v22, 15, v46
	v_and_b32_e32 v46, 15, v58
	v_and_b32_e32 v58, 15, v63
	v_and_b32_e32 v74, 15, v71
	v_and_b32_e32 v63, 15, v65
	v_and_b32_e32 v71, 15, v61
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v61, 3, v120
	v_and_or_b32 v65, 0xe000, v45, v49
	v_xor_b32_e32 v14, v14, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v78, v78, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v83, v42
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v14, v65, v61, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v79, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v81, v78
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v94, v28
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_cvt_i32_f32_e32 v101, v16
	v_cvt_i32_f32_e32 v102, v17
	v_cvt_i32_f32_e32 v103, v18
	v_cvt_i32_f32_e32 v104, v19
	v_and_b32_e32 v16, 15, v43
	v_and_b32_e32 v17, 15, v75
	v_and_b32_e32 v18, 15, v52
	v_and_b32_e32 v28, 15, v48
	v_and_b32_e32 v48, 15, v83
	v_and_b32_e32 v19, 15, v90
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v83, 0, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v86, v38
	v_cvt_i32_f32_e32 v87, v36
	v_cvt_i32_f32_e32 v88, v35
	v_cvt_i32_f32_e32 v89, v34
	v_and_b32_e32 v34, 15, v51
	v_and_b32_e32 v38, 15, v54
	v_and_b32_e32 v54, 15, v62
	v_and_b32_e32 v62, 15, v66
	v_and_b32_e32 v66, 15, v67
	v_and_b32_e32 v35, 15, v81
	v_and_b32_e32 v67, 15, v60
	v_and_b32_e32 v36, 15, v44
	v_and_b32_e32 v60, 15, v37
	v_and_b32_e32 v37, 15, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v25, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v20, v20
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v83, v[16:19]
	ds_store_b128 v83, v[34:37] offset:256
	v_lshlrev_b32_e32 v17, 6, v0
	v_cndmask_b32_e64 v18, 0x2010, 0, s2
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v29, v29
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v79, v79, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v25, v25, s60, 0x40e00000
	v_and_b32_e32 v81, 15, v20
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v20, 2, v82
	v_and_or_b32 v12, 0x300, v17, v12
	v_xor_b32_e32 v15, v18, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v80, v80, s60, 0x40e00000
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_med3_f32 v23, v23, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v79, v79
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v85, v39
	v_cvt_i32_f32_e32 v91, v30
	v_cvt_i32_f32_e32 v92, v31
	v_cvt_i32_f32_e32 v98, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v12, v15, v12, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v80, v80
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v95, v27
	v_cvt_i32_f32_e32 v96, v23
	v_cvt_i32_f32_e32 v93, v29
	v_and_b32_e32 v30, 15, v50
	v_and_b32_e32 v42, 15, v55
	v_and_b32_e32 v50, 15, v59
	v_and_b32_e32 v23, 15, v76
	v_and_b32_e32 v27, 15, v79
	v_and_b32_e32 v51, 15, v68
	v_and_b32_e32 v55, 15, v69
	v_and_b32_e32 v59, 15, v64
	v_and_b32_e32 v75, 15, v57
	v_and_b32_e32 v79, 15, v56
	v_and_b32_e32 v52, 15, v84
	v_and_b32_e32 v56, 15, v85
	v_and_b32_e32 v64, 15, v86
	v_and_b32_e32 v25, 15, v91
	v_and_b32_e32 v29, 15, v92
	v_and_b32_e32 v53, 15, v98
	v_and_b32_e32 v57, 15, v99
	v_and_b32_e32 v61, 15, v100
	v_and_b32_e32 v65, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v16, v14, 16, 0
	v_xad_u32 v19, v14, 32, 0
	v_xad_u32 v14, v14, 48, 0
	v_add_nc_u32_e32 v18, 0, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v70, 15, v70
	v_and_b32_e32 v78, 15, v72
	v_and_b32_e32 v31, 15, v80
	v_and_b32_e32 v39, 15, v77
	v_and_b32_e32 v43, 15, v73
	v_and_b32_e32 v44, 15, v41
	v_and_b32_e32 v68, 15, v87
	v_and_b32_e32 v72, 15, v88
	v_and_b32_e32 v76, 15, v33
	v_and_b32_e32 v80, 15, v89
	v_and_b32_e32 v41, 15, v95
	v_and_b32_e32 v45, 15, v96
	v_and_b32_e32 v69, 15, v102
	v_and_b32_e32 v73, 15, v103
	v_and_b32_e32 v77, 15, v104
	v_and_b32_e32 v33, 15, v93
	v_and_b32_e32 v49, 15, v97
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v83, v[50:53] offset:2048
	ds_store_b128 v83, v[66:69] offset:2304
	ds_store_b128 v16, v[22:25]
	ds_store_b128 v16, v[38:41] offset:256
	ds_store_b128 v16, v[54:57] offset:2048
	ds_store_b128 v16, v[70:73] offset:2304
	ds_store_b128 v19, v[26:29]
	ds_store_b128 v19, v[42:45] offset:256
	ds_store_b128 v19, v[58:61] offset:2048
	ds_store_b128 v19, v[74:77] offset:2304
	ds_store_b128 v14, v[30:33]
	ds_store_b128 v14, v[46:49] offset:256
	ds_store_b128 v14, v[62:65] offset:2048
	ds_store_b128 v14, v[78:81] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[14:17], v18
	ds_load_b128 v[22:25], v18 offset:128
	ds_load_b128 v[26:29], v18 offset:4096
	ds_load_b128 v[30:33], v18 offset:4224
	v_xad_u32 v18, 0x8040, v12, 0
	v_xad_u32 v19, 0x4020, v12, 0
	v_xad_u32 v12, 0xc060, v12, 0
	ds_load_b128 v[50:53], v18
	ds_load_b128 v[54:57], v18 offset:128
	ds_load_b128 v[58:61], v18 offset:4096
	ds_load_b128 v[62:65], v18 offset:4224
	ds_load_b128 v[66:69], v12 offset:4096
	ds_load_b128 v[70:73], v12
	ds_load_b128 v[74:77], v12 offset:128
	ds_load_b128 v[78:81], v12 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v18, s2, s78, v21
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[34:37], v19
	ds_load_b128 v[38:41], v19 offset:128
	ds_load_b128 v[42:45], v19 offset:4096
	ds_load_b128 v[46:49], v19 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v19, null, s79, 0, s2
	v_add_co_u32 v20, s2, s78, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s79, 0, s2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[76:77], v[5:6]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, v10, v7
	v_lshl_or_b32 v5, s80, 7, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[74:75], v[18:19]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v52, v60, 4, v52
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[76:77], v[18:19]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v59, v67, 4, v71
	v_lshl_or_b32 v71, v28, 4, v16
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 2, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v60, v68, 4, v72
	v_lshl_or_b32 v72, v29, 4, v17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 4, v6
	v_add_nc_u32_e32 v18, 6, v6
	v_add_nc_u32_e32 v19, 8, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[74:75], v[20:21]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[76:77], v[20:21]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v12, v26, 4, v14
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v70, v27, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 10, v6
	v_mad_u64_u32 v[14:15], null, v6, s73, v[5:6]
	v_add_nc_u32_e32 v21, 12, v6
	v_mad_u64_u32 v[15:16], null, v16, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v30, 4, v22
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 14, v6
	v_mad_u64_u32 v[16:17], null, v17, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v31, 4, v23
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v23, 16, v6
	v_mad_u64_u32 v[17:18], null, v18, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v68, v32, 4, v24
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v24, 18, v6
	v_mad_u64_u32 v[18:19], null, v19, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
	v_lshl_or_b32 v61, v69, 4, v73
	v_lshl_or_b32 v69, v33, 4, v25
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v25, 20, v6
	v_mad_u64_u32 v[19:20], null, v20, s73, v[5:6]
	v_add_nc_u32_e32 v26, 22, v6
	v_mad_u64_u32 v[20:21], null, v21, s73, v[5:6]
	v_add_nc_u32_e32 v27, 24, v6
	v_mad_u64_u32 v[21:22], null, v22, s73, v[5:6]
	v_add_nc_u32_e32 v28, 26, v6
	v_mad_u64_u32 v[22:23], null, v23, s73, v[5:6]
	v_add_nc_u32_e32 v29, 28, v6
	v_mad_u64_u32 v[23:24], null, v24, s73, v[5:6]
	v_add_nc_u32_e32 v30, 30, v6
	v_mad_u64_u32 v[24:25], null, v25, s73, v[5:6]
	v_add_nc_u32_e32 v31, 32, v6
	v_mad_u64_u32 v[25:26], null, v26, s73, v[5:6]
	v_add_nc_u32_e32 v32, 34, v6
	v_mad_u64_u32 v[26:27], null, v27, s73, v[5:6]
	v_add_nc_u32_e32 v33, 36, v6
	v_mad_u64_u32 v[27:28], null, v28, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v83, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 38, v6
	v_mad_u64_u32 v[28:29], null, v29, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v54
	v_lshl_or_b32 v62, v78, 4, v74
	v_lshl_or_b32 v74, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v35, 40, v6
	v_mad_u64_u32 v[29:30], null, v30, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v55, v63, 4, v55
	v_lshl_or_b32 v63, v79, 4, v75
	v_lshl_or_b32 v75, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v36, 42, v6
	v_mad_u64_u32 v[30:31], null, v31, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v56, v64, 4, v56
	v_lshl_or_b32 v64, v80, 4, v76
	v_lshl_or_b32 v76, v45, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v37, 44, v6
	v_mad_u64_u32 v[31:32], null, v32, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v46, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v38, 46, v6
	v_mad_u64_u32 v[32:33], null, v33, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v47, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v39, 48, v6
	v_mad_u64_u32 v[33:34], null, v34, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v48, 4, v40
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v40, 50, v6
	v_mad_u64_u32 v[34:35], null, v35, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v49, 4, v41
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v41, 52, v6
	v_mad_u64_u32 v[35:36], null, v36, s73, v[5:6]
	v_add_nc_u32_e32 v42, 54, v6
	v_mad_u64_u32 v[36:37], null, v37, s73, v[5:6]
	v_add_nc_u32_e32 v43, 56, v6
	v_mad_u64_u32 v[37:38], null, v38, s73, v[5:6]
	v_add_nc_u32_e32 v8, 58, v6
	v_mad_u64_u32 v[38:39], null, v39, s73, v[5:6]
	v_mad_u64_u32 v[39:40], null, v40, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v10, v65, 4, v57
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v45, 60, v6
	v_add_nc_u32_e32 v65, 62, v6
	v_mad_u64_u32 v[40:41], null, v41, s73, v[5:6]
	v_mad_u64_u32 v[41:42], null, v42, s73, v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[42:43], null, v43, s73, v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[43:44], null, v8, s73, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v8, 0x80000000, v14, s62
	v_cndmask_b32_e64 v14, 0x80000000, v15, s60
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[44:45], null, v45, s73, v[5:6]
	v_mad_u64_u32 v[5:6], null, v65, s73, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v12, v8, s[68:71], 0 offen
	buffer_store_b8 v83, v14, s[68:71], 0 offen
	v_cndmask_b32_e32 v8, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v57, v81, 4, v77
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s72, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v14, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v4.l, v13.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v15, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v50, v6, s[68:71], 0 offen
	buffer_store_b8 v58, v8, s[68:71], 0 offen
	buffer_store_b8 v66, v12, s[68:71], 0 offen
	buffer_store_b8 v46, v14, s[68:71], 0 offen
	buffer_store_b8 v54, v15, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s2, s2, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, v9, v7
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v14, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v15, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v62, v6, s[68:71], 0 offen
	buffer_store_b8 v70, v8, s[68:71], 0 offen
	buffer_store_b8 v74, v12, s[68:71], 0 offen
	buffer_store_b8 v51, v14, s[68:71], 0 offen
	buffer_store_b8 v59, v15, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v14, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v15, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v67, v6, s[68:71], 0 offen
	buffer_store_b8 v47, v8, s[68:71], 0 offen
	buffer_store_b8 v55, v12, s[68:71], 0 offen
	buffer_store_b8 v63, v14, s[68:71], 0 offen
	buffer_store_b8 v71, v15, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v14, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v15, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v75, v6, s[68:71], 0 offen
	buffer_store_b8 v52, v8, s[68:71], 0 offen
	buffer_store_b8 v60, v12, s[68:71], 0 offen
	buffer_store_b8 v68, v14, s[68:71], 0 offen
	buffer_store_b8 v48, v15, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v14, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v15, 0x80000000, v40, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v56, v6, s[68:71], 0 offen
	buffer_store_b8 v64, v8, s[68:71], 0 offen
	buffer_store_b8 v72, v12, s[68:71], 0 offen
	buffer_store_b8 v76, v14, s[68:71], 0 offen
	buffer_store_b8 v53, v15, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v41, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v42, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v43, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x2
	buffer_store_b8 v61, v6, s[68:71], 0 offen
	buffer_store_b8 v69, v8, s[68:71], 0 offen
	buffer_store_b8 v49, v12, s[68:71], 0 offen
	v_cndmask_b32_e32 v14, 0x80000000, v44, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v8, 4, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_lshlrev_b32 v6, 3, v119
	buffer_store_b8 v10, v14, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v10, 2, v82
	v_and_b32_e32 v8, 2, v8
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s72, s2
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v57, v5, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v6
	v_add_nc_u32_e32 v10, 0, v10
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v5, v[3:4]
	v_add3_u32 v6, v10, v8, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v4, v7, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	ds_load_u16 v3, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s69, s67, 0xffff
	v_cmp_eq_u32_e64 s1, 0, v0
	s_mov_b32 s68, s66
	v_add_lshl_u32 v0, v4, s80, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v3, v0, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp82:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 197
		.amdhsa_next_free_sgpr 81
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 197
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17520
; TotalNumSgprs: 83
; NumVgprs: 197
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 83
; NumVGPRsForWavesPerEU: 197
; Occupancy: 7
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     197
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
