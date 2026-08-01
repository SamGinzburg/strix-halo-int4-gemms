	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	v_lshlrev_b32_e32 v109, 1, v0
	v_and_b32_e32 v110, 0x7f, v0
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
	s_ashr_i32 s28, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s16, s14, 1
	s_sub_i32 s15, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s17, s15, s13
	s_cmp_ge_u32 s15, s13
	s_cselect_b32 s14, s16, s14
	s_cselect_b32 s15, s17, s15
	s_add_i32 s16, s14, 1
	s_cmp_ge_u32 s15, s13
	s_cselect_b32 s13, s16, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s29, s13, s28
	s_sub_i32 s80, s29, s28
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
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[12:13], s[4:5], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_addc_u32 s7, s7, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s8, s2
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[78:79], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_addc_u32 s5, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	s_mov_b32 s6, 0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s73, 0
	.loc	1 1066 35                       ; ragged.py:1066:35
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s24, s12, s72
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, s24 :: v_dual_lshlrev_b32 v2, 1, v0
	v_dual_mov_b32 v7, s78 :: v_dual_and_b32 v8, 0x7f, v0
	s_branch .LBB0_3
.LBB0_2:
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[64:67], s[0:1], 0x40
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[74:75], s[4:5], 0x0
	s_load_b64 s[76:77], s[2:3], 0x0
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v108, 0x80, v0
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v107, 15, v0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s2, 0, v108
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v91, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v18, 5, v0
	s_load_b128 s[20:23], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_mov_b32_e32 v1, 0
	s_mov_b32 s27, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, s0, s78, v18
	v_add_co_ci_u32_e64 v3, null, s79, 0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v4, vcc_lo, v2, 8
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 24
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	v_add_co_u32 v10, vcc_lo, v2, 32
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	s_waitcnt lgkmcnt(0)
	v_cmp_le_i64_e64 s0, s[74:75], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[76:77], v[4:5]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v11, null, 0, v3, vcc_lo
	v_add_co_u32 v12, vcc_lo, v2, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, 0, v3, vcc_lo
	v_add_co_u32 v14, vcc_lo, v2, 48
	v_add_co_ci_u32_e64 v15, null, 0, v3, vcc_lo
	v_add_co_u32 v16, vcc_lo, v2, 56
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s26, s0, s9
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_lshl_b32 s0, s29, 8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v17, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[2:3]
	v_cmp_le_i64_e64 s3, s[74:75], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[2:3]
	v_cmp_gt_i64_e64 s11, s[76:77], v[8:9]
	v_and_b32_e32 v2, 24, v109
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_add3_u32 v8, s24, s0, v18
	s_lshl_b32 s0, s28, 8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[76:77], v[16:17]
	v_lshl_or_b32 v111, v107, 5, v2
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_subrev_nc_u32_e32 v8, s0, v8
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_and_b32_e32 v65, 31, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v19, 0xe0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[6:7]
	v_xor_b32_e32 v4, 16, v111
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add_nc_u32_e32 v16, 0xf8, v8
	v_mov_b32_e32 v22, v1
	v_lshl_or_b32 v113, v19, 4, v111
	v_add_nc_u32_e32 v19, 0xf0, v8
	v_dual_mov_b32 v46, v1 :: v_dual_add_nc_u32 v115, 0, v4
	v_mov_b32_e32 v4, v1
	v_mad_u64_u32 v[66:67], null, s73, v16, v[65:66]
	v_add_nc_u32_e32 v16, 0xe8, v8
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v21, v1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[6:7]
	v_xor_b32_e32 v6, 8, v113
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_mad_u64_u32 v[67:68], null, s73, v19, v[65:66]
	v_add_nc_u32_e32 v19, 0xe0, v8
	v_mad_u64_u32 v[68:69], null, s73, v16, v[65:66]
	v_add_nc_u32_e32 v16, 0xd8, v8
	v_mov_b32_e32 v28, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[69:70], null, s73, v19, v[65:66]
	v_add_nc_u32_e32 v19, 0xd0, v8
	v_mad_u64_u32 v[70:71], null, s73, v16, v[65:66]
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v16, 0xc8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[71:72], null, s73, v19, v[65:66]
	v_add_nc_u32_e32 v19, 0xc0, v8
	v_mad_u64_u32 v[72:73], null, s73, v16, v[65:66]
	v_add_nc_u32_e32 v16, 0xb8, v8
	v_mov_b32_e32 v30, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[73:74], null, s73, v19, v[65:66]
	v_add_nc_u32_e32 v19, 0xb0, v8
	v_mad_u64_u32 v[74:75], null, s73, v16, v[65:66]
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v16, 0xa8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[75:76], null, s73, v19, v[65:66]
	v_add_nc_u32_e32 v19, 0xa0, v8
	v_mad_u64_u32 v[76:77], null, s73, v16, v[65:66]
	v_add_nc_u32_e32 v16, 0x98, v8
	v_mov_b32_e32 v32, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[77:78], null, s73, v19, v[65:66]
	v_add_nc_u32_e32 v19, 0x90, v8
	v_mad_u64_u32 v[78:79], null, s73, v16, v[65:66]
	v_dual_mov_b32 v27, v1 :: v_dual_add_nc_u32 v16, 0x88, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[79:80], null, s73, v19, v[65:66]
	v_add_nc_u32_e32 v19, 0x80, v8
	v_mad_u64_u32 v[80:81], null, s73, v16, v[65:66]
	v_add_nc_u32_e32 v16, 0x78, v8
	v_mov_b32_e32 v34, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[81:82], null, s73, v19, v[65:66]
	v_add_nc_u32_e32 v19, 0x70, v8
	v_mad_u64_u32 v[82:83], null, s73, v16, v[65:66]
	v_dual_mov_b32 v29, v1 :: v_dual_add_nc_u32 v16, 0x68, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[83:84], null, s73, v19, v[65:66]
	v_add_nc_u32_e32 v19, 0x60, v8
	v_mad_u64_u32 v[84:85], null, s73, v16, v[65:66]
	v_add_nc_u32_e32 v16, 0x58, v8
	v_mov_b32_e32 v36, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[85:86], null, s73, v19, v[65:66]
	v_add_nc_u32_e32 v19, 0x50, v8
	v_mad_u64_u32 v[86:87], null, s73, v16, v[65:66]
	v_dual_mov_b32 v31, v1 :: v_dual_add_nc_u32 v16, 0x48, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[87:88], null, s73, v19, v[65:66]
	v_dual_mov_b32 v38, v1 :: v_dual_add_nc_u32 v19, 64, v8
	v_mad_u64_u32 v[88:89], null, s73, v16, v[65:66]
	v_dual_mov_b32 v33, v1 :: v_dual_add_nc_u32 v16, 56, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[89:90], null, s73, v19, v[65:66]
	v_dual_mov_b32 v40, v1 :: v_dual_add_nc_u32 v19, 48, v8
	v_mad_u64_u32 v[90:91], null, s73, v16, v[65:66]
	v_dual_mov_b32 v35, v1 :: v_dual_add_nc_u32 v16, 40, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[91:92], null, s73, v19, v[65:66]
	v_dual_mov_b32 v42, v1 :: v_dual_add_nc_u32 v19, 32, v8
	v_add_nc_u32_e32 v7, s78, v18
	v_mad_u64_u32 v[92:93], null, s73, v16, v[65:66]
	v_dual_mov_b32 v37, v1 :: v_dual_add_nc_u32 v16, 24, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[93:94], null, s73, v19, v[65:66]
	v_dual_mov_b32 v44, v1 :: v_dual_add_nc_u32 v19, 16, v8
	v_dual_mov_b32 v39, v1 :: v_dual_add_nc_u32 v20, 8, v8
	v_cndmask_b32_e64 v3, 0x88, 0, s2
	v_xor_b32_e32 v9, 16, v113
	v_dual_mov_b32 v48, v1 :: v_dual_add_nc_u32 v117, 0, v6
	v_mov_b32_e32 v6, v1
	v_add_nc_u32_e32 v18, 56, v7
	v_add_nc_u32_e32 v17, 48, v7
	v_mad_u64_u32 v[94:95], null, s73, v16, v[65:66]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[74:75], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[14:15]
	v_add_nc_u32_e32 v15, 40, v7
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_mad_u64_u32 v[95:96], null, s73, v19, v[65:66]
	v_xor_b32_e32 v5, 24, v111
	v_add_nc_u32_e32 v14, 32, v7
	v_mad_u64_u32 v[96:97], null, s73, v20, v[65:66]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[74:75], v[10:11]
	v_cmp_le_i64_e64 s5, s[74:75], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[10:11]
	v_cmp_gt_i64_e64 s13, s[76:77], v[12:13]
	v_xor_b32_e32 v10, 24, v113
	v_add_nc_u32_e32 v13, 24, v7
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_mad_u64_u32 v[97:98], null, s73, v8, v[65:66]
	v_xor_b32_e32 v112, v3, v110
	v_xor_b32_e32 v3, 8, v111
	v_add_nc_u32_e32 v12, 16, v7
	v_dual_mov_b32 v47, v1 :: v_dual_add_nc_u32 v118, 0, v9
	v_mov_b32_e32 v9, v1
	v_mad_u64_u32 v[98:99], null, v18, s73, v[65:66]
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v11, 8, v7
	v_mad_u64_u32 v[99:100], null, v17, s73, v[65:66]
	v_mad_u64_u32 v[100:101], null, v15, s73, v[65:66]
	v_dual_mov_b32 v45, v1 :: v_dual_add_nc_u32 v116, 0, v5
	v_mov_b32_e32 v5, v1
	v_mad_u64_u32 v[101:102], null, v14, s73, v[65:66]
	v_dual_mov_b32 v50, v1 :: v_dual_add_nc_u32 v119, 0, v10
	v_mov_b32_e32 v10, v1
	v_mad_u64_u32 v[102:103], null, v13, s73, v[65:66]
	v_xor_b32_e32 v2, 0x110, v112
	v_dual_mov_b32 v43, v1 :: v_dual_add_nc_u32 v114, 0, v3
	v_mov_b32_e32 v3, v1
	v_mad_u64_u32 v[103:104], null, v12, s73, v[65:66]
	v_mad_u64_u32 v[104:105], null, v11, s73, v[65:66]
	v_mad_u64_u32 v[105:106], null, v7, s73, v[65:66]
	v_dual_mov_b32 v41, v1 :: v_dual_add_nc_u32 v106, 0, v2
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v49, v1
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
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s14, s6, s14
	s_and_b32 s15, s7, s15
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s25, vcc_lo, s8
	s_and_b32 s1, s1, s10
	s_and_b32 s3, s3, s11
	s_and_b32 s12, s4, s12
	s_and_b32 s13, s5, s13
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s4, s20
	s_mov_b32 s5, s21
	s_mov_b32 s8, s22
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_add_nc_u32_e32 v120, s27, v65
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v152, s27, v105
	v_add_nc_u32_e32 v153, s27, v104
	v_add_nc_u32_e32 v154, s27, v103
	v_add_nc_u32_e32 v155, s27, v102
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s73, v120
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v121, s27, v97
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v156, s27, v101
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v122, s27, v96
	v_add_nc_u32_e32 v123, s27, v95
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s0, s25, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v124, s27, v94
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v152, 0x80000000, v152, s0
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s0, s26, vcc_lo
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	v_add_nc_u32_e32 v125, s27, v93
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v153, 0x80000000, v153, s0
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s0, s1, vcc_lo
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	v_add_nc_u32_e32 v126, s27, v92
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v154, 0x80000000, v154, s0
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s0, s3, vcc_lo
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	v_add_nc_u32_e32 v127, s27, v91
	v_add_nc_u32_e32 v128, s27, v90
	v_add_nc_u32_e32 v129, s27, v89
	v_add_nc_u32_e32 v130, s27, v88
	v_add_nc_u32_e32 v131, s27, v87
	v_add_nc_u32_e32 v132, s27, v86
	v_add_nc_u32_e32 v133, s27, v85
	v_add_nc_u32_e32 v134, s27, v84
	v_add_nc_u32_e32 v135, s27, v83
	v_add_nc_u32_e32 v136, s27, v82
	v_add_nc_u32_e32 v137, s27, v81
	v_add_nc_u32_e32 v138, s27, v80
	v_add_nc_u32_e32 v139, s27, v79
	v_add_nc_u32_e32 v140, s27, v78
	v_add_nc_u32_e32 v141, s27, v77
	v_add_nc_u32_e32 v142, s27, v76
	v_add_nc_u32_e32 v143, s27, v75
	v_add_nc_u32_e32 v144, s27, v74
	v_add_nc_u32_e32 v145, s27, v73
	v_add_nc_u32_e32 v146, s27, v72
	v_add_nc_u32_e32 v147, s27, v71
	v_add_nc_u32_e32 v148, s27, v70
	v_add_nc_u32_e32 v149, s27, v69
	v_add_nc_u32_e32 v150, s27, v68
	v_add_nc_u32_e32 v151, s27, v67
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	v_add_nc_u32_e32 v120, s27, v66
	.loc	1 1069 38 is_stmt 1             ; ragged.py:1069:38
	v_add_nc_u32_e32 v157, s27, v100
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v155, 0x80000000, v155, s0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s0, s12, vcc_lo
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v158, s27, v99
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_add_nc_u32_e32 v159, s27, v98
	.loc	1 1070 30 is_stmt 1             ; ragged.py:1070:30
	v_dual_cndmask_b32 v121, 0x80000000, v121 :: v_dual_cndmask_b32 v122, 0x80000000, v122
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v156, 0x80000000, v156, s0
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s0, s13, vcc_lo
	.loc	1 1070 30 is_stmt 1             ; ragged.py:1070:30
	v_dual_cndmask_b32 v123, 0x80000000, v123 :: v_dual_cndmask_b32 v124, 0x80000000, v124
	v_dual_cndmask_b32 v125, 0x80000000, v125 :: v_dual_cndmask_b32 v126, 0x80000000, v126
	v_dual_cndmask_b32 v127, 0x80000000, v127 :: v_dual_cndmask_b32 v128, 0x80000000, v128
	v_dual_cndmask_b32 v129, 0x80000000, v129 :: v_dual_cndmask_b32 v130, 0x80000000, v130
	v_dual_cndmask_b32 v131, 0x80000000, v131 :: v_dual_cndmask_b32 v132, 0x80000000, v132
	v_dual_cndmask_b32 v133, 0x80000000, v133 :: v_dual_cndmask_b32 v134, 0x80000000, v134
	v_dual_cndmask_b32 v135, 0x80000000, v135 :: v_dual_cndmask_b32 v136, 0x80000000, v136
	v_dual_cndmask_b32 v137, 0x80000000, v137 :: v_dual_cndmask_b32 v138, 0x80000000, v138
	v_dual_cndmask_b32 v139, 0x80000000, v139 :: v_dual_cndmask_b32 v140, 0x80000000, v140
	v_dual_cndmask_b32 v141, 0x80000000, v141 :: v_dual_cndmask_b32 v142, 0x80000000, v142
	v_dual_cndmask_b32 v143, 0x80000000, v143 :: v_dual_cndmask_b32 v144, 0x80000000, v144
	v_dual_cndmask_b32 v145, 0x80000000, v145 :: v_dual_cndmask_b32 v146, 0x80000000, v146
	v_dual_cndmask_b32 v147, 0x80000000, v147 :: v_dual_cndmask_b32 v148, 0x80000000, v148
	v_dual_cndmask_b32 v149, 0x80000000, v149 :: v_dual_cndmask_b32 v150, 0x80000000, v150
	v_dual_cndmask_b32 v151, 0x80000000, v151 :: v_dual_cndmask_b32 v120, 0x80000000, v120
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v157, 0x80000000, v157, s0
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s0, s14, vcc_lo
	s_and_b32 vcc_lo, s15, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v158, 0x80000000, v158, s0
	v_cndmask_b32_e32 v159, 0x80000000, v159, vcc_lo
	.loc	1 1070 30 is_stmt 1             ; ragged.py:1070:30
	buffer_load_u8 v160, v121, s[8:11], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x7
	buffer_load_u8 v121, v152, s[4:7], 0 offen
	buffer_load_u8 v152, v154, s[4:7], 0 offen
	buffer_load_u8 v154, v156, s[4:7], 0 offen
	buffer_load_u8 v156, v158, s[4:7], 0 offen
	buffer_load_u8 v158, v159, s[4:7], 0 offen
	buffer_load_u8 v157, v157, s[4:7], 0 offen
	buffer_load_u8 v155, v155, s[4:7], 0 offen
	buffer_load_u8 v153, v153, s[4:7], 0 offen
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x1e
	buffer_load_u8 v159, v123, s[8:11], 0 offen
	buffer_load_u8 v161, v125, s[8:11], 0 offen
	buffer_load_u8 v162, v127, s[8:11], 0 offen
	buffer_load_u8 v163, v129, s[8:11], 0 offen
	buffer_load_u8 v164, v131, s[8:11], 0 offen
	buffer_load_u8 v165, v133, s[8:11], 0 offen
	buffer_load_u8 v166, v135, s[8:11], 0 offen
	buffer_load_u8 v167, v137, s[8:11], 0 offen
	buffer_load_u8 v168, v139, s[8:11], 0 offen
	buffer_load_u8 v169, v141, s[8:11], 0 offen
	buffer_load_u8 v170, v143, s[8:11], 0 offen
	buffer_load_u8 v171, v145, s[8:11], 0 offen
	buffer_load_u8 v172, v147, s[8:11], 0 offen
	buffer_load_u8 v173, v149, s[8:11], 0 offen
	buffer_load_u8 v174, v151, s[8:11], 0 offen
	buffer_load_u8 v175, v128, s[8:11], 0 offen
	buffer_load_u8 v176, v126, s[8:11], 0 offen
	buffer_load_u8 v177, v124, s[8:11], 0 offen
	buffer_load_u8 v178, v122, s[8:11], 0 offen
	buffer_load_u8 v179, v136, s[8:11], 0 offen
	buffer_load_u8 v180, v134, s[8:11], 0 offen
	buffer_load_u8 v181, v132, s[8:11], 0 offen
	buffer_load_u8 v182, v130, s[8:11], 0 offen
	buffer_load_u8 v183, v144, s[8:11], 0 offen
	buffer_load_u8 v184, v142, s[8:11], 0 offen
	buffer_load_u8 v185, v140, s[8:11], 0 offen
	buffer_load_u8 v186, v138, s[8:11], 0 offen
	buffer_load_u8 v187, v120, s[8:11], 0 offen
	buffer_load_u8 v188, v150, s[8:11], 0 offen
	buffer_load_u8 v189, v148, s[8:11], 0 offen
	buffer_load_u8 v190, v146, s[8:11], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_add_nc_u32_e32 v191, 0, v112
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v124, 0, v111
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s27, s27, 32
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(38)
	ds_store_b8 v191, v121
	s_waitcnt vmcnt(37)
	ds_store_b8 v191, v152 offset:512
	s_waitcnt vmcnt(36)
	ds_store_b8 v191, v154 offset:1024
	s_waitcnt vmcnt(35)
	ds_store_b8 v191, v156 offset:1536
	s_waitcnt vmcnt(31)
	ds_store_b8 v106, v153
	ds_store_b8 v106, v155 offset:512
	ds_store_b8 v106, v157 offset:1024
	ds_store_b8 v106, v158 offset:1536
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_add_nc_u32_e32 v152, 0, v113
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[120:123], v124 offset1:1
	ds_load_2addr_stride64_b64 v[124:127], v124 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[128:131], v114 offset1:1
	ds_load_2addr_stride64_b64 v[132:135], v114 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[136:139], v115 offset1:1
	ds_load_2addr_stride64_b64 v[140:143], v115 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[144:147], v116 offset1:1
	ds_load_2addr_stride64_b64 v[148:151], v116 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v191, v160
	s_waitcnt vmcnt(30)
	ds_store_b8 v191, v159 offset:512
	s_waitcnt vmcnt(29)
	ds_store_b8 v191, v161 offset:1024
	s_waitcnt vmcnt(28)
	ds_store_b8 v191, v162 offset:1536
	s_waitcnt vmcnt(27)
	ds_store_b8 v191, v163 offset:2048
	s_waitcnt vmcnt(26)
	ds_store_b8 v191, v164 offset:2560
	s_waitcnt vmcnt(25)
	ds_store_b8 v191, v165 offset:3072
	s_waitcnt vmcnt(24)
	ds_store_b8 v191, v166 offset:3584
	s_waitcnt vmcnt(23)
	ds_store_b8 v191, v167 offset:4096
	s_waitcnt vmcnt(22)
	ds_store_b8 v191, v168 offset:4608
	s_waitcnt vmcnt(21)
	ds_store_b8 v191, v169 offset:5120
	s_waitcnt vmcnt(20)
	ds_store_b8 v191, v170 offset:5632
	s_waitcnt vmcnt(19)
	ds_store_b8 v191, v171 offset:6144
	s_waitcnt vmcnt(18)
	ds_store_b8 v191, v172 offset:6656
	s_waitcnt vmcnt(17)
	ds_store_b8 v191, v173 offset:7168
	s_waitcnt vmcnt(16)
	ds_store_b8 v191, v174 offset:7680
	s_waitcnt vmcnt(12)
	ds_store_b8 v106, v178
	ds_store_b8 v106, v177 offset:512
	ds_store_b8 v106, v176 offset:1024
	ds_store_b8 v106, v175 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v106, v182 offset:2048
	ds_store_b8 v106, v181 offset:2560
	ds_store_b8 v106, v180 offset:3072
	ds_store_b8 v106, v179 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b8 v106, v186 offset:4096
	ds_store_b8 v106, v185 offset:4608
	ds_store_b8 v106, v184 offset:5120
	ds_store_b8 v106, v183 offset:5632
	s_waitcnt vmcnt(0)
	ds_store_b8 v106, v190 offset:6144
	ds_store_b8 v106, v189 offset:6656
	ds_store_b8 v106, v188 offset:7168
	ds_store_b8 v106, v187 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[152:155], v152 offset1:8
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s27, s73
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[152:153], v[120:121], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[154:155], v[120:121], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[152:153], v[122:123], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[154:155], v[122:123], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[152:153], v[124:125], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[154:155], v[124:125], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[152:153], v[126:127], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[154:155], v[126:127], v[57:64] neg_lo:[1,1,0]
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[120:123], v117 offset1:8
	ds_load_2addr_stride64_b64 v[124:127], v118 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[120:121], v[128:129], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[122:123], v[128:129], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[120:121], v[130:131], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[122:123], v[130:131], v[25:32] neg_lo:[1,1,0]
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[128:131], v119 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[33:40], v[120:121], v[132:133], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[122:123], v[132:133], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[120:121], v[134:135], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[122:123], v[134:135], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[124:125], v[136:137], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[136:137], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[124:125], v[138:139], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[126:127], v[138:139], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[124:125], v[140:141], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[126:127], v[140:141], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[124:125], v[142:143], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[126:127], v[142:143], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[128:129], v[144:145], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[130:131], v[144:145], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[128:129], v[146:147], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[130:131], v[146:147], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[128:129], v[148:149], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[130:131], v[148:149], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[128:129], v[150:151], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[130:131], v[150:151], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v82, v1
	v_cvt_f32_i32_e32 v80, v2
	v_cvt_f32_i32_e32 v76, v3
	v_cvt_f32_i32_e32 v78, v4
	v_cvt_f32_i32_e32 v86, v5
	v_cvt_f32_i32_e32 v85, v6
	v_cvt_f32_i32_e32 v84, v7
	v_cvt_f32_i32_e32 v83, v8
	v_cvt_f32_i32_e32 v91, v9
	v_cvt_f32_i32_e32 v75, v10
	v_cvt_f32_i32_e32 v73, v11
	v_cvt_f32_i32_e32 v72, v12
	v_cvt_f32_i32_e32 v71, v13
	v_cvt_f32_i32_e32 v94, v14
	v_cvt_f32_i32_e32 v93, v15
	v_cvt_f32_i32_e32 v92, v16
	v_cvt_f32_i32_e32 v70, v17
	v_cvt_f32_i32_e32 v69, v18
	v_cvt_f32_i32_e32 v67, v19
	v_cvt_f32_i32_e32 v68, v20
	v_cvt_f32_i32_e32 v81, v21
	v_cvt_f32_i32_e32 v79, v22
	v_cvt_f32_i32_e32 v77, v23
	v_cvt_f32_i32_e32 v74, v24
	v_cvt_f32_i32_e32 v87, v25
	v_cvt_f32_i32_e32 v66, v26
	v_cvt_f32_i32_e32 v65, v27
	v_cvt_f32_i32_e32 v26, v28
	v_cvt_f32_i32_e32 v24, v29
	v_cvt_f32_i32_e32 v90, v30
	v_cvt_f32_i32_e32 v89, v31
	v_cvt_f32_i32_e32 v88, v32
	v_cvt_f32_i32_e32 v27, v33
	v_cvt_f32_i32_e32 v25, v34
	v_cvt_f32_i32_e32 v22, v35
	v_cvt_f32_i32_e32 v23, v36
	v_cvt_f32_i32_e32 v31, v37
	v_cvt_f32_i32_e32 v30, v38
	v_cvt_f32_i32_e32 v29, v39
	v_cvt_f32_i32_e32 v28, v40
	v_cvt_f32_i32_e32 v36, v41
	v_cvt_f32_i32_e32 v21, v42
	v_cvt_f32_i32_e32 v20, v43
	v_cvt_f32_i32_e32 v18, v44
	v_cvt_f32_i32_e32 v16, v45
	v_cvt_f32_i32_e32 v39, v46
	v_cvt_f32_i32_e32 v38, v47
	v_cvt_f32_i32_e32 v37, v48
	v_cvt_f32_i32_e32 v19, v49
	v_cvt_f32_i32_e32 v17, v50
	v_cvt_f32_i32_e32 v14, v51
	v_cvt_f32_i32_e32 v15, v52
	v_cvt_f32_i32_e32 v35, v53
	v_cvt_f32_i32_e32 v34, v54
	v_cvt_f32_i32_e32 v33, v55
	v_cvt_f32_i32_e32 v32, v56
	v_cvt_f32_i32_e32 v40, v57
	v_cvt_f32_i32_e32 v6, v58
	v_cvt_f32_i32_e32 v5, v59
	v_cvt_f32_i32_e32 v4, v60
	v_cvt_f32_i32_e32 v3, v61
	v_cvt_f32_i32_e32 v43, v62
	v_cvt_f32_i32_e32 v42, v63
	v_cvt_f32_i32_e32 v41, v64
	v_dual_mov_b32 v1, s24 :: v_dual_mov_b32 v2, v109
	v_dual_mov_b32 v7, s78 :: v_dual_mov_b32 v8, v110
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 48, v107
	v_or_b32_e32 v11, 32, v107
	v_or_b32_e32 v12, 16, v107
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s69, s17, 0xffff
	s_mov_b32 s71, 0x31027000
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v9, s0, s78, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s79, 0, s0
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_mov_b32 s68, s16
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v141, 3, v108
.Ltmp4:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v10, s1, s78, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s79, 0, s1
	v_add_co_u32 v12, s1, s78, v12
	v_add_co_ci_u32_e64 v13, null, s79, 0, s1
	v_add_co_u32 v44, s1, s78, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v45, null, s79, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[74:75], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[76:77], v[12:13]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[10:11]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s6, s[74:75], v[44:45]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[76:77], v[44:45]
	v_cmp_gt_i64_e64 s3, s[76:77], v[10:11]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v11, 1, v44
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v12, 1, v12
	v_lshlrev_b32_e32 v10, 1, v10
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s6, s7
	s_and_b32 s4, s4, s5
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s3
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_cndmask_b32_e64 v12, 0x80000000, v12, s4
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	s_clause 0x3
	buffer_load_u16 v44, v11, s[68:71], 0 offen
	buffer_load_u16 v45, v12, s[68:71], 0 offen
	buffer_load_u16 v46, v10, s[68:71], 0 offen
	buffer_load_u16 v47, v9, s[68:71], 0 offen
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_lshl_or_b32 v9, s80, 8, v0
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s69, s19, 0xffff
	s_mov_b32 s68, s18
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v10, 7, v108
	s_mov_b32 s0, 0x76543210
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_add_lshl_u32 v1, v9, v1, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v53, 62, v10
	v_or_b32_e32 v54, 60, v10
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v48, v1, s[68:71], 0 offen
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v55, 58, v10
	v_or_b32_e32 v56, 56, v10
	v_or_b32_e32 v57, 54, v10
	v_or_b32_e32 v58, 52, v10
	v_or_b32_e32 v59, 50, v10
	v_or_b32_e32 v60, 48, v10
	v_or_b32_e32 v61, 46, v10
	v_or_b32_e32 v62, 44, v10
	v_or_b32_e32 v63, 42, v10
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v64, 40, v10
	v_or_b32_e32 v143, 20, v10
	v_or_b32_e32 v144, 18, v10
	v_or_b32_e32 v147, 12, v10
	v_or_b32_e32 v145, 16, v10
	v_or_b32_e32 v146, 14, v10
	v_or_b32_e32 v121, 38, v10
	v_or_b32_e32 v123, 36, v10
	v_or_b32_e32 v125, 34, v10
	v_or_b32_e32 v127, 32, v10
	v_or_b32_e32 v129, 30, v10
	v_or_b32_e32 v131, 28, v10
	v_or_b32_e32 v133, 26, v10
	v_or_b32_e32 v135, 24, v10
	v_or_b32_e32 v137, 22, v10
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
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v41, v41, v47 :: v_dual_lshlrev_b32 v44, 16, v44
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v9, 63, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v49, 28, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v75, v75, v44 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshlrev_b32_e32 v50, 5, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s1, s78, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s79, 0, s1
	v_add_co_u32 v95, s1, s78, v53
	v_add_co_ci_u32_e64 v96, null, s79, 0, s1
	v_add_co_u32 v97, s1, s78, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v98, null, s79, 0, s1
	v_add_co_u32 v99, s1, s78, v55
	v_add_co_ci_u32_e64 v100, null, s79, 0, s1
	v_add_co_u32 v101, s1, s78, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v102, null, s79, 0, s1
	v_add_co_u32 v103, s1, s78, v57
	v_add_co_ci_u32_e64 v104, null, s79, 0, s1
	v_add_co_u32 v105, s1, s78, v58
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v54, v82, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v12, 0xf0, v0
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v51, 3, v0
.Ltmp6:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v106, null, s79, 0, s1
	v_add_co_u32 v109, s1, s78, v59
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v110, null, s79, 0, s1
	v_add_co_u32 v111, s1, s78, v60
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v37, v37, v46 :: v_dual_and_b32 v52, 4, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v112, null, s79, 0, s1
	v_add_co_u32 v113, s1, s78, v61
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v61, v90, v45
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v148, v12, 2, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v90, v88, v45
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v151, v51, 9, 0
.Ltmp8:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v39, v39, v46
	v_dual_mul_f32 v53, v92, v44 :: v_dual_and_b32 v50, 32, v50
	v_dual_mul_f32 v38, v38, v46 :: v_dual_and_b32 v139, 8, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v149, v12, 1, 0
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v152, v52, 6, 0
.Ltmp10:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v92, v70, v45 :: v_dual_lshlrev_b32 v155, 5, v52
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v151, v52, 2, v151
.Ltmp12:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v52, v93, v44
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v49, v148, v50, v49
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v159, v26, v45 :: v_dual_lshlrev_b32 v48, 16, v48
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v114, null, s79, 0, s1
	v_add_co_u32 v115, s1, s78, v62
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v55, v80, v44 :: v_dual_lshlrev_b32 v150, 5, v51
	v_dual_mul_f32 v59, v86, v44 :: v_dual_lshlrev_b32 v154, 3, v139
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v12, 4, v51
.Ltmp14:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v116, null, s79, 0, s1
	v_add_co_u32 v117, s1, s78, v63
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v50, v91, v44
	v_mul_f32_e32 v51, v94, v44
	v_mul_f32_e32 v56, v78, v44
	v_dual_mul_f32 v58, v76, v44 :: v_dual_mul_f32 v69, v69, v45
	v_dual_mul_f32 v62, v85, v44 :: v_dual_mul_f32 v93, v68, v45
	v_mul_f32_e32 v63, v84, v44
	v_dual_mul_f32 v76, v83, v44 :: v_dual_mul_f32 v81, v81, v45
	v_mul_f32_e32 v78, v73, v44
	v_dual_mul_f32 v72, v72, v44 :: v_dual_mul_f32 v157, v77, v45
	v_dual_mul_f32 v44, v71, v44 :: v_dual_mul_f32 v65, v65, v45
	v_mul_f32_e32 v60, v87, v45
	v_mul_f32_e32 v80, v89, v45
	v_dual_mul_f32 v94, v67, v45 :: v_dual_mul_f32 v29, v29, v46
	v_dual_mul_f32 v156, v79, v45 :: v_dual_mul_f32 v21, v21, v46
	v_mul_f32_e32 v77, v74, v45
	v_dual_mul_f32 v158, v66, v45 :: v_dual_mul_f32 v27, v27, v46
	v_dual_mul_f32 v45, v24, v45 :: v_dual_mul_f32 v160, v25, v46
	v_dual_mul_f32 v161, v23, v46 :: v_dual_mul_f32 v14, v14, v47
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v49, v48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[82:85], v149 offset:512
	ds_load_b128 v[23:26], v149 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v20, v20, v46 :: v_dual_mul_f32 v171, v5, v47
	v_dual_mul_f32 v16, v16, v46 :: v_dual_mul_f32 v173, v3, v47
	v_mul_f32_e32 v170, v6, v47
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[86:89], v149
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v172, v4, v47
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[3:6], v149 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v36, v36, v46 :: v_dual_and_b32 v11, 0x60, v0
	v_dual_mul_f32 v91, v40, v47 :: v_dual_lshlrev_b32 v140, 1, v108
	v_dual_mul_f32 v42, v42, v47 :: v_dual_lshlrev_b32 v13, 4, v0
	v_dual_mul_f32 v43, v43, v47 :: v_dual_add_nc_u32 v142, 0, v108
	v_dual_mul_f32 v31, v31, v46 :: v_dual_mul_f32 v168, v33, v47
	v_dual_mul_f32 v30, v30, v46 :: v_dual_mul_f32 v15, v15, v47
	v_dual_mul_f32 v28, v28, v46 :: v_dual_mul_f32 v167, v34, v47
	v_dual_mul_f32 v163, v18, v46 :: v_dual_mul_f32 v164, v19, v47
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v118, null, s79, 0, s1
	v_add_co_u32 v119, s1, s78, v64
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v162, v22, v46 :: v_dual_mul_f32 v165, v17, v47
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v166, v35, v47 :: v_dual_mul_f32 v57, v50, v82
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v169, v32, v47 :: v_dual_mul_f32 v68, v51, v24
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v70, v52, v25 :: v_dual_mul_f32 v17, v43, v24
	v_mul_f32_e32 v71, v53, v26
	v_dual_mul_f32 v73, v60, v82 :: v_dual_mul_f32 v64, v61, v24
	v_dual_mul_f32 v61, v80, v25 :: v_dual_mul_f32 v60, v90, v26
	v_dual_mul_f32 v40, v36, v82 :: v_dual_mul_f32 v33, v38, v25
	v_dual_mul_f32 v35, v39, v24 :: v_dual_mul_f32 v34, v37, v26
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v47, v56, v89 :: v_dual_mul_f32 v22, v91, v82
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v51, v62, v4
	v_dual_mul_f32 v18, v42, v25 :: v_dual_mul_f32 v19, v41, v26
	v_dual_mul_f32 v46, v58, v88 :: v_dual_mul_f32 v43, v55, v87
	v_dual_mul_f32 v41, v54, v86 :: v_dual_mul_f32 v54, v63, v5
	v_dual_mul_f32 v55, v76, v6 :: v_dual_mul_f32 v50, v59, v3
	v_dual_mul_f32 v67, v44, v23 :: v_dual_mul_f32 v62, v78, v84
	v_dual_mul_f32 v63, v72, v85 :: v_dual_mul_f32 v58, v75, v83
	v_dual_mul_f32 v78, v94, v88 :: v_dual_mul_f32 v79, v93, v89
	v_dual_mul_f32 v75, v69, v87 :: v_dual_mul_f32 v74, v92, v86
	v_dual_mul_f32 v77, v77, v6 :: v_dual_mul_f32 v82, v156, v4
	v_dual_mul_f32 v80, v157, v5 :: v_dual_mul_f32 v59, v27, v86
	v_dual_mul_f32 v81, v81, v3 :: v_dual_mul_f32 v52, v162, v88
	v_dual_mul_f32 v66, v45, v23 :: v_dual_mul_f32 v69, v159, v85
	v_dual_mul_f32 v72, v65, v84 :: v_dual_mul_f32 v49, v31, v3
	v_dual_mul_f32 v76, v158, v83 :: v_dual_mul_f32 v53, v161, v89
	v_dual_mul_f32 v56, v160, v87 :: v_dual_mul_f32 v45, v29, v5
	v_dual_mul_f32 v44, v28, v6 :: v_dual_mul_f32 v37, v163, v85
	v_dual_mul_f32 v48, v30, v4 :: v_dual_mul_f32 v29, v15, v89
	v_dual_mul_f32 v36, v16, v23 :: v_dual_mul_f32 v27, v167, v4
	v_dual_mul_f32 v38, v20, v84 :: v_dual_mul_f32 v31, v165, v87
	v_dual_mul_f32 v42, v21, v83 :: v_dual_mul_f32 v25, v168, v5
	v_dual_mul_f32 v30, v14, v88 :: v_dual_mul_f32 v21, v172, v85
	v_mul_f32_e32 v32, v164, v86
	v_mul_f32_e32 v24, v169, v6
	v_mul_f32_e32 v28, v166, v3
	v_dual_mul_f32 v20, v173, v23 :: v_dual_mul_f32 v23, v171, v84
	v_mul_f32_e32 v26, v170, v83
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v3, |v41|, |v43|
	v_max3_f32 v4, |v47|, |v50|, |v51|
	v_max3_f32 v6, |v58|, |v62|, |v63|
	v_max3_f32 v14, |v67|, |v68|, |v70|
	v_max_f32_e64 v15, |v74|, |v75|
	v_max3_f32 v16, |v79|, |v81|, |v82|
	v_max3_f32 v65, |v76|, |v72|, |v69|
	v_max3_f32 v83, |v66|, |v64|, |v61|
	v_max_f32_e64 v84, |v59|, |v56|
	v_max3_f32 v85, |v53|, |v49|, |v48|
	v_max3_f32 v87, |v42|, |v38|, |v37|
	v_max3_f32 v88, |v36|, |v35|, |v33|
	v_max3_f32 v5, |v54|, |v55|, |v57|
	v_max3_f32 v39, |v80|, |v77|, |v73|
	v_max3_f32 v86, |v45|, |v44|, |v40|
	v_max3_f32 v3, v3, |v46|, v4
	v_max3_f32 v4, v6, v14, |v71|
	v_max3_f32 v6, v15, |v78|, v16
	v_max3_f32 v14, v65, v83, |v60|
	v_max3_f32 v15, v84, |v52|, v85
	v_max3_f32 v16, v87, v88, |v34|
	v_max3_f32 v3, v3, v5, v4
	v_max_f32_e64 v89, |v32|, |v31|
	v_max3_f32 v4, v6, v39, v14
	v_max3_f32 v90, |v29|, |v28|, |v27|
	v_max3_f32 v5, v15, v86, v16
	v_max3_f32 v92, |v26|, |v23|, |v21|
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v15, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v65, v89, |v30|, v90
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v39, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_and_or_b32 v84, 0x680, v13, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v16, v16, v16
	v_max3_f32 v91, |v25|, |v24|, |v22|
	v_max_f32_e32 v39, v39, v39
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v148, v150, v11
	v_lshl_add_u32 v14, v139, 4, v151
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v15 :: v_dual_max_f32 v4, v4, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v5, v5, v39
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v39, 0, v12
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v93, |v20|, |v17|, |v18|
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshrrev_b32_e32 v153, 1, v11
	v_add3_u32 v39, v39, v155, v154
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v83, v92, v93, |v19|
.Ltmp26:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v120, null, s79, 0, s1
	v_add_co_u32 v121, s1, s78, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v65, v91, v83
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v83, v84, v11
	v_add3_u32 v84, v14, v140, v148
.Ltmp29:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v122, null, s79, 0, s1
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v65, v6, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v16, v152, v141, v83
.Ltmp31:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s0, s78, v143
	v_add_co_ci_u32_e64 v15, null, s79, 0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v65, v65, v65
.Ltmp33:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s0, s78, v144
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[74:75], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[76:77], v[14:15]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v65
.Ltmp35:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s48, s78, v147
	v_add_co_ci_u32_e64 v15, null, s79, 0, s48
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v84, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v16
	v_add3_u32 v16, v142, v153, v154
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp37:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s79, 0, s0
	v_add_co_u32 v85, s0, s78, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v86, null, s79, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[74:75], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[76:77], v[83:84]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[76:77], v[14:15]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[74:75], v[85:86]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[76:77], v[85:86]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v87, s0, s78, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v88, null, s79, 0, s0
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v89, v4 :: v_dual_mov_b32 v90, v5
	v_mov_b32_e32 v65, v3
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v89, v89 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v90, v90 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v65, v65 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[74:75], v[87:88]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[76:77], v[87:88]
.Ltmp42:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v89, v89, v89
	v_max_f32_e32 v91, v6, v6
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
	v_dual_max_f32 v65, v65, v65 :: v_dual_max_f32 v90, v90, v90
	v_max_f32_e32 v4, v4, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v6, v6, v6
.Ltmp45:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v123, s1, s78, v123
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v65
.Ltmp47:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v124, null, s79, 0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v91, v6
.Ltmp49:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v125, s1, s78, v125
	v_add_co_ci_u32_e64 v126, null, s79, 0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v65, v6
.Ltmp51:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v127, s1, s78, v127
	v_add_co_ci_u32_e64 v128, null, s79, 0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v65, v65 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v129, s1, s78, v129
	v_add_co_ci_u32_e64 v130, null, s79, 0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v65, v65, v65
	v_dual_max_f32 v5, v5, v90 :: v_dual_mov_b32 v90, v4
.Ltmp55:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v131, s1, s78, v131
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v65
.Ltmp57:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v132, null, s79, 0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v90, v90 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v89, v3
	v_mov_b32_e32 v65, v6
.Ltmp59:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v133, s1, s78, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v90, v90, v90
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v89, v89 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v134, null, s79, 0, s1
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v90 :: v_dual_mov_b32 v91, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v65, v65, v65
.Ltmp64:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v135, s1, s78, v135
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v90, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v91, v91 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v65
.Ltmp67:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v65, 10, v10
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v136, null, s79, 0, s1
.Ltmp68:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v90, v90 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v91, v91, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp70:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s54, s78, v65
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v65, 8, v10
.Ltmp71:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v90, v90, v90 :: v_dual_max_f32 v89, v89, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v5, v5, v91
.Ltmp72:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v15, null, s79, 0, s54
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v90 :: v_dual_max_f32 v3, v3, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v91, v5
.Ltmp75:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[76:77], v[14:15]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v90.h, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v137, s1, s78, v137
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v89, v3
	v_mov_b32_dpp v91, v91 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v138, null, s79, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[95:96]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v89, v89 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v91, v91, v91
.Ltmp80:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[76:77], v[95:96]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[97:98]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[76:77], v[97:98]
.Ltmp81:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v89, v89, v89
	v_max_f32_e32 v5, v5, v91
.Ltmp82:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[99:100]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[76:77], v[99:100]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[101:102]
.Ltmp83:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v89
.Ltmp84:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[101:102]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[103:104]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[103:104]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[74:75], v[109:110]
.Ltmp85:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v16, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v39
.Ltmp86:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[109:110]
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v13, 0x2f0, v13
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[74:75], v[105:106]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[105:106]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[74:75], v[111:112]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[111:112]
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v11, 5, v11
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[74:75], v[137:138]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[76:77], v[137:138]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[74:75], v[135:136]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[76:77], v[135:136]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[74:75], v[133:134]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[76:77], v[133:134]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[74:75], v[131:132]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[76:77], v[131:132]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[74:75], v[129:130]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[76:77], v[129:130]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v3, v3, v3
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v4, v4, v4
	v_max_f32_e32 v6, v6, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[74:75], v[127:128]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v16, 0x2b8cbccc, v3 :: v_dual_max_f32 v5, 0x2b8cbccc, v5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[76:77], v[127:128]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[74:75], v[125:126]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[76:77], v[125:126]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v3, null, 0x40e00000, 0x40e00000, v16
	v_div_scale_f32 v85, vcc_lo, v16, 0x40e00000, v16
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v39, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[74:75], v[123:124]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[76:77], v[123:124]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_rcp_f32_e32 v87, v86
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[74:75], v[121:122]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[76:77], v[121:122]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[74:75], v[119:120]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[76:77], v[119:120]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[74:75], v[117:118]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[117:118]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v83, -v3, v39, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[74:75], v[115:116]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[115:116]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[74:75], v[113:114]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[113:114]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v39, v83, v39
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s54, s78, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v84, null, s79, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v65, v85, v39
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[74:75], v[14:15]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v15, 6, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[74:75], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[76:77], v[83:84]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v14, -v3, v65, v85
	v_dual_max_f32 v83, 0x2b8cbccc, v4 :: v_dual_max_f32 v84, 0x2b8cbccc, v6
	v_fma_f32 v4, -v86, v87, 1.0
	v_fmac_f32_e32 v65, v14, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v83
	v_fmac_f32_e32 v87, v4, v87
	v_div_scale_f32 v14, s60, v5, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v3, -v3, v65, v85
	v_rcp_f32_e32 v85, v6
	v_div_scale_f32 v88, null, 0x40e00000, 0x40e00000, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v39, v3, v39, v65
	v_mul_f32_e32 v65, v14, v87
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s58, s78, v15
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v16, v39, 0x40e00000, v16
	v_fma_f32 v15, -v6, v85, 1.0
	v_fma_f32 v39, -v86, v65, v14
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s79, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v85, v15, v85
	v_div_scale_f32 v15, s61, v83, 0x40e00000, v83
	v_fmac_f32_e32 v65, v39, v87
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v39.l, v16.h
	v_mov_b16_e32 v39.h, v90.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v91, v15, v85
	v_fma_f32 v92, -v88, v89, 1.0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[76:77], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v3, -v86, v65, v14
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v39
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v14, -v6, v91, v15
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v39, s62, v84, 0x40e00000, v84
	v_div_fmas_f32 v3, v3, v87, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v14, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v14, v16, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v65, v39, v89
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v3, v3, 0x40e00000, v5
	v_fma_f32 v5, -v6, v91, v15
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v86, 0xffff0000, v14
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v6, -v88, v65, v39
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 4, v10
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v90.l, v3.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v15, v5, v85, v91
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v86, v86, v41
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v65, v6, v89
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s60, s78, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v87, v85
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v4, -v88, v65, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v88, null, v86, v86, v43
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v15, v15, 0x40e00000, v83
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v39, 1, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v4, v4, v89, v65
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v65.h, v90.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v89, vcc_lo, v41, v86, v41
	v_fma_f32 v16, -v85, v87, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v84
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v84, v88
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v65.l, v15.h
	v_add3_u32 v3, v3, v39, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v16, v87
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v90.l, v4.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v92, null, v86, v86, v46
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v39, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v91, v89, v87
	v_div_scale_f32 v93, null, v86, v86, v47
	v_fma_f32 v65, -v88, v84, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s79, 0, s60
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v83, 1, v90
	v_add3_u32 v15, v15, v39, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v39, -v85, v91, v89
	v_fmac_f32_e32 v84, v65, v84
	v_rcp_f32_e32 v90, v92
	v_div_scale_f32 v94, s60, v43, v86, v43
	v_rcp_f32_e32 v95, v93
	v_fmac_f32_e32 v91, v39, v87
	v_div_scale_f32 v99, null, v86, v86, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v96, v94, v84
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v16, 2, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v85, v91, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v92, v90, 1.0
	v_fma_f32 v89, -v88, v96, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v98, -v93, v95, 1.0
	v_div_fmas_f32 v85, v85, v87, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v97, v90
	v_div_scale_f32 v97, s61, v46, v86, v46
	v_dual_fmac_f32 v96, v89, v84 :: v_dual_fmac_f32 v95, v98, v95
	v_rcp_f32_e32 v89, v99
	v_div_scale_f32 v98, null, v86, v86, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v87, v97, v90
	v_div_scale_f32 v91, s62, v47, v86, v47
	v_rcp_f32_e32 v100, v98
	v_div_fixup_f32 v41, v85, v86, v41
	v_fma_f32 v85, -v88, v96, v94
	v_fma_f32 v88, -v92, v87, v97
	v_mul_f32_e32 v94, v91, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v101, -v99, v89, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fmas_f32 v84, v85, v84, v96
	v_fmac_f32_e32 v87, v88, v90
	v_fma_f32 v85, -v93, v94, v91
	v_fmac_f32_e32 v89, v101, v89
	v_div_scale_f32 v88, s60, v50, v86, v50
	v_fma_f32 v96, -v98, v100, 1.0
	v_div_fixup_f32 v43, v84, v86, v43
	v_fma_f32 v84, -v92, v87, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v94, v85, v95 :: v_dual_mul_f32 v85, v88, v89
	v_fmac_f32_e32 v100, v96, v100
	v_div_scale_f32 v96, null, v86, v86, v54
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v92, s63, v51, v86, v51
	v_div_fmas_f32 v84, v84, v90, v87
	v_fma_f32 v87, -v93, v94, v91
	v_fma_f32 v90, -v99, v85, v88
	v_rcp_f32_e32 v91, v96
	v_div_scale_f32 v97, null, v86, v86, v55
	v_mul_f32_e32 v93, v92, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v90, v89
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v90, v97
	v_div_fmas_f32 v87, v87, v95, v94
	v_fma_f32 v94, -v98, v93, v92
	v_div_fixup_f32 v46, v84, v86, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v96, v91, 1.0
	v_fma_f32 v84, -v99, v85, v88
	v_div_fixup_f32 v47, v87, v86, v47
	v_fmac_f32_e32 v93, v94, v100
	v_div_scale_f32 v87, s61, v54, v86, v54
	v_fmac_f32_e32 v91, v95, v91
	v_fma_f32 v88, -v97, v90, 1.0
	v_div_scale_f32 v94, null, v86, v86, v57
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v95, null, v86, v86, v58
	v_div_fmas_f32 v84, v84, v89, v85
	v_fma_f32 v85, -v98, v93, v92
	v_dual_mul_f32 v89, v87, v91 :: v_dual_fmac_f32 v90, v88, v90
	v_rcp_f32_e32 v88, v94
	v_div_scale_f32 v92, s60, v55, v86, v55
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v50, v84, v86, v50
	v_div_fmas_f32 v85, v85, v100, v93
	v_fma_f32 v93, -v96, v89, v87
	v_mul_f32_e32 v98, v92, v90
	v_rcp_f32_e32 v100, v95
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v94, v88, 1.0
	v_fmac_f32_e32 v89, v93, v91
	v_fma_f32 v84, -v97, v98, v92
	v_div_fixup_f32 v51, v85, v86, v51
	v_div_scale_f32 v85, s62, v57, v86, v57
	v_fmac_f32_e32 v88, v99, v88
	v_div_scale_f32 v93, null, v86, v86, v62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v99, -v95, v100, 1.0
	v_fma_f32 v87, -v96, v89, v87
	v_fmac_f32_e32 v98, v84, v90
	v_mul_f32_e32 v84, v85, v88
	v_rcp_f32_e32 v96, v93
	v_fmac_f32_e32 v100, v99, v100
	v_div_scale_f32 v99, s63, v58, v86, v58
	v_div_fmas_f32 v87, v87, v91, v89
	v_fma_f32 v89, -v97, v98, v92
	v_div_scale_f32 v101, null, v86, v86, v63
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v91, -v94, v84, v85
	v_mul_f32_e32 v92, v99, v100
	v_div_fmas_f32 v89, v89, v90, v98
	v_rcp_f32_e32 v90, v101
	v_fma_f32 v97, -v93, v96, 1.0
	v_fmac_f32_e32 v84, v91, v88
	v_fma_f32 v91, -v95, v92, v99
	v_div_fixup_f32 v55, v89, v86, v55
	v_div_fixup_f32 v54, v87, v86, v54
	v_fmac_f32_e32 v96, v97, v96
	v_div_scale_f32 v97, s60, v62, v86, v62
	v_fmac_f32_e32 v92, v91, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v101, v90, 1.0
	v_div_scale_f32 v91, null, v86, v86, v67
	v_fma_f32 v85, -v94, v84, v85
	v_mul_f32_e32 v87, v97, v96
	v_fmac_f32_e32 v90, v89, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v89, v91
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v94, s61, v63, v86, v63
	v_div_fmas_f32 v84, v85, v88, v84
	v_fma_f32 v85, -v95, v92, v99
	v_fma_f32 v88, -v93, v87, v97
	v_div_scale_f32 v95, null, v86, v86, v68
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v98, -v91, v89, 1.0
	v_fmac_f32_e32 v87, v88, v96
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v85, v85, v100, v92
	v_mul_f32_e32 v92, v94, v90
	v_div_fixup_f32 v57, v84, v86, v57
	v_fma_f32 v84, -v93, v87, v97
	v_fmac_f32_e32 v89, v98, v89
	v_div_scale_f32 v98, null, v86, v86, v70
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v58, v85, v86, v58
	v_fma_f32 v85, -v101, v92, v94
	v_div_scale_f32 v93, s62, v67, v86, v67
	v_fma_f32 v97, -v95, v88, 1.0
	v_div_fmas_f32 v84, v84, v96, v87
	v_rcp_f32_e32 v87, v98
	v_fmac_f32_e32 v92, v85, v90
	v_mul_f32_e32 v85, v93, v89
	v_fmac_f32_e32 v88, v97, v88
	v_div_scale_f32 v96, s60, v68, v86, v68
	v_div_fixup_f32 v62, v84, v86, v62
	v_fma_f32 v84, -v101, v92, v94
	v_fma_f32 v94, -v91, v85, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v99, v96, v88
	v_fma_f32 v101, -v98, v87, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v97, null, v86, v86, v71
	v_div_fmas_f32 v84, v84, v90, v92
	v_fmac_f32_e32 v85, v94, v89
	v_fma_f32 v90, -v95, v99, v96
	v_fmac_f32_e32 v87, v101, v87
	v_div_scale_f32 v92, s61, v70, v86, v70
	v_div_fixup_f32 v63, v84, v86, v63
	v_fma_f32 v84, -v91, v85, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v99, v90, v88 :: v_dual_mul_f32 v90, v92, v87
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v100, v97
	v_div_fmas_f32 v84, v84, v89, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v95, v99, v96
	v_fma_f32 v89, -v98, v90, v92
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v91, s63, v71, v86, v71
	v_div_fmas_f32 v85, v85, v88, v99
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v90, v89, v87
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v4, v83, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v15
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v94, -v97, v100, 1.0
	v_div_fixup_f32 v67, v84, v86, v67
	v_div_fixup_f32 v68, v85, v86, v68
	v_fma_f32 v84, -v98, v90, v92
	v_div_scale_f32 v93, null, v83, v83, v74
	v_fmac_f32_e32 v100, v94, v100
	v_div_scale_f32 v85, s60, v74, v83, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v94, v93
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v95, v91, v100
	v_div_fmas_f32 v84, v84, v87, v90
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v89, -v97, v95, v91
	v_div_fixup_f32 v70, v84, v86, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v99, -v93, v94, 1.0
	v_dual_fmac_f32 v95, v89, v100 :: v_dual_fmac_f32 v94, v99, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v87, -v97, v95, v91
	v_mul_f32_e32 v90, v85, v94
	v_div_scale_f32 v96, null, v83, v83, v75
	v_div_scale_f32 v92, null, v83, v83, v78
	v_div_scale_f32 v91, s61, v75, v83, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v88, v96
	v_div_scale_f32 v97, null, v83, v83, v79
	v_div_fmas_f32 v87, v87, v100, v95
	v_fma_f32 v95, -v93, v90, v85
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v39, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v100, v97
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v71, v87, v86, v71
	v_fmac_f32_e32 v90, v95, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v96, v88, 1.0
	v_div_scale_f32 v86, s62, v78, v83, v78
	v_div_scale_f32 v87, null, v83, v83, v81
	v_fmac_f32_e32 v88, v89, v88
	v_rcp_f32_e32 v89, v92
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v65, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v97, v100, 1.0
	v_fma_f32 v85, -v93, v90, v85
	v_mul_f32_e32 v98, v91, v88
	v_rcp_f32_e32 v93, v87
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v4.l, v15.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v100, v95, v100
	v_div_scale_f32 v95, s63, v79, v83, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v99, -v92, v89, 1.0
	v_fma_f32 v84, -v96, v98, v91
	v_div_fmas_f32 v85, v85, v94, v90
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v94, v95, v100
	v_dual_fmac_f32 v89, v99, v89 :: v_dual_fmac_f32 v98, v84, v88
	v_div_scale_f32 v99, null, v83, v83, v82
	v_div_fixup_f32 v74, v85, v83, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v84, v86, v89
	v_fma_f32 v90, -v96, v98, v91
	v_fma_f32 v96, -v87, v93, 1.0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v3.l, v14.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v92, v84, v86
	v_div_fmas_f32 v88, v90, v88, v98
	v_rcp_f32_e32 v90, v99
	v_fmac_f32_e32 v93, v96, v93
	v_div_scale_f32 v96, s60, v81, v83, v81
	v_fmac_f32_e32 v84, v91, v89
	v_fma_f32 v91, -v97, v94, v95
	v_div_fixup_f32 v75, v88, v83, v75
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v92, v84, v86
	v_fmac_f32_e32 v94, v91, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v99, v90, 1.0
	v_div_scale_f32 v91, null, v83, v83, v80
	v_mul_f32_e32 v86, v96, v93
	v_div_fmas_f32 v84, v85, v89, v84
	v_fmac_f32_e32 v90, v88, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v88, v91
	v_fma_f32 v85, -v97, v94, v95
	v_fma_f32 v89, -v87, v86, v96
	v_div_scale_f32 v95, null, v83, v83, v77
	v_div_scale_f32 v92, s61, v82, v83, v82
	v_fmac_f32_e32 v86, v89, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v89, v95
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v97, -v91, v88, 1.0
	v_div_fmas_f32 v85, v85, v100, v94
	v_mul_f32_e32 v94, v92, v90
	v_div_fixup_f32 v78, v84, v83, v78
	v_fma_f32 v84, -v87, v86, v96
	v_fmac_f32_e32 v88, v97, v88
	v_div_scale_f32 v97, null, v83, v83, v73
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v79, v85, v83, v79
	v_fma_f32 v85, -v99, v94, v92
	v_div_scale_f32 v87, s62, v80, v83, v80
	v_fma_f32 v96, -v95, v89, 1.0
	v_div_fmas_f32 v84, v84, v93, v86
	v_rcp_f32_e32 v86, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v85, v90 :: v_dual_mul_f32 v85, v87, v88
	v_fmac_f32_e32 v89, v96, v89
	v_div_scale_f32 v93, s60, v77, v83, v77
	v_div_scale_f32 v96, null, v83, v83, v76
	v_div_fixup_f32 v81, v84, v83, v81
	v_fma_f32 v84, -v99, v94, v92
	v_fma_f32 v92, -v91, v85, v87
	v_mul_f32_e32 v98, v93, v89
	v_rcp_f32_e32 v99, v96
	v_fma_f32 v100, -v97, v86, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v85, v92, v88
	v_div_fmas_f32 v84, v84, v90, v94
	v_fma_f32 v90, -v95, v98, v93
	v_fmac_f32_e32 v86, v100, v86
	v_div_scale_f32 v92, s61, v73, v83, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v82, v84, v83, v82
	v_fma_f32 v94, -v96, v99, 1.0
	v_fma_f32 v84, -v91, v85, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v98, v90, v89 :: v_dual_mul_f32 v87, v92, v86
	v_div_scale_f32 v91, null, v83, v83, v72
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v99, v94, v99
	v_div_scale_f32 v90, s63, v76, v83, v76
	v_div_fmas_f32 v84, v84, v88, v85
	v_fma_f32 v85, -v95, v98, v93
	v_fma_f32 v88, -v97, v87, v92
	v_rcp_f32_e32 v93, v91
	v_div_scale_f32 v95, null, v83, v83, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v94, v90, v99 :: v_dual_fmac_f32 v87, v88, v86
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v85, v85, v89, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v89, -v96, v94, v90
	v_div_fixup_f32 v80, v84, v83, v80
	v_fma_f32 v98, -v91, v93, 1.0
	v_fma_f32 v84, -v97, v87, v92
	v_div_fixup_f32 v77, v85, v83, v77
	v_fmac_f32_e32 v94, v89, v99
	v_div_scale_f32 v85, s60, v72, v83, v72
	v_fmac_f32_e32 v93, v98, v93
	v_fma_f32 v89, -v95, v88, 1.0
	v_div_scale_f32 v92, null, v83, v83, v66
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v100, null, v83, v83, v60
	v_div_fmas_f32 v84, v84, v86, v87
	v_fma_f32 v86, -v96, v94, v90
	v_mul_f32_e32 v87, v85, v93
	v_fmac_f32_e32 v88, v89, v88
	v_rcp_f32_e32 v89, v92
	v_div_scale_f32 v90, s61, v69, v83, v69
	v_div_scale_f32 v96, null, v83, v83, v64
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v97, v90, v88
	v_div_fmas_f32 v86, v86, v99, v94
	v_fma_f32 v94, -v91, v87, v85
	v_rcp_f32_e32 v99, v96
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v92, v89, 1.0
	v_div_fixup_f32 v73, v84, v83, v73
	v_fma_f32 v84, -v95, v97, v90
	v_fmac_f32_e32 v87, v94, v93
	v_div_fixup_f32 v76, v86, v83, v76
	v_fmac_f32_e32 v89, v98, v89
	v_div_scale_f32 v86, s62, v66, v83, v66
	v_div_scale_f32 v94, null, v83, v83, v61
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v98, -v96, v99, 1.0
	v_fma_f32 v85, -v91, v87, v85
	v_fmac_f32_e32 v97, v84, v88
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v84, v86, v89
	v_rcp_f32_e32 v91, v94
	v_fmac_f32_e32 v99, v98, v99
	v_div_scale_f32 v98, s63, v64, v83, v64
	v_div_fmas_f32 v85, v85, v93, v87
	v_fma_f32 v87, -v95, v97, v90
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v90, -v92, v84, v86
	v_mul_f32_e32 v93, v98, v99
	v_div_fixup_f32 v72, v85, v83, v72
	v_div_fmas_f32 v87, v87, v88, v97
	v_rcp_f32_e32 v88, v100
	v_fma_f32 v95, -v94, v91, 1.0
	v_fmac_f32_e32 v84, v90, v89
	v_fma_f32 v90, -v96, v93, v98
	v_div_fixup_f32 v69, v87, v83, v69
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s60, v61, v83, v61
	v_fmac_f32_e32 v93, v90, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v100, v88, 1.0
	v_div_scale_f32 v90, null, v65, v65, v59
	v_fma_f32 v85, -v92, v84, v86
	v_mul_f32_e32 v86, v95, v91
	v_fmac_f32_e32 v88, v87, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v92, s61, v60, v83, v60
	v_div_fmas_f32 v84, v85, v89, v84
	v_fma_f32 v85, -v96, v93, v98
	v_fma_f32 v89, -v94, v86, v95
	v_div_scale_f32 v96, null, v65, v65, v56
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v66, v84, v83, v66
	v_fmac_f32_e32 v86, v89, v91
	v_rcp_f32_e32 v89, v96
	v_fma_f32 v97, -v90, v87, 1.0
	v_div_fmas_f32 v85, v85, v99, v93
	v_mul_f32_e32 v93, v92, v88
	v_fma_f32 v84, -v94, v86, v95
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v97, null, v65, v65, v52
	v_div_fixup_f32 v64, v85, v83, v64
	v_fma_f32 v85, -v100, v93, v92
	v_div_scale_f32 v94, s62, v59, v65, v59
	v_fma_f32 v95, -v96, v89, 1.0
	v_div_fmas_f32 v84, v84, v91, v86
	v_rcp_f32_e32 v86, v97
	v_fmac_f32_e32 v93, v85, v88
	v_mul_f32_e32 v85, v94, v87
	v_fmac_f32_e32 v89, v95, v89
	v_div_scale_f32 v91, s60, v56, v65, v56
	v_div_scale_f32 v95, null, v65, v65, v53
	v_div_fixup_f32 v61, v84, v83, v61
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
	v_div_scale_f32 v92, s61, v52, v65, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v60, v84, v83, v60
	v_fma_f32 v93, -v95, v99, 1.0
	v_fma_f32 v83, -v90, v85, v94
	v_fmac_f32_e32 v98, v88, v89
	v_mul_f32_e32 v84, v92, v86
	v_div_scale_f32 v90, null, v65, v65, v49
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v99, v93, v99
	v_div_scale_f32 v88, s63, v53, v65, v53
	v_div_fmas_f32 v83, v83, v87, v85
	v_fma_f32 v85, -v96, v98, v91
	v_fma_f32 v87, -v97, v84, v92
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v94, null, v65, v65, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v93, v88, v99 :: v_dual_fmac_f32 v84, v87, v86
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v87, v94
	v_div_fmas_f32 v85, v85, v89, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v89, -v95, v93, v88
	v_div_fixup_f32 v59, v83, v65, v59
	v_fma_f32 v96, -v90, v91, 1.0
	v_fma_f32 v83, -v97, v84, v92
	v_div_fixup_f32 v56, v85, v65, v56
	v_fmac_f32_e32 v93, v89, v99
	v_div_scale_f32 v85, s60, v49, v65, v49
	v_fmac_f32_e32 v91, v96, v91
	v_fma_f32 v89, -v94, v87, 1.0
	v_div_scale_f32 v92, null, v65, v65, v45
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v86, v84
	v_fma_f32 v84, -v95, v93, v88
	v_mul_f32_e32 v86, v85, v91
	v_fmac_f32_e32 v87, v89, v87
	v_rcp_f32_e32 v88, v92
	v_div_scale_f32 v89, s61, v48, v65, v48
	v_div_scale_f32 v95, null, v65, v65, v44
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v96, v89, v87
	v_div_fmas_f32 v84, v84, v99, v93
	v_fma_f32 v93, -v90, v86, v85
	v_rcp_f32_e32 v98, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v92, v88, 1.0
	v_div_fixup_f32 v52, v83, v65, v52
	v_fma_f32 v83, -v94, v96, v89
	v_fmac_f32_e32 v86, v93, v91
	v_div_scale_f32 v93, null, v65, v65, v40
	v_div_fixup_f32 v53, v84, v65, v53
	v_fmac_f32_e32 v88, v97, v88
	v_div_scale_f32 v84, s62, v45, v65, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v95, v98, 1.0
	v_fma_f32 v85, -v90, v86, v85
	v_fmac_f32_e32 v96, v83, v87
	v_rcp_f32_e32 v90, v93
	s_mov_b32 vcc_lo, s60
	v_dual_mul_f32 v83, v84, v88 :: v_dual_fmac_f32 v98, v97, v98
	v_div_scale_f32 v97, s63, v44, v65, v44
	v_div_fmas_f32 v85, v85, v91, v86
	v_fma_f32 v86, -v94, v96, v89
	v_div_scale_f32 v99, null, v65, v65, v42
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v89, -v92, v83, v84
	v_mul_f32_e32 v91, v97, v98
	v_fma_f32 v94, -v93, v90, 1.0
	v_div_fmas_f32 v86, v86, v87, v96
	v_rcp_f32_e32 v87, v99
	v_fmac_f32_e32 v83, v89, v88
	v_fma_f32 v89, -v95, v91, v97
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s60, v40, v65, v40
	v_div_fixup_f32 v49, v85, v65, v49
	v_div_fixup_f32 v48, v86, v65, v48
	v_fma_f32 v84, -v92, v83, v84
	v_fmac_f32_e32 v91, v89, v98
	v_mul_f32_e32 v85, v94, v90
	v_fma_f32 v86, -v99, v87, 1.0
	v_div_scale_f32 v89, null, v65, v65, v38
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v92, s61, v42, v65, v42
	v_div_fmas_f32 v83, v84, v88, v83
	v_fma_f32 v84, -v95, v91, v97
	v_fma_f32 v88, -v93, v85, v94
	v_fmac_f32_e32 v87, v86, v87
	v_rcp_f32_e32 v86, v89
	v_div_scale_f32 v95, null, v65, v65, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v88, v90
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v45, v83, v65, v45
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v84, v84, v98, v91
	v_mul_f32_e32 v91, v92, v87
	v_fma_f32 v83, -v93, v85, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v89, v86, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v44, v84, v65, v44
	v_fma_f32 v84, -v99, v91, v92
	v_div_scale_f32 v93, s62, v38, v65, v38
	v_fmac_f32_e32 v86, v96, v86
	v_fma_f32 v94, -v95, v88, 1.0
	v_div_scale_f32 v96, null, v65, v65, v36
	v_div_fmas_f32 v83, v83, v90, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v84, v87 :: v_dual_fmac_f32 v88, v94, v88
	v_rcp_f32_e32 v85, v96
	v_div_scale_f32 v94, null, v65, v65, v35
	v_mul_f32_e32 v84, v93, v86
	v_div_scale_f32 v90, s60, v37, v65, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v98, v94
	v_div_fixup_f32 v40, v83, v65, v40
	v_fma_f32 v83, -v99, v91, v92
	v_fma_f32 v92, -v89, v84, v93
	v_mul_f32_e32 v97, v90, v88
	v_fma_f32 v99, -v96, v85, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v87, v91
	v_fmac_f32_e32 v84, v92, v86
	v_fma_f32 v87, -v95, v97, v90
	v_fmac_f32_e32 v85, v99, v85
	v_div_scale_f32 v91, s61, v36, v65, v36
	v_fma_f32 v92, -v94, v98, 1.0
	v_div_fixup_f32 v42, v83, v65, v42
	v_fma_f32 v83, -v89, v84, v93
	v_fmac_f32_e32 v97, v87, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v87, v91, v85 :: v_dual_fmac_f32 v98, v92, v98
	v_div_scale_f32 v92, null, v65, v65, v33
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v89, s63, v35, v65, v35
	v_div_fmas_f32 v83, v83, v86, v84
	v_fma_f32 v84, -v95, v97, v90
	v_fma_f32 v86, -v96, v87, v91
	v_rcp_f32_e32 v90, v92
	v_div_scale_f32 v95, null, v65, v65, v34
	v_mul_f32_e32 v93, v89, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v86, v85
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v86, v95
	v_div_fmas_f32 v84, v84, v88, v97
	v_fma_f32 v88, -v94, v93, v89
	v_div_fixup_f32 v38, v83, v65, v38
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v92, v90, 1.0
	v_fma_f32 v83, -v96, v87, v91
	v_div_fixup_f32 v37, v84, v65, v37
	v_fmac_f32_e32 v93, v88, v98
	v_div_scale_f32 v84, s60, v33, v65, v33
	v_fmac_f32_e32 v90, v97, v90
	v_fma_f32 v88, -v95, v86, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v96, null, v39, v39, v31
	v_div_fmas_f32 v83, v83, v85, v87
	v_fma_f32 v85, -v94, v93, v89
	v_mul_f32_e32 v87, v84, v90
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, null, v39, v39, v32
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v89, s61, v34, v65, v34
	v_div_fmas_f32 v85, v85, v98, v93
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v93, -v92, v87, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v94, v89, v86
	v_div_fixup_f32 v36, v83, v65, v36
	v_div_fixup_f32 v35, v85, v65, v35
	v_rcp_f32_e32 v85, v96
	v_fmac_f32_e32 v87, v93, v90
	v_fma_f32 v83, -v95, v94, v89
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v98, null, v39, v39, v29
	v_fma_f32 v93, -v88, v91, 1.0
	v_fma_f32 v84, -v92, v87, v84
	v_div_scale_f32 v92, null, v39, v39, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v83, v86 :: v_dual_fmac_f32 v91, v93, v91
	v_div_scale_f32 v83, s62, v32, v39, v32
	v_rcp_f32_e32 v93, v92
	v_fma_f32 v97, -v96, v85, 1.0
	v_div_fmas_f32 v84, v84, v90, v87
	v_fma_f32 v87, -v95, v94, v89
	v_mul_f32_e32 v89, v83, v91
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v85, v97, v85
	v_div_scale_f32 v90, s60, v31, v39, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v97, -v88, v89, v83
	v_fma_f32 v95, -v92, v93, 1.0
	v_rcp_f32_e32 v100, v98
	v_div_fmas_f32 v86, v87, v86, v94
	v_mul_f32_e32 v99, v90, v85
	v_fmac_f32_e32 v89, v97, v91
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v95, s63, v30, v39, v30
	v_div_fixup_f32 v33, v84, v65, v33
	v_div_fixup_f32 v34, v86, v65, v34
	v_fma_f32 v65, -v88, v89, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v94, v95, v93
	v_div_scale_f32 v86, null, v39, v39, v28
	v_fma_f32 v87, -v96, v99, v90
	v_fma_f32 v84, -v98, v100, 1.0
	v_fma_f32 v83, -v92, v94, v95
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v99, v87, v85 :: v_dual_fmac_f32 v100, v84, v100
	v_fmac_f32_e32 v94, v83, v93
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v84, s61, v29, v39, v29
	v_div_fmas_f32 v65, v65, v91, v89
	v_fma_f32 v87, -v96, v99, v90
	v_div_scale_f32 v89, null, v39, v39, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v88, v84, v100
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v32, v65, v39, v32
	v_fma_f32 v90, -v86, v83, 1.0
	v_div_fmas_f32 v85, v87, v85, v99
	v_fma_f32 v87, -v92, v94, v95
	v_rcp_f32_e32 v91, v89
	v_fma_f32 v92, -v98, v88, v84
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v90, s60, v28, v39, v28
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v88, v92, v100
	v_div_fmas_f32 v87, v87, v93, v94
	v_mul_f32_e32 v65, v90, v83
	v_div_fixup_f32 v31, v85, v39, v31
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v89, v91, 1.0
	v_fma_f32 v84, -v98, v88, v84
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v92, -v86, v65, v90
	v_div_fixup_f32 v30, v87, v39, v30
	v_div_scale_f32 v87, null, v39, v39, v25
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v85, s62, v27, v39, v27
	v_div_fmas_f32 v84, v84, v100, v88
	v_fmac_f32_e32 v65, v92, v83
	v_rcp_f32_e32 v93, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v88, v85, v91
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v29, v84, v39, v29
	v_fma_f32 v84, -v86, v65, v90
	v_div_scale_f32 v92, null, v39, v39, v24
	v_fma_f32 v86, -v89, v88, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v65, v84, v83, v65
	v_div_scale_f32 v83, null, v39, v39, v22
	v_fma_f32 v90, -v87, v93, 1.0
	v_rcp_f32_e32 v94, v92
	v_fmac_f32_e32 v88, v86, v91
	v_rcp_f32_e32 v86, v83
	v_div_scale_f32 v84, s60, v25, v39, v25
	v_fmac_f32_e32 v93, v90, v93
	v_div_scale_f32 v90, null, v39, v39, v26
	v_div_fixup_f32 v28, v65, v39, v28
	v_fma_f32 v85, -v89, v88, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v92, v94, 1.0
	v_rcp_f32_e32 v96, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v83, v86, 1.0
	v_mul_f32_e32 v89, v84, v93
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v94, v65, v94
	v_div_scale_f32 v65, s61, v24, v39, v24
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v95, null, v39, v39, v23
	v_div_fmas_f32 v85, v85, v91, v88
	v_fma_f32 v88, -v87, v89, v84
	v_mul_f32_e32 v91, v65, v94
	v_div_scale_f32 v97, s62, v22, v39, v22
	v_fma_f32 v98, -v90, v96, 1.0
	v_rcp_f32_e32 v99, v95
	v_fmac_f32_e32 v89, v88, v93
	v_fma_f32 v88, -v92, v91, v65
	v_mul_f32_e32 v100, v97, v86
	v_fmac_f32_e32 v96, v98, v96
	v_div_scale_f32 v98, s63, v26, v39, v26
	v_div_fixup_f32 v27, v85, v39, v27
	v_fma_f32 v84, -v87, v89, v84
	v_fmac_f32_e32 v91, v88, v94
	v_fma_f32 v85, -v83, v100, v97
	v_mul_f32_e32 v87, v98, v96
	v_fma_f32 v88, -v95, v99, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v65, -v92, v91, v65
	v_fmac_f32_e32 v100, v85, v86
	v_fma_f32 v85, -v90, v87, v98
	v_fmac_f32_e32 v99, v88, v99
	v_div_scale_f32 v88, s60, v23, v39, v23
	v_div_fmas_f32 v84, v84, v93, v89
	v_div_scale_f32 v89, null, v39, v39, v21
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v83, -v83, v100, v97
	v_fmac_f32_e32 v87, v85, v96
	v_mul_f32_e32 v85, v88, v99
	v_div_fmas_f32 v65, v65, v94, v91
	v_rcp_f32_e32 v91, v89
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v25, v84, v39, v25
	v_div_fmas_f32 v83, v83, v86, v100
	v_fma_f32 v86, -v90, v87, v98
	v_fma_f32 v90, -v95, v85, v88
	v_div_fixup_f32 v24, v65, v39, v24
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v22, v83, v39, v22
	v_div_scale_f32 v83, null, v39, v39, v20
	v_fmac_f32_e32 v85, v90, v99
	v_fma_f32 v84, -v89, v91, 1.0
	v_div_fmas_f32 v86, v86, v96, v87
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v93, null, v39, v39, v19
	v_fma_f32 v65, -v95, v85, v88
	v_fmac_f32_e32 v91, v84, v91
	v_div_scale_f32 v84, null, v39, v39, v17
	v_div_fixup_f32 v26, v86, v39, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v65, v65, v99, v85
	v_rcp_f32_e32 v85, v83
	v_rcp_f32_e32 v88, v84
	v_div_scale_f32 v87, vcc_lo, v21, v39, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v23, v65, v39, v23
	v_div_scale_f32 v86, null, v39, v39, v18
	v_mul_f32_e32 v92, v87, v91
	v_rcp_f32_e32 v95, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v65, -v83, v85, 1.0
	v_fma_f32 v94, -v84, v88, 1.0
	v_fma_f32 v96, -v89, v92, v87
	v_rcp_f32_e32 v90, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v65, v85
	v_div_scale_f32 v65, s60, v20, v39, v20
	v_fmac_f32_e32 v88, v94, v88
	v_div_scale_f32 v94, s61, v17, v39, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v98, v65, v85
	v_fmac_f32_e32 v92, v96, v91
	v_fma_f32 v97, -v86, v90, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v100, v94, v88
	v_fma_f32 v99, -v93, v95, 1.0
	v_fma_f32 v96, -v83, v98, v65
	v_fma_f32 v87, -v89, v92, v87
	v_fmac_f32_e32 v90, v97, v90
	v_fma_f32 v89, -v84, v100, v94
	v_div_scale_f32 v97, s62, v18, v39, v18
	v_fmac_f32_e32 v98, v96, v85
	v_div_fmas_f32 v87, v87, v91, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v100, v89, v88
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	v_fma_f32 v65, -v83, v98, v65
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v25, v25, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v84, v100, v94
	v_mul_f32_e32 v101, v97, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v65, v65, v85, v98
	s_mov_b32 vcc_lo, s61
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v56, v56, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v84, v84, v88, v100
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v100, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v99, v95
	v_div_scale_f32 v99, s63, v19, v39, v19
	v_fma_f32 v96, -v86, v101, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s60, 0x40e00000
	v_med3_f32 v23, v23, s60, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v102, v99, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v103, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v101, v96, v90
	v_fma_f32 v83, -v93, v102, v99
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v104, v23
	v_and_b32_e32 v23, 15, v56
	v_and_b32_e32 v56, 15, v103
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v21, v87, v39, v21
	v_fmac_f32_e32 v102, v83, v95
	v_fma_f32 v83, -v86, v101, v97
	v_div_fixup_f32 v20, v65, v39, v20
	v_div_fixup_f32 v17, v84, v39, v17
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v93, v102, v99
	v_div_fmas_f32 v83, v83, v90, v101
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v73, v73, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v85, v85, v95, v102
	v_div_fixup_f32 v18, v83, v39, v18
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v19, v85, v39, v19
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v41
	v_rndne_f32_e32 v41, v43
	v_rndne_f32_e32 v43, v46
	v_rndne_f32_e32 v46, v47
	v_rndne_f32_e32 v47, v50
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v54
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v57
	v_rndne_f32_e32 v57, v58
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v50, v50, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v62
	v_rndne_f32_e32 v62, v63
	v_rndne_f32_e32 v63, v67
	v_rndne_f32_e32 v67, v70
	v_rndne_f32_e32 v70, v74
	v_rndne_f32_e32 v74, v78
	v_rndne_f32_e32 v78, v81
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v17, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v83, v73
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_med3_f32 v78, v78, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v91, v37
	v_and_b32_e32 v37, 15, v50
	v_and_b32_e32 v50, 15, v83
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v83, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v68
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v32, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v93, v33
	v_cvt_i32_f32_e32 v99, v27
	v_cvt_i32_f32_e32 v109, v17
	v_and_b32_e32 v17, 15, v39
	v_and_b32_e32 v33, 15, v47
	v_and_b32_e32 v27, 15, v52
	v_and_b32_e32 v39, 15, v48
	v_and_b32_e32 v47, 15, v44
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v44, 13, v0
	v_lshlrev_b32_e32 v48, 8, v83
	v_and_b32_e32 v52, 64, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v68, v71
	v_rndne_f32_e32 v71, v75
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_cvt_i32_f32_e32 v94, v34
	v_cvt_i32_f32_e32 v110, v18
	v_and_b32_e32 v18, 15, v70
	v_and_b32_e32 v34, 15, v78
	v_and_b32_e32 v70, 15, v64
	v_and_b32_e32 v78, 15, v60
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v60, 3, v108
	v_and_or_b32 v64, 0xe000, v44, v48
	v_xor_b32_e32 v13, v13, v52
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v79
	v_rndne_f32_e32 v79, v82
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v35, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v21, v21
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_cvt_i32_f32_e32 v81, v65
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v13, v64, v60, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	v_rndne_f32_e32 v38, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v79, v79, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v87, v49
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v98, v28
	v_med3_f32 v24, v24, s60, 0x40e00000
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v84, v69
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v95, v31
	v_cvt_i32_f32_e32 v102, v22
	v_cvt_i32_f32_e32 v106, v20
	v_cvt_i32_f32_e32 v111, v19
	v_and_b32_e32 v69, 15, v81
	v_and_b32_e32 v19, 15, v59
	v_and_b32_e32 v20, 15, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v81, 0, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v79, v79
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v92, v35
	v_and_b32_e32 v73, 15, v67
	v_and_b32_e32 v35, 15, v87
	v_and_b32_e32 v67, 15, v36
	v_and_b32_e32 v36, 15, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v30, v30
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v101, v24
	v_cvt_i32_f32_e32 v105, v21
	v_and_b32_e32 v21, 15, v41
	v_and_b32_e32 v41, 15, v51
	v_and_b32_e32 v49, 15, v55
	v_and_b32_e32 v22, 15, v71
	v_and_b32_e32 v51, 15, v40
	v_and_b32_e32 v24, 15, v95
	v_and_b32_e32 v52, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v81, v[17:20]
	ds_store_b128 v81, v[33:36] offset:256
	v_xad_u32 v17, v13, 16, 0
	v_lshlrev_b32_e32 v18, 6, v0
	v_cndmask_b32_e64 v19, 0x2010, 0, s2
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v80, v80
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v45, v45
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v77
	v_cvt_i32_f32_e32 v90, v38
	v_and_b32_e32 v65, 15, v63
	v_and_b32_e32 v77, 15, v68
	v_and_b32_e32 v38, 15, v79
	v_and_b32_e32 v66, 15, v66
	v_and_b32_e32 v40, 15, v99
	v_and_b32_e32 v68, 15, v106
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v29, v29
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v30, v30, s60, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v81, v[49:52] offset:2048
	ds_store_b128 v81, v[65:68] offset:2304
	ds_store_b128 v17, v[21:24]
	ds_store_b128 v17, v[37:40] offset:256
	v_lshlrev_b32_e32 v21, 2, v83
	v_and_or_b32 v11, 0x300, v18, v11
	v_xor_b32_e32 v12, v19, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v80, v80, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v89, v42
	v_cvt_i32_f32_e32 v96, v30
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v11, v12, v11, v21
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v80, v80
	v_cvt_i32_f32_e32 v85, v61
	v_cvt_i32_f32_e32 v88, v45
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v86, v53
	v_cvt_i32_f32_e32 v97, v29
	v_and_b32_e32 v25, 15, v43
	v_and_b32_e32 v45, 15, v54
	v_and_b32_e32 v53, 15, v57
	v_and_b32_e32 v57, 15, v58
	v_and_b32_e32 v61, 15, v62
	v_and_b32_e32 v26, 15, v74
	v_and_b32_e32 v54, 15, v76
	v_and_b32_e32 v58, 15, v72
	v_and_b32_e32 v62, 15, v84
	v_and_b32_e32 v55, 15, v89
	v_and_b32_e32 v59, 15, v90
	v_and_b32_e32 v63, 15, v91
	v_and_b32_e32 v28, 15, v96
	v_and_b32_e32 v60, 15, v104
	v_and_b32_e32 v64, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v20, v13, 32, 0
	v_xad_u32 v13, v13, 48, 0
	v_add_nc_u32_e32 v12, 0, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v30, 15, v75
	v_and_b32_e32 v42, 15, v80
	v_and_b32_e32 v74, 15, v85
	v_and_b32_e32 v43, 15, v88
	v_and_b32_e32 v71, 15, v92
	v_and_b32_e32 v75, 15, v93
	v_and_b32_e32 v79, 15, v94
	v_and_b32_e32 v44, 15, v100
	v_and_b32_e32 v72, 15, v109
	v_and_b32_e32 v76, 15, v110
	v_and_b32_e32 v80, 15, v111
	v_and_b32_e32 v29, 15, v46
	v_and_b32_e32 v31, 15, v86
	v_and_b32_e32 v32, 15, v97
	v_and_b32_e32 v46, 15, v82
	v_and_b32_e32 v48, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v17, v[53:56] offset:2048
	ds_store_b128 v17, v[69:72] offset:2304
	ds_store_b128 v20, v[25:28]
	ds_store_b128 v20, v[41:44] offset:256
	ds_store_b128 v20, v[57:60] offset:2048
	ds_store_b128 v20, v[73:76] offset:2304
	ds_store_b128 v13, v[29:32]
	ds_store_b128 v13, v[45:48] offset:256
	ds_store_b128 v13, v[61:64] offset:2048
	ds_store_b128 v13, v[77:80] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v12
	ds_load_b128 v[21:24], v12 offset:128
	ds_load_b128 v[25:28], v12 offset:4096
	ds_load_b128 v[29:32], v12 offset:4224
	v_xad_u32 v12, 0x8040, v11, 0
	v_xad_u32 v13, 0x4020, v11, 0
	v_xad_u32 v11, 0xc060, v11, 0
	ds_load_b128 v[49:52], v12
	ds_load_b128 v[53:56], v12 offset:128
	ds_load_b128 v[57:60], v12 offset:4096
	ds_load_b128 v[61:64], v12 offset:4224
	ds_load_b128 v[65:68], v11 offset:4096
	ds_load_b128 v[69:72], v11
	ds_load_b128 v[73:76], v11 offset:128
	ds_load_b128 v[77:80], v11 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v11, s2, s78, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v12, null, s79, 0, s2
	v_add_co_u32 v81, s2, s78, v10
	v_add_co_ci_u32_e64 v82, null, s79, 0, s2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[76:77], v[5:6]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, v10, v7
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[33:36], v13
	ds_load_b128 v[37:40], v13 offset:128
	ds_load_b128 v[41:44], v13 offset:4096
	ds_load_b128 v[45:48], v13 offset:4224
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v5, s80, 7, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[74:75], v[81:82]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v49, v57, 4, v49
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 6, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v57, v65, 4, v69
	v_lshl_or_b32 v69, v26, 4, v18
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 8, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v70, v27, 4, v19
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 10, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v67, 4, v71
	v_lshl_or_b32 v71, v28, 4, v20
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 12, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v29, 4, v21
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 14, v6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[76:77], v[81:82]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v81, v25, 4, v17
	v_lshl_or_b32 v66, v30, 4, v22
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 16, v6
	v_mad_u64_u32 v[16:17], null, v16, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v31, 4, v23
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v23, 18, v6
	v_mad_u64_u32 v[17:18], null, v18, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v68, 4, v72
	v_lshl_or_b32 v68, v32, 4, v24
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v24, 20, v6
	v_mad_u64_u32 v[18:19], null, v19, s73, v[5:6]
	v_add_nc_u32_e32 v25, 22, v6
	v_mad_u64_u32 v[19:20], null, v20, s73, v[5:6]
	v_add_nc_u32_e32 v26, 24, v6
	v_mad_u64_u32 v[20:21], null, v21, s73, v[5:6]
	v_add_nc_u32_e32 v27, 26, v6
	v_mad_u64_u32 v[21:22], null, v22, s73, v[5:6]
	v_add_nc_u32_e32 v28, 28, v6
	v_mad_u64_u32 v[22:23], null, v23, s73, v[5:6]
	v_add_nc_u32_e32 v29, 30, v6
	v_mad_u64_u32 v[23:24], null, v24, s73, v[5:6]
	v_add_nc_u32_e32 v30, 32, v6
	v_mad_u64_u32 v[24:25], null, v25, s73, v[5:6]
	v_add_nc_u32_e32 v31, 34, v6
	v_mad_u64_u32 v[25:26], null, v26, s73, v[5:6]
	v_add_nc_u32_e32 v32, 36, v6
	v_mad_u64_u32 v[26:27], null, v27, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v82, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 38, v6
	v_mad_u64_u32 v[27:28], null, v28, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
	v_lshl_or_b32 v61, v77, 4, v73
	v_lshl_or_b32 v73, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 40, v6
	v_mad_u64_u32 v[28:29], null, v29, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v54
	v_lshl_or_b32 v62, v78, 4, v74
	v_lshl_or_b32 v74, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v35, 42, v6
	v_mad_u64_u32 v[29:30], null, v30, s73, v[5:6]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[74:75], v[11:12]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[76:77], v[11:12]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v55, v63, 4, v55
	v_lshl_or_b32 v63, v79, 4, v75
	v_lshl_or_b32 v75, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 2, v6
	v_add_nc_u32_e32 v36, 44, v6
	v_mad_u64_u32 v[30:31], null, v31, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v45, v45, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v37, 46, v6
	v_mad_u64_u32 v[31:32], null, v32, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 4, v6
	v_add_nc_u32_e32 v38, 48, v6
	v_mad_u64_u32 v[32:33], null, v33, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v47, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v39, 50, v6
	v_mad_u64_u32 v[33:34], null, v34, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v48, 4, v40
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v40, 52, v6
	v_mad_u64_u32 v[10:11], null, v6, s73, v[5:6]
	v_mad_u64_u32 v[34:35], null, v35, s73, v[5:6]
	v_add_nc_u32_e32 v41, 54, v6
	v_mad_u64_u32 v[11:12], null, v12, s73, v[5:6]
	v_mad_u64_u32 v[35:36], null, v36, s73, v[5:6]
	v_add_nc_u32_e32 v42, 56, v6
	v_mad_u64_u32 v[36:37], null, v37, s73, v[5:6]
	v_add_nc_u32_e32 v8, 58, v6
	v_mad_u64_u32 v[12:13], null, v13, s73, v[5:6]
	v_mad_u64_u32 v[37:38], null, v38, s73, v[5:6]
	v_mad_u64_u32 v[38:39], null, v39, s73, v[5:6]
	v_add_nc_u32_e32 v44, 60, v6
	v_add_nc_u32_e32 v72, 62, v6
	v_mad_u64_u32 v[39:40], null, v40, s73, v[5:6]
	v_mad_u64_u32 v[40:41], null, v41, s73, v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[41:42], null, v42, s73, v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[42:43], null, v8, s73, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v8, 0x80000000, v10, s62
	v_cndmask_b32_e64 v10, 0x80000000, v11, s60
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[43:44], null, v44, s73, v[5:6]
	v_mad_u64_u32 v[5:6], null, v72, s73, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v81, v8, s[68:71], 0 offen
	buffer_store_b8 v82, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v8, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v56, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v80, 4, v76
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s72, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v49, v6, s[68:71], 0 offen
	buffer_store_b8 v57, v8, s[68:71], 0 offen
	buffer_store_b8 v65, v10, s[68:71], 0 offen
	buffer_store_b8 v45, v11, s[68:71], 0 offen
	buffer_store_b8 v53, v12, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s2, s2, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v10, 0x80000000, v22 :: v_dual_add_nc_u32 v7, v9, v7
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v61, v6, s[68:71], 0 offen
	buffer_store_b8 v69, v8, s[68:71], 0 offen
	buffer_store_b8 v73, v10, s[68:71], 0 offen
	buffer_store_b8 v50, v11, s[68:71], 0 offen
	buffer_store_b8 v58, v12, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v66, v6, s[68:71], 0 offen
	buffer_store_b8 v46, v8, s[68:71], 0 offen
	buffer_store_b8 v54, v10, s[68:71], 0 offen
	buffer_store_b8 v62, v11, s[68:71], 0 offen
	buffer_store_b8 v70, v12, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v74, v6, s[68:71], 0 offen
	buffer_store_b8 v51, v8, s[68:71], 0 offen
	buffer_store_b8 v59, v10, s[68:71], 0 offen
	buffer_store_b8 v67, v11, s[68:71], 0 offen
	buffer_store_b8 v47, v12, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v12, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v55, v6, s[68:71], 0 offen
	buffer_store_b8 v63, v8, s[68:71], 0 offen
	buffer_store_b8 v71, v10, s[68:71], 0 offen
	buffer_store_b8 v75, v11, s[68:71], 0 offen
	buffer_store_b8 v52, v12, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v40, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v41, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v42, vcc_lo
	s_clause 0x2
	buffer_store_b8 v60, v6, s[68:71], 0 offen
	buffer_store_b8 v68, v8, s[68:71], 0 offen
	buffer_store_b8 v48, v10, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v8, 4, v0
	v_lshrrev_b32_e32 v10, 2, v83
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshlrev_b32_e32 v6, 3, v107
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v43, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_and_b32 v8, 2, v8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v10, 0, v10
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v56, v11, s[68:71], 0 offen
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s72, s2
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v64, v5, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v6
	v_add3_u32 v6, v10, v8, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v5, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v3, v6
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v4, v7, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_cmp_eq_u32_e64 s1, 0, v0
	s_and_b32 s69, s67, 0xffff
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
.Ltmp87:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 192
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 192
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16436
; TotalNumSgprs: 83
; NumVgprs: 192
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 83
; NumVGPRsForWavesPerEU: 192
; Occupancy: 8
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
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
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
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     192
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
