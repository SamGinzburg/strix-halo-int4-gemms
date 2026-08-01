	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s74, s[0:1], 0x54
	s_load_b64 s[38:39], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v10, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s74, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s39, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v0
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s75, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s75, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[68:69], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[70:71], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[72:73], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s38, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s69, 0, s2
	v_add_nc_u32_e32 v9, s68, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[2:3]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s68, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow
	s_load_b128 s[64:67], s[0:1], 0x40
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v108, 15, v0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v65, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v68, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s76, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s68, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s6
	s_clause 0x1
	s_load_b32 s37, s[0:1], 0x58
	s_load_b32 s39, s[0:1], 0x50
	v_add_co_u32 v3, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[1:2]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[3:4]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s7, s[2:3], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[1:2]
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v1, s68, v108
	v_cmp_gt_i64_e64 s4, s[72:73], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v41, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v12, s75, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v2, 16, v1
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v11, v12 :: v_dual_add_nc_u32 v4, 48, v1
	v_mul_lo_u32 v1, v1, s38
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[70:71], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[72:73], v[5:6]
	v_or_b32_e32 v5, 0x7f0, v0
	v_or_b32_e32 v6, 0xb00, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[7:8]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[7:8]
	v_or_b32_e32 v7, 0xf00, v0
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s38
	v_or_b32_e32 v8, 0x1300, v0
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v46, 0, v108
	v_or_b32_e32 v13, 0x1700, v0
	v_or_b32_e32 v14, 0x1b00, v0
	v_dual_mov_b32 v119, 0 :: v_dual_and_b32 v10, 0xf0, v0
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v3, s38
	v_or_b32_e32 v3, 0x3f0, v0
	v_or_b32_e32 v15, 0x1f00, v0
	v_dual_mov_b32 v115, 0 :: v_dual_lshlrev_b32 v16, 2, v10
	v_mov_b32_e32 v121, 0
	v_dual_mov_b32 v112, 0 :: v_dual_lshlrev_b32 v17, 1, v0
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v4, s38
	v_lshrrev_b32_e32 v4, 1, v0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v100, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s3, s37, s74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v4, 0x70, v4
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 0x300, v0
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v61, v46, v4
	v_mov_b32_e32 v114, 0
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v95, 0, v1
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v1, 0, v3
	scratch_store_b64 off, v[11:12], off offset:16 ; 8-byte Folded Spill
	v_mov_b32_e32 v94, 0
	v_lshlrev_b32_e32 v4, 5, v0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[11:12], null, s3, s7, v[12:13]
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v1, 0, v5
	v_and_b32_e32 v4, 32, v4
	v_dual_mov_b32 v111, 0 :: v_dual_and_b32 v12, 28, v17
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v1, 0, v6
	v_add3_u32 v4, 0, v16, v4
	v_or_b32_e32 v2, 0x700, v0
	v_mov_b32_e32 v88, 0
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v7
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[26:27], null, s74, 20, v[11:12]
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v97, 0, v2
	v_mov_b32_e32 v102, 0
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v1, 0, v8
	v_mad_u64_u32 v[27:28], null, s74, 21, v[11:12]
	v_mad_u64_u32 v[28:29], null, s74, 22, v[11:12]
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v13
	v_mad_u64_u32 v[29:30], null, s74, 23, v[11:12]
	v_mad_u64_u32 v[30:31], null, s74, 24, v[11:12]
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v14
	v_mad_u64_u32 v[31:32], null, s74, 25, v[11:12]
	v_mad_u64_u32 v[32:33], null, s74, 26, v[11:12]
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v15
	v_mad_u64_u32 v[33:34], null, s74, 27, v[11:12]
	v_mad_u64_u32 v[34:35], null, s74, 28, v[11:12]
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v4, v12
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v16, 1, v10
	v_mad_u64_u32 v[35:36], null, s74, 29, v[11:12]
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s74, 3, v[11:12]
	s_mov_b32 s40, 0
	v_mad_u64_u32 v[36:37], null, s74, 30, v[11:12]
	v_mad_u64_u32 v[37:38], null, s74, 31, v[11:12]
	s_mov_b32 s41, s40
	scratch_store_b64 off, v[1:2], off offset:60 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s74, 5, v[11:12]
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	scratch_store_b64 off, v[1:2], off offset:68 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s74, 6, v[11:12]
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v93, 0, v0
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v118, 0, v16
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v82, 0
	scratch_store_b64 off, v[1:2], off offset:76 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s74, 7, v[11:12]
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v76, 0
	scratch_store_b64 off, v[1:2], off offset:84 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s74, 9, v[11:12]
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v70, 0
	scratch_store_b64 off, v[1:2], off offset:92 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s74, 10, v[11:12]
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v64, 0
	scratch_store_b64 off, v[1:2], off offset:100 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s74, 11, v[11:12]
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	scratch_store_b64 off, v[1:2], off offset:108 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s74, 12, v[11:12]
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	scratch_store_b64 off, v[1:2], off offset:116 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s74, 13, v[11:12]
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v63, 0
	scratch_store_b64 off, v[1:2], off offset:124 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s74, 14, v[11:12]
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	s_and_b32 s1, s1, s5
	s_and_b32 s2, s2, s6
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b64 off, v[1:2], off offset:132 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s74, 15, v[11:12]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s77, s38, s7
	s_and_b32 s61, s11, 0xffff
	s_and_b32 s49, s13, 0xffff
	s_mov_b32 s48, s12
	s_and_b32 s53, s15, 0xffff
	s_mov_b32 s52, s14
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b64 off, v[1:2], off offset:140 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s74, 17, v[11:12]
	s_mov_b32 s56, s8
	s_mov_b32 s57, s9
	s_mov_b32 s58, s50
	s_mov_b32 s59, s51
	s_mov_b32 s60, s10
	s_mov_b32 s62, s50
	scratch_store_b64 off, v[1:2], off offset:148 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s74, 18, v[11:12]
	s_mov_b32 s63, s51
	s_mov_b32 s78, s40
	scratch_store_b64 off, v[1:2], off offset:156 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s74, 19, v[11:12]
	scratch_store_b64 off, v[1:2], off offset:164 ; 8-byte Folded Spill
	v_dual_mov_b32 v1, s40 :: v_dual_mov_b32 v6, s45
	v_dual_mov_b32 v2, s41 :: v_dual_mov_b32 v3, s42
	v_mov_b32_e32 v8, s47
	v_dual_mov_b32 v4, s43 :: v_dual_mov_b32 v5, s44
	v_mov_b32_e32 v7, s46
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b64 v[12:13], off, off offset:60 ; 8-byte Folded Reload
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s5, s78, 5
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v38, s74, v11
	s_mul_i32 s54, s5, s74
	s_or_b32 s4, s5, 1
	s_or_b32 s7, s5, 2
	s_or_b32 s6, s5, 3
	s_or_b32 s11, s5, 4
	s_or_b32 s9, s5, 5
	s_or_b32 s8, s5, 6
	s_or_b32 s10, s5, 7
	s_or_b32 s12, s5, 8
	s_or_b32 s13, s5, 9
	s_or_b32 s14, s5, 10
	s_or_b32 s15, s5, 11
	s_or_b32 s16, s5, 12
	s_or_b32 s17, s5, 13
	s_or_b32 s18, s5, 14
	s_or_b32 s19, s5, 15
	s_or_b32 s20, s5, 16
	s_or_b32 s21, s5, 17
	s_or_b32 s22, s5, 18
	s_or_b32 s23, s5, 19
	s_or_b32 s24, s5, 20
	s_or_b32 s25, s5, 21
	s_or_b32 s26, s5, 22
	s_or_b32 s27, s5, 23
	s_or_b32 s28, s5, 24
	s_or_b32 s29, s5, 25
	s_or_b32 s30, s5, 26
	s_or_b32 s31, s5, 27
	s_or_b32 s33, s5, 28
	s_or_b32 s34, s5, 29
	s_or_b32 s35, s5, 30
	s_or_b32 s36, s5, 31
	s_cmp_lt_i32 s5, s37
	v_add_nc_u32_e32 v43, s54, v38
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v38, 6, v0
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s4, s37
	v_add_nc_u32_e32 v42, s54, v11
	s_cselect_b32 s4, -1, 0
	s_cmp_lt_i32 s7, s37
	v_or_b32_e32 v44, s5, v38
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s6, s37
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v38, s74, 1, v11
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s11, s37
	v_cmp_gt_i32_e64 s7, s37, v44
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s9, s37
	v_add_nc_u32_e32 v45, s54, v38
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s8, s37
	v_lshl_add_u32 v38, s74, 2, v11
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s10, s37
	v_add_nc_u32_e32 v140, s54, v27
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s12, s37
	v_add_nc_u32_e32 v104, s54, v38
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s13, s37
	v_lshl_add_u32 v38, s74, 3, v11
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s14, s37
	v_add_nc_u32_e32 v139, s54, v26
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s15, s37
	v_add_nc_u32_e32 v127, s54, v38
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s16, s37
	v_lshl_add_u32 v38, s74, 4, v11
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s17, s37
	v_add_nc_u32_e32 v143, s54, v30
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s18, s37
	v_add_nc_u32_e32 v135, s54, v38
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s19, s37
	v_mad_u64_u32 v[38:39], null, v44, s39, v[9:10]
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s20, s37
	v_add_nc_u32_e32 v142, s54, v29
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s21, s37
	v_add_nc_u32_e32 v146, s54, v33
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s22, s37
	v_add_nc_u32_e32 v145, s54, v32
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s23, s37
	v_add_nc_u32_e32 v141, s54, v28
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s24, s37
	v_add_nc_u32_e32 v144, s54, v31
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s25, s37
	v_add_nc_u32_e32 v147, s54, v34
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s26, s37
	v_add_nc_u32_e32 v148, s54, v35
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s27, s37
	v_add_nc_u32_e32 v149, s54, v36
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s28, s37
	v_add_nc_u32_e32 v150, s54, v37
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s29, s37
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s55, s51
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s30, s37
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s31, s37
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s33, s37
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s34, s37
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s35, s37
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s36, s37
	s_cselect_b32 s36, -1, 0
	s_and_b32 s7, s76, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v151, 0x80000000, v38, s7
	v_or_b32_e32 v38, 4, v44
	v_cmp_gt_i32_e64 s7, s37, v38
	v_mad_u64_u32 v[38:39], null, v38, s39, v[9:10]
	s_and_b32 s7, s76, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v152, 0x80000000, v38, s7
	v_or_b32_e32 v38, 8, v44
	v_cmp_gt_i32_e64 s7, s37, v38
	v_mad_u64_u32 v[38:39], null, v38, s39, v[9:10]
	s_and_b32 s7, s76, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v153, 0x80000000, v38, s7
	v_or_b32_e32 v38, 12, v44
	v_cmp_gt_i32_e64 s7, s37, v38
	v_mad_u64_u32 v[38:39], null, v38, s39, v[9:10]
	s_and_b32 s7, s76, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v154, 0x80000000, v38, s7
	v_or_b32_e32 v38, 16, v44
	v_cmp_gt_i32_e64 s7, s37, v38
	v_mad_u64_u32 v[38:39], null, v38, s39, v[9:10]
	s_and_b32 s7, s76, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v155, 0x80000000, v38, s7
	v_or_b32_e32 v38, 20, v44
	v_cmp_gt_i32_e64 s7, s37, v38
	v_mad_u64_u32 v[38:39], null, v38, s39, v[9:10]
	s_and_b32 s7, s76, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v156, 0x80000000, v38, s7
	v_or_b32_e32 v38, 24, v44
	v_cmp_gt_i32_e64 s7, s37, v38
	v_mad_u64_u32 v[38:39], null, v38, s39, v[9:10]
	s_and_b32 s7, s76, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v157, 0x80000000, v38, s7
	v_or_b32_e32 v38, 28, v44
	v_cmp_gt_i32_e64 s7, s37, v38
	v_mad_u64_u32 v[38:39], null, v38, s39, v[9:10]
	v_cndmask_b32_e64 v39, 0x80000000, v42, s3
	v_cndmask_b32_e64 v42, 0x80000000, v43, s4
	v_cndmask_b32_e64 v43, 0x80000000, v45, s5
	v_cndmask_b32_e64 v45, 0x80000000, v104, s11
	s_and_b32 s7, s76, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s78, s77
	v_cndmask_b32_e64 v38, 0x80000000, v38, s7
	s_mul_i32 s3, s3, s74
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v45, v45, s[60:63], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v103, s54, v12
	scratch_load_b64 v[12:13], off, off offset:68 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v44, 0x80000000, v103, s6
	s_clause 0x3
	buffer_load_u8 v103, v39, s[60:63], 0 offen
	buffer_load_u8 v42, v42, s[60:63], 0 offen
	buffer_load_u8 v43, v43, s[60:63], 0 offen
	buffer_load_u8 v44, v44, s[60:63], 0 offen
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v124, s54, v12
	scratch_load_b64 v[12:13], off, off offset:76 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v39, 0x80000000, v124, s9
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v125, s54, v12
	scratch_load_b64 v[12:13], off, off offset:84 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v104, 0x80000000, v125, s8
	buffer_load_u8 v104, v104, s[60:63], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v126, s54, v12
	scratch_load_b64 v[12:13], off, off offset:92 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v124, 0x80000000, v126, s10
	buffer_load_u8 v224, v124, s[60:63], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v128, s54, v12
	scratch_load_b64 v[12:13], off, off offset:100 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v125, 0x80000000, v128, s13
	s_clause 0x1
	buffer_load_u8 v228, v125, s[60:63], 0 offen
	buffer_load_u8 v223, v39, s[60:63], 0 offen
	v_cndmask_b32_e64 v39, 0x80000000, v127, s12
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v129, s54, v12
	scratch_load_b64 v[12:13], off, off offset:108 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v130, s54, v12
	scratch_load_b64 v[12:13], off, off offset:116 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v131, s54, v12
	scratch_load_b64 v[12:13], off, off offset:124 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v125, 0x80000000, v131, s16
	s_clause 0x1
	buffer_load_u8 v250, v125, s[60:63], 0 offen
	buffer_load_u8 v226, v39, s[60:63], 0 offen
	v_cndmask_b32_e64 v39, 0x80000000, v130, s15
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v132, s54, v12
	scratch_load_b64 v[12:13], off, off offset:132 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v133, s54, v12
	scratch_load_b64 v[12:13], off, off offset:140 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v134, s54, v12
	scratch_load_b64 v[12:13], off, off offset:148 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v125, 0x80000000, v134, s19
	s_clause 0x1
	buffer_load_u8 v253, v125, s[60:63], 0 offen
	buffer_load_u8 v249, v39, s[60:63], 0 offen
	v_cndmask_b32_e64 v39, 0x80000000, v133, s18
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v136, s54, v12
	scratch_load_b64 v[12:13], off, off offset:156 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v137, s54, v12
	scratch_load_b64 v[12:13], off, off offset:164 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v125, 0x80000000, v137, s22
	s_clause 0x1
	buffer_load_u8 v99, v125, s[60:63], 0 offen
	buffer_load_u8 v252, v39, s[60:63], 0 offen
	v_cndmask_b32_e64 v124, 0x80000000, v129, s14
	v_cndmask_b32_e64 v39, 0x80000000, v136, s21
	v_cndmask_b32_e64 v125, 0x80000000, v140, s25
	s_clause 0x2
	buffer_load_u8 v248, v124, s[60:63], 0 offen
	buffer_load_u8 v10, v125, s[60:63], 0 offen
	buffer_load_u8 v255, v39, s[60:63], 0 offen
	v_cndmask_b32_e64 v124, 0x80000000, v132, s17
	v_cndmask_b32_e64 v39, 0x80000000, v139, s24
	v_cndmask_b32_e64 v125, 0x80000000, v143, s28
	s_clause 0x2
	buffer_load_u8 v251, v124, s[60:63], 0 offen
	buffer_load_u8 v107, v125, s[60:63], 0 offen
	buffer_load_u8 v40, v39, s[60:63], 0 offen
	v_cndmask_b32_e64 v124, 0x80000000, v135, s20
	v_cndmask_b32_e64 v39, 0x80000000, v142, s27
	v_cndmask_b32_e64 v125, 0x80000000, v146, s31
	buffer_load_u8 v254, v124, s[60:63], 0 offen
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v138, s54, v12
	s_clause 0x1
	buffer_load_u8 v12, v125, s[60:63], 0 offen
	buffer_load_u8 v106, v39, s[60:63], 0 offen
	v_cndmask_b32_e64 v39, 0x80000000, v145, s30
	v_cndmask_b32_e64 v125, 0x80000000, v149, s35
	v_cndmask_b32_e64 v124, 0x80000000, v138, s23
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s54, s50
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v116, v39, s[60:63], 0 offen
	v_cndmask_b32_e64 v39, 0x80000000, v148, s34
	buffer_load_u8 v101, v124, s[60:63], 0 offen
	v_cndmask_b32_e64 v124, 0x80000000, v141, s26
	buffer_load_u8 v105, v124, s[60:63], 0 offen
	v_cndmask_b32_e64 v124, 0x80000000, v144, s29
	buffer_load_u8 v109, v124, s[60:63], 0 offen
	v_cndmask_b32_e64 v124, 0x80000000, v147, s33
	buffer_load_u8 v13, v124, s[60:63], 0 offen
	v_cndmask_b32_e64 v124, 0x80000000, v150, s36
	s_clause 0x1
	buffer_load_u8 v14, v39, s[60:63], 0 offen
	buffer_load_u8 v15, v125, s[60:63], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v39, v151, s[56:59], 0 offen
	buffer_load_u8 v125, v152, s[56:59], 0 offen
	buffer_load_u8 v126, v153, s[56:59], 0 offen
	buffer_load_u8 v127, v155, s[56:59], 0 offen
	buffer_load_u8 v128, v156, s[56:59], 0 offen
	buffer_load_u8 v129, v157, s[56:59], 0 offen
	buffer_load_u8 v38, v38, s[56:59], 0 offen
	buffer_load_u8 v130, v154, s[56:59], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v16, v124, s[60:63], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(8)
	ds_store_b8 v93, v39
	s_waitcnt vmcnt(7)
	ds_store_b8 v93, v125 offset:256
	s_waitcnt vmcnt(6)
	ds_store_b8 v93, v126 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v93, v127 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v93, v128 offset:1280
	s_waitcnt vmcnt(1)
	ds_store_b8 v95, v130
	ds_store_b8 v93, v129 offset:1536
	ds_store_b8 v97, v38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_load_b32 v17, off, off offset:24 ; 4-byte Folded Reload
	ds_load_u8 v38, v46 offset:320
	ds_load_u8 v39, v46 offset:256
	ds_load_u8 v164, v46 offset:336
	ds_load_u8 v167, v46 offset:272
	ds_load_u8 v135, v46 offset:352
	ds_load_u8 v136, v46 offset:288
	ds_load_u8 v124, v46 offset:368
	ds_load_u8 v125, v46 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v46 offset:448
	ds_load_u8 v128, v46 offset:384
	ds_load_u8 v169, v46 offset:464
	ds_load_u8 v172, v46 offset:400
	ds_load_u8 v139, v46 offset:480
	ds_load_u8 v140, v46 offset:416
	ds_load_u8 v126, v46 offset:496
	ds_load_u8 v127, v46 offset:432
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v128, v39, 0xc0c0004
	ds_load_u8 v130, v46 offset:64
	ds_load_u8 v131, v46
	ds_load_u8 v176, v46 offset:80
	ds_load_u8 v145, v46 offset:96
	ds_load_u8 v128, v46 offset:112
	ds_load_u8 v181, v46 offset:16
	ds_load_u8 v146, v46 offset:32
	ds_load_u8 v129, v46 offset:48
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v136, v140, v139, 0xc0c0004
	v_lshl_or_b32 v39, v39, 16, v38
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v125, v127, v126, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v136, v136, 16, v135
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v132, v131, v130, 0xc0c0004
	ds_load_u8 v133, v46 offset:192
	ds_load_u8 v134, v46 offset:128
	ds_load_u8 v182, v46 offset:208
	ds_load_u8 v183, v46 offset:144
	ds_load_u8 v149, v46 offset:224
	ds_load_u8 v150, v46 offset:160
	ds_load_u8 v130, v46 offset:240
	ds_load_u8 v131, v46 offset:176
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v139, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v126, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v140, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v38, v133, 16, v132
	ds_load_u8 v238, v46 offset:960
	ds_load_u8 v239, v46 offset:896
	ds_load_u8 v221, v46 offset:1024
	ds_load_u8 v186, v46 offset:976
	ds_load_u8 v187, v46 offset:912
	ds_load_u8 v153, v46 offset:992
	ds_load_u8 v154, v46 offset:928
	ds_load_u8 v132, v46 offset:944
	ds_load_u8 v242, v46 offset:832
	ds_load_u8 v243, v46 offset:768
	ds_load_u8 v192, v46 offset:848
	ds_load_u8 v193, v46 offset:784
	ds_load_u8 v159, v46 offset:864
	ds_load_u8 v160, v46 offset:800
	ds_load_u8 v133, v46 offset:880
	ds_load_u8 v134, v46 offset:816
	ds_load_u8 v244, v46 offset:704
	ds_load_u8 v245, v46 offset:640
	ds_load_u8 v194, v46 offset:720
	ds_load_u8 v195, v46 offset:656
	ds_load_u8 v162, v46 offset:736
	ds_load_u8 v165, v46 offset:672
	ds_load_u8 v137, v46 offset:752
	ds_load_u8 v138, v46 offset:688
	ds_load_u8 v246, v46 offset:576
	ds_load_u8 v247, v46 offset:512
	ds_load_u8 v200, v46 offset:592
	ds_load_u8 v201, v46 offset:528
	ds_load_u8 v170, v46 offset:608
	ds_load_u8 v173, v46 offset:544
	ds_load_u8 v142, v46 offset:624
	ds_load_u8 v144, v46 offset:560
	ds_load_u8 v231, v46 offset:1216
	ds_load_u8 v233, v46 offset:1280
	ds_load_u8 v202, v46 offset:1232
	ds_load_u8 v203, v46 offset:1168
	ds_load_u8 v174, v46 offset:1248
	ds_load_u8 v175, v46 offset:1184
	ds_load_u8 v141, v46 offset:1264
	ds_load_u8 v143, v46 offset:1200
	ds_load_u8 v235, v46 offset:1152
	ds_load_u8 v236, v46 offset:1088
	ds_load_u8 v206, v46 offset:1104
	ds_load_u8 v207, v46 offset:1040
	ds_load_u8 v179, v46 offset:1120
	ds_load_u8 v180, v46 offset:1056
	ds_load_u8 v147, v46 offset:1136
	ds_load_u8 v148, v46 offset:1072
	ds_load_u8 v237, v46 offset:1472
	ds_load_u8 v220, v46 offset:1536
	ds_load_u8 v208, v46 offset:1488
	ds_load_u8 v209, v46 offset:1424
	ds_load_u8 v184, v46 offset:1504
	ds_load_u8 v185, v46 offset:1440
	ds_load_u8 v151, v46 offset:1520
	ds_load_u8 v152, v46 offset:1456
	ds_load_u8 v240, v46 offset:1408
	ds_load_u8 v241, v46 offset:1344
	ds_load_u8 v210, v46 offset:1360
	ds_load_u8 v212, v46 offset:1296
	ds_load_u8 v188, v46 offset:1376
	ds_load_u8 v190, v46 offset:1312
	ds_load_u8 v156, v46 offset:1392
	ds_load_u8 v158, v46 offset:1328
	ds_load_u8 v222, v46 offset:1984
	ds_load_u8 v211, v46 offset:2000
	ds_load_u8 v213, v46 offset:1936
	ds_load_u8 v189, v46 offset:2016
	ds_load_u8 v191, v46 offset:1952
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v145, v173, v170, 0xc0c0004
	v_perm_b32 v146, v165, v162, 0xc0c0004
	v_lshl_or_b32 v135, v140, 16, v139
	v_perm_b32 v139, v160, v159, 0xc0c0004
	v_perm_b32 v140, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v149, v180, v179, 0xc0c0004
	v_perm_b32 v150, v175, v174, 0xc0c0004
	v_perm_b32 v127, v131, v130, 0xc0c0004
	v_lshl_or_b32 v140, v140, 16, v139
	v_lshl_or_b32 v139, v146, 16, v145
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v146, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v145, v190, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v146, 16, v145
	v_lshl_or_b32 v145, v150, 16, v149
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v191, v189, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v166, v17
	scratch_load_b32 v17, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v155, v17
	ds_load_u8 v157, v46 offset:1968
	ds_load_u8 v225, v46 offset:1920
	ds_load_u8 v227, v46 offset:1856
	ds_load_u8 v214, v46 offset:1872
	ds_load_u8 v215, v46 offset:1808
	ds_load_u8 v196, v46 offset:1888
	ds_load_u8 v197, v46 offset:1824
	ds_load_u8 v161, v46 offset:1904
	ds_load_u8 v163, v46 offset:1840
	ds_load_u8 v229, v46 offset:1728
	ds_load_u8 v230, v46 offset:1792
	ds_load_u8 v216, v46 offset:1744
	ds_load_u8 v217, v46 offset:1680
	ds_load_u8 v198, v46 offset:1760
	ds_load_u8 v199, v46 offset:1696
	ds_load_u8 v168, v46 offset:1776
	ds_load_u8 v171, v46 offset:1712
	ds_load_u8 v232, v46 offset:1664
	ds_load_u8 v234, v46 offset:1600
	ds_load_u8 v218, v46 offset:1616
	ds_load_u8 v219, v46 offset:1552
	ds_load_u8 v204, v46 offset:1632
	ds_load_u8 v205, v46 offset:1568
	ds_load_u8 v177, v46 offset:1648
	ds_load_u8 v178, v46 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v93, v103
	ds_store_b8 v93, v42 offset:256
	ds_store_b8 v93, v43 offset:512
	ds_store_b8 v93, v45 offset:1024
	ds_store_b8 v93, v223 offset:1280
	ds_store_b8 v93, v104 offset:1536
	ds_store_b8 v93, v226 offset:2048
	ds_store_b8 v93, v228 offset:2304
	ds_store_b8 v93, v248 offset:2560
	ds_store_b8 v93, v250 offset:3072
	ds_store_b8 v93, v251 offset:3328
	ds_store_b8 v93, v252 offset:3584
	ds_store_b8 v93, v254 offset:4096
	ds_store_b8 v93, v255 offset:4352
	ds_store_b8 v93, v99 offset:4608
	ds_store_b8 v93, v40 offset:5120
	ds_store_b8 v93, v10 offset:5376
	ds_store_b8 v93, v105 offset:5632
	ds_store_b8 v93, v107 offset:6144
	ds_store_b8 v93, v109 offset:6400
	ds_store_b8 v93, v116 offset:6656
	ds_store_b8 v93, v13 offset:7168
	ds_store_b8 v93, v14 offset:7424
	ds_store_b8 v93, v15 offset:7680
	ds_store_b8 v95, v44
	ds_store_b8 v97, v224
	scratch_load_b32 v10, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v149, v197, v196, 0xc0c0004
	v_perm_b32 v154, v199, v198, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	v_perm_b32 v153, v205, v204, 0xc0c0004
	v_lshl_or_b32 v149, v154, 16, v153
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v249
	scratch_load_b32 v10, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v253
	scratch_load_b32 v10, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v101
	scratch_load_b32 v10, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v106
	scratch_load_b32 v10, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v12
	scratch_load_b32 v10, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v10, v61 offset:1280
	ds_load_u8 v12, v61 offset:1024
	ds_load_u8 v223, v61 offset:1920
	ds_load_u8 v224, v61 offset:1664
	ds_load_u8 v226, v61 offset:1408
	ds_load_u8 v228, v61 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v61 offset:1792
	ds_load_u8 v13, v61 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v223, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v226, v228, v226, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v255, v223, 16, v226
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v61 offset:256
	ds_load_u8 v14, v61
	ds_load_u8 v15, v61 offset:896
	ds_load_u8 v16, v61 offset:640
	ds_load_u8 v40, v61 offset:384
	ds_load_u8 v42, v61 offset:128
	v_lshl_or_b32 v249, v12, 16, v10
	v_perm_b32 v10, v243, v242, 0xc0c0004
	v_perm_b32 v12, v239, v238, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v243, v12, 16, v10
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v61 offset:768
	ds_load_u8 v43, v61 offset:512
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v40, v42, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v254, v15, 16, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v43, v14, 0xc0c0004
	v_lshl_or_b32 v248, v14, 16, v13
	v_perm_b32 v13, v247, v246, 0xc0c0004
	v_perm_b32 v14, v245, v244, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v242, v14, 16, v13
	ds_load_u8 v10, v61 offset:3328
	ds_load_u8 v12, v61 offset:3072
	ds_load_u8 v13, v61 offset:3968
	ds_load_u8 v14, v61 offset:3712
	ds_load_u8 v43, v61 offset:3456
	ds_load_u8 v44, v61 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v61 offset:3840
	ds_load_u8 v45, v61 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v13, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v45, v12, 0xc0c0004
	ds_load_u8 v45, v61 offset:2304
	ds_load_u8 v99, v61 offset:2048
	ds_load_u8 v101, v61 offset:2944
	ds_load_u8 v103, v61 offset:2688
	ds_load_u8 v104, v61 offset:2432
	ds_load_u8 v105, v61 offset:2176
	v_lshl_or_b32 v245, v12, 16, v10
	v_perm_b32 v10, v233, v241, 0xc0c0004
	v_perm_b32 v12, v240, v237, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v247, v12, 16, v10
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v45, v99, v45, 0xc0c0004
	ds_load_u8 v99, v61 offset:2816
	ds_load_u8 v106, v61 offset:2560
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v16, v103, v101, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v105, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v16, 16, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v106, v99, 0xc0c0004
	v_lshl_or_b32 v244, v99, 16, v45
	v_perm_b32 v45, v221, v236, 0xc0c0004
	v_perm_b32 v99, v235, v231, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v246, v99, 16, v45
	ds_load_u8 v10, v61 offset:5376
	ds_load_u8 v12, v61 offset:5120
	ds_load_u8 v45, v61 offset:6016
	ds_load_u8 v99, v61 offset:5760
	ds_load_u8 v106, v61 offset:5504
	ds_load_u8 v107, v61 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v61 offset:5888
	ds_load_u8 v109, v61 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v14, v99, v45, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v109, v12, 0xc0c0004
	ds_load_u8 v109, v61 offset:4352
	ds_load_u8 v116, v61 offset:4096
	ds_load_u8 v237, v61 offset:4992
	ds_load_u8 v238, v61 offset:4736
	ds_load_u8 v239, v61 offset:4480
	ds_load_u8 v240, v61 offset:4224
	v_lshl_or_b32 v251, v12, 16, v10
	v_perm_b32 v10, v230, v227, 0xc0c0004
	v_perm_b32 v12, v225, v222, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v109, v116, v109, 0xc0c0004
	ds_load_u8 v116, v61 offset:4864
	ds_load_u8 v221, v61 offset:4608
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v16, v238, v237, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v240, v239, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v44, v16, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v221, v116, 0xc0c0004
	v_lshl_or_b32 v221, v12, 16, v10
	v_lshl_or_b32 v250, v116, 16, v109
	v_perm_b32 v109, v220, v234, 0xc0c0004
	v_perm_b32 v116, v232, v229, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v220, v116, 16, v109
	ds_load_u8 v10, v61 offset:7424
	ds_load_u8 v12, v61 offset:7168
	ds_load_u8 v109, v61 offset:8064
	ds_load_u8 v116, v61 offset:7808
	ds_load_u8 v222, v61 offset:7552
	ds_load_u8 v225, v61 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v61 offset:7936
	ds_load_u8 v227, v61 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v14, v116, v109, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v225, v222, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v14, 16, v13
	v_perm_b32 v14, v167, v164, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v227, v12, 0xc0c0004
	ds_load_u8 v227, v61 offset:6400
	ds_load_u8 v229, v61 offset:6144
	ds_load_u8 v241, v61 offset:7040
	ds_load_u8 v17, v61 offset:6784
	ds_load_u8 v18, v61 offset:6528
	ds_load_u8 v19, v61 offset:6272
	v_lshl_or_b32 v253, v12, 16, v10
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v227, v229, v227, 0xc0c0004
	ds_load_u8 v229, v61 offset:6912
	ds_load_u8 v230, v61 offset:6656
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v16, v17, v241, 0xc0c0004
	v_perm_b32 v17, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v103, v16, 16, v15
	v_perm_b32 v15, v172, v169, 0xc0c0004
	v_perm_b32 v16, v181, v176, 0xc0c0004
	v_lshl_or_b32 v182, v15, 16, v14
	v_perm_b32 v14, v193, v192, 0xc0c0004
	v_perm_b32 v15, v187, v186, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v181, v17, 16, v16
	v_perm_b32 v16, v201, v200, 0xc0c0004
	v_perm_b32 v17, v195, v194, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v229, v230, v229, 0xc0c0004
	v_lshl_or_b32 v187, v15, 16, v14
	v_perm_b32 v14, v212, v210, 0xc0c0004
	v_perm_b32 v15, v209, v208, 0xc0c0004
	v_lshl_or_b32 v186, v17, 16, v16
	v_lshl_or_b32 v252, v229, 16, v227
	v_wmma_i32_16x16x16_iu4 v[229:236], v[248:249], v[38:39], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v16, v207, v206, 0xc0c0004
	v_perm_b32 v17, v203, v202, 0xc0c0004
	v_lshl_or_b32 v193, v15, 16, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[229:236], v[244:245], v[242:243], v[229:236] neg_lo:[1,1,0]
	v_perm_b32 v15, v213, v211, 0xc0c0004
	v_perm_b32 v14, v215, v214, 0xc0c0004
	v_lshl_or_b32 v192, v17, 16, v16
	v_perm_b32 v16, v219, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[229:236], v[250:251], v[246:247], v[229:236] neg_lo:[1,1,0]
	v_perm_b32 v17, v217, v216, 0xc0c0004
	v_lshl_or_b32 v195, v15, 16, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[229:236], v[252:253], v[220:221], v[229:236] neg_lo:[1,1,0]
	v_lshl_or_b32 v194, v17, 16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v10, v229
	v_cvt_f32_i32_e32 v12, v230
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v20, v231
	v_cvt_f32_i32_e32 v21, v232
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v232, s47 :: v_dual_mov_b32 v231, s46
	v_dual_mov_b32 v230, s45 :: v_dual_mov_b32 v229, s44
	v_dual_mov_b32 v228, s43 :: v_dual_mov_b32 v227, s42
	v_dual_mov_b32 v226, s41 :: v_dual_mov_b32 v225, s40
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v22, v233
	v_cvt_f32_i32_e32 v23, v234
	v_cvt_f32_i32_e32 v24, v235
	v_cvt_f32_i32_e32 v25, v236
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[206:213], v[248:249], v[181:182], v[225:232] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[233:240], v[254:255], v[38:39], v[225:232] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[244:245], v[186:187], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[233:240], v[42:43], v[242:243], v[233:240] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[250:251], v[192:193], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[233:240], v[44:45], v[246:247], v[233:240] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[252:253], v[194:195], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[233:240], v[103:104], v[220:221], v[233:240] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v14, v206
	v_cvt_f32_i32_e32 v15, v207
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v16, v208
	v_cvt_f32_i32_e32 v17, v209
	v_cvt_f32_i32_e32 v18, v210
	v_cvt_f32_i32_e32 v19, v211
	v_cvt_f32_i32_e32 v40, v212
	v_cvt_f32_i32_e32 v99, v213
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[206:213], v[254:255], v[181:182], v[225:232] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v13, v233
	v_cvt_f32_i32_e32 v224, v234
	v_cvt_f32_i32_e32 v223, v235
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[206:213], v[42:43], v[186:187], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[179:186], v[248:249], v[135:136], v[225:232] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v222, v236
	v_cvt_f32_i32_e32 v39, v238
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[206:213], v[44:45], v[192:193], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[179:186], v[244:245], v[139:140], v[179:186] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v220, v239
	v_cvt_f32_i32_e32 v221, v240
	v_cvt_f32_i32_e32 v38, v237
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[206:213], v[103:104], v[194:195], v[206:213] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[179:186], v[250:251], v[145:146], v[179:186] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v101, v206
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[179:186], v[252:253], v[149:150], v[179:186] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v116, v211
	v_cvt_f32_i32_e32 v105, v207
	v_cvt_f32_i32_e32 v106, v208
	v_cvt_f32_i32_e32 v107, v209
	v_cvt_f32_i32_e32 v153, v179
	v_cvt_f32_i32_e32 v154, v180
	v_cvt_f32_i32_e32 v159, v181
	v_cvt_f32_i32_e32 v160, v182
	v_cvt_f32_i32_e32 v162, v183
	v_cvt_f32_i32_e32 v165, v184
	v_cvt_f32_i32_e32 v169, v185
	v_cvt_f32_i32_e32 v170, v186
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[179:186], v[254:255], v[135:136], v[225:232] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v125, 16, v124
	v_lshl_or_b32 v135, v127, 16, v126
	v_perm_b32 v124, v144, v142, 0xc0c0004
	v_perm_b32 v125, v138, v137, 0xc0c0004
	v_perm_b32 v126, v134, v133, 0xc0c0004
	v_perm_b32 v127, v132, v166, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[179:186], v[42:43], v[139:140], v[179:186] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v164, v212
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v132, v125, 16, v124
	v_perm_b32 v124, v158, v156, 0xc0c0004
	v_lshl_or_b32 v133, v127, 16, v126
	v_perm_b32 v125, v152, v151, 0xc0c0004
	v_perm_b32 v126, v148, v147, 0xc0c0004
	v_perm_b32 v127, v143, v141, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[179:186], v[44:45], v[145:146], v[179:186] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v109, v210
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v138, v125, 16, v124
	v_perm_b32 v124, v178, v177, 0xc0c0004
	v_lshl_or_b32 v137, v127, 16, v126
	v_perm_b32 v125, v171, v168, 0xc0c0004
	v_perm_b32 v126, v163, v161, 0xc0c0004
	v_perm_b32 v127, v157, v155, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[179:186], v[103:104], v[149:150], v[179:186] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v167, v213
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v139, v125, 16, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v140, v127, 16, v126
	v_wmma_i32_16x16x16_iu4 v[124:131], v[248:249], v[135:136], v[225:232] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v175, v186
	v_cvt_f32_i32_e32 v173, v184
	v_cvt_f32_i32_e32 v145, v179
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[124:131], v[244:245], v[132:133], v[124:131] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v146, v180
	v_cvt_f32_i32_e32 v149, v181
	v_cvt_f32_i32_e32 v150, v182
	v_cvt_f32_i32_e32 v172, v183
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[124:131], v[250:251], v[137:138], v[124:131] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v174, v185
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[124:131], v[252:253], v[139:140], v[124:131] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v134, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v141, v125
	v_cvt_f32_i32_e32 v142, v126
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v143, v127
	v_cvt_f32_i32_e32 v144, v128
	v_cvt_f32_i32_e32 v147, v129
	v_cvt_f32_i32_e32 v148, v130
	v_cvt_f32_i32_e32 v151, v131
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[124:131], v[254:255], v[135:136], v[225:232] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[124:131], v[42:43], v[132:133], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[124:131], v[44:45], v[137:138], v[124:131] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[124:131], v[103:104], v[139:140], v[124:131] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v42, v124
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v124, off, off         ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v43, v125
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v125, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v44, v126
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v126, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v45, v127
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v127, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v103, v128
	v_cvt_f32_i32_e32 v104, v129
	.loc	1 1213 40                       ; ragged.py:1213:40
	scratch_load_b64 v[128:129], off, off offset:16 ; 8-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v132, v130
	v_cvt_f32_i32_e32 v133, v131
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v124, s78, v124, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v125, s78, v125, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v126, s78, v126, 1
	v_cndmask_b32_e32 v124, 0x80000000, v124, vcc_lo
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v127, s78, v127, 1
	v_cndmask_b32_e64 v125, 0x80000000, v125, s0
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s78, s78, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v128, v128, s3, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v126, 0x80000000, v126, s1
	v_cndmask_b32_e64 v127, 0x80000000, v127, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v128, v128, s[52:55], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v124, v124, s[48:51], 0 offen
	buffer_load_u16 v135, v125, s[48:51], 0 offen
	buffer_load_u16 v136, v126, s[48:51], 0 offen
	buffer_load_u16 v137, v127, s[48:51], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v126, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s78, s38
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v125, 16, v128
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v138, 16, v124
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v10, v10, v138
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v126, v125
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[124:127], v118
	ds_load_b128 v[128:131], v118 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v41, v10, v124 :: v_dual_mul_f32 v10, v12, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v123, v10, v125 :: v_dual_mul_f32 v10, v20, v138
	v_fmac_f32_e32 v122, v10, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v10, v21, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v121, v10, v127
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v10, 16, v135
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v14, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v98, v12, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v15, v10
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v96, v12, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v94, v12, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v12, v17, v10
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v12, v127
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v12, 16, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v14, v153, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v79, v14, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v14, v154, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v78, v14, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v14, v159, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v77, v14, v126 :: v_dual_mul_f32 v14, v160, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v14, v127
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v14, 16, v137
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v134, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v60, v15, v124 :: v_dual_mul_f32 v15, v141, v14
	v_fmac_f32_e32 v59, v15, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v142, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v58, v15, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v143, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v57, v15, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v22, v138
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v120, v15, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v23, v138
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v15, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v24, v138
	v_mul_f32_e32 v20, v164, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v117, v15, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v25, v138
	v_mul_f32_e32 v13, v13, v138
	v_mul_f32_e32 v22, v173, v12
	v_mul_f32_e32 v17, v221, v138
	v_dual_mul_f32 v16, v220, v138 :: v_dual_fmac_f32 v115, v15, v131
	v_mul_f32_e32 v15, v18, v10
	v_dual_mul_f32 v18, v109, v10 :: v_dual_mul_f32 v21, v172, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v91, v15, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v19, v10
	v_dual_mul_f32 v19, v116, v10 :: v_dual_fmac_f32 v90, v15, v129
	v_mul_f32_e32 v15, v40, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v15, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v99, v10
	v_dual_mul_f32 v24, v103, v14 :: v_dual_mul_f32 v23, v174, v12
	v_dual_mul_f32 v25, v104, v14 :: v_dual_fmac_f32 v88, v15, v131
	v_mul_f32_e32 v15, v162, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v75, v15, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v165, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v74, v15, v129 :: v_dual_mul_f32 v15, v169, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v15, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v170, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v72, v15, v131 :: v_dual_mul_f32 v15, v144, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v15, v128
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v147, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v55, v15, v129
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v148, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v54, v15, v130
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v151, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v53, v15, v131
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[124:127], v118 offset:512
	ds_load_b128 v[128:131], v118 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v15, v39, v138 :: v_dual_fmac_f32 v114, v13, v124
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v13, v224, v138 :: v_dual_fmac_f32 v108, v15, v129
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v82, v19, v129
	v_fmac_f32_e32 v100, v17, v131
	v_dual_fmac_f32 v102, v16, v130 :: v_dual_fmac_f32 v113, v13, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v223, v138
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v83, v18, v128
	v_fmac_f32_e32 v81, v20, v130
	v_dual_fmac_f32 v67, v21, v128 :: v_dual_fmac_f32 v66, v22, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v112, v13, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v13, v222, v138 :: v_dual_fmac_f32 v48, v24, v128
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v47, v25, v129
	v_fmac_f32_e32 v111, v13, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v101, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v13, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v105, v10
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v86, v13, v125 :: v_dual_mul_f32 v13, v106, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v85, v13, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v107, v10
	v_mul_f32_e32 v10, v167, v10
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v13, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v13, v145, v12 :: v_dual_fmac_f32 v80, v10, v131
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v71, v13, v124
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v146, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v70, v13, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v149, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v69, v13, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v150, v12
	v_mul_f32_e32 v12, v175, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v68, v13, v127 :: v_dual_mul_f32 v13, v42, v14
	v_fmac_f32_e32 v62, v12, v131
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v52, v13, v124 :: v_dual_mul_f32 v13, v43, v14
	v_fmac_f32_e32 v51, v13, v125
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v44, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v50, v13, v126
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v45, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v49, v13, v127
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v38, v138
	v_mul_f32_e32 v38, v132, v14
	v_mul_f32_e32 v14, v133, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v64, v23, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v110, v13, v128 :: v_dual_fmac_f32 v65, v38, v130
	v_fmac_f32_e32 v63, v14, v131
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v38, v75, v75 :: v_dual_max_f32 v39, v74, v74
	v_max_f32_e32 v40, v73, v73
	v_dual_max_f32 v1, v41, v41 :: v_dual_max_f32 v2, v123, v123
	v_dual_max_f32 v28, v85, v85 :: v_dual_max_f32 v29, v84, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v41, v72, v72
	v_dual_max_f32 v39, 0, v39 :: v_dual_max_f32 v40, 0, v40
	v_dual_max_f32 v43, v70, v70 :: v_dual_max_f32 v42, v71, v71
	v_dual_max_f32 v45, v68, v68 :: v_dual_max_f32 v44, v69, v69
	v_dual_max_f32 v30, v83, v83 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v31, v82, v82
	v_dual_max_f32 v32, v81, v81 :: v_dual_max_f32 v35, v78, v78
	v_dual_max_f32 v41, 0, v41 :: v_dual_max_f32 v82, 0, v43
	v_max_f32_e32 v81, 0, v42
	v_dual_max_f32 v83, 0, v44 :: v_dual_max_f32 v84, 0, v45
	v_dual_max_f32 v42, v67, v67 :: v_dual_max_f32 v43, v66, v66
	v_dual_max_f32 v44, v64, v64 :: v_dual_max_f32 v45, v62, v62
	v_max_f32_e32 v46, v60, v60
	v_dual_max_f32 v16, v102, v102 :: v_dual_max_f32 v17, v100, v100
	v_dual_max_f32 v18, v98, v98 :: v_dual_max_f32 v19, v96, v96
	v_max_f32_e32 v20, v94, v94
	v_dual_max_f32 v22, v91, v91 :: v_dual_max_f32 v25, v88, v88
	v_dual_max_f32 v26, v87, v87 :: v_dual_max_f32 v27, v86, v86
	v_dual_max_f32 v64, 0, v42 :: v_dual_max_f32 v87, 0, v45
	v_dual_max_f32 v85, 0, v43 :: v_dual_max_f32 v86, 0, v44
	v_max_f32_e32 v43, v58, v58
	v_dual_max_f32 v88, 0, v46 :: v_dual_max_f32 v45, v56, v56
	v_max_f32_e32 v44, v57, v57
	v_max_f32_e32 v42, v59, v59
	v_dual_max_f32 v46, v55, v55 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v5, v120, v120
	v_dual_max_f32 v6, v119, v119 :: v_dual_max_f32 v7, v117, v117
	v_max_f32_e32 v8, v115, v115
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v10, v114, v114 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v18, 0, v18
	v_max_f32_e32 v21, v92, v92
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v23, v90, v90
	v_max_f32_e32 v24, v89, v89
	v_dual_max_f32 v90, 0, v43 :: v_dual_max_f32 v91, 0, v44
	v_dual_max_f32 v89, 0, v42 :: v_dual_max_f32 v92, 0, v45
	v_max_f32_e32 v45, v51, v51
	v_max_f32_e32 v43, v53, v53
	v_max_f32_e32 v93, 0, v46
	v_max_f32_e32 v42, v54, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v44, v52, v52 :: v_dual_max_f32 v97, 0, v45
	v_max_f32_e32 v46, v50, v50
	v_dual_max_f32 v3, v122, v122 :: v_dual_max_f32 v4, v121, v121
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v11, v113, v113
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v13, v111, v111
	v_max_f32_e32 v12, v112, v112
	v_dual_max_f32 v14, v110, v110 :: v_dual_max_f32 v15, v108, v108
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v33, v80, v80
	v_max_f32_e32 v34, v79, v79
	v_dual_max_f32 v36, v77, v77 :: v_dual_max_f32 v37, v76, v76
	v_dual_max_f32 v95, 0, v43 :: v_dual_max_f32 v94, 0, v42
	v_max_f32_e32 v45, v65, v65
	v_max_f32_e32 v42, v49, v49
	v_max_f32_e32 v96, 0, v44
	v_dual_max_f32 v43, v48, v48 :: v_dual_max_f32 v44, v47, v47
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v65, v1, v1 :: v_dual_max_f32 v98, 0, v46
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v46, v63, v63 :: v_dual_mul_f32 v75, v6, v6
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	v_max_f32_e32 v19, 0, v19
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v26, 0, v26
	v_max_f32_e32 v27, 0, v27
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v32, 0, v32
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v34, 0, v34
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v36, 0, v36
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v100, 0, v43
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v79, v8, v8
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v101, 0, v44 :: v_dual_max_f32 v102, 0, v45
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v71, v3, v3
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_max_f32_e32 v103, 0, v46
	v_max_f32_e32 v99, 0, v42
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v68, v2, v2 :: v_dual_mul_f32 v77, v11, v11
	v_dual_mul_f32 v72, v4, v4 :: v_dual_mul_f32 v73, v13, v13
	v_dual_mul_f32 v74, v5, v5 :: v_dual_mul_f32 v69, v15, v15
	v_dual_mul_f32 v78, v7, v7 :: v_dual_mul_f32 v67, v16, v16
	v_dual_mul_f32 v80, v10, v10 :: v_dual_mul_f32 v61, v20, v20
	v_dual_mul_f32 v76, v12, v12 :: v_dual_mul_f32 v63, v18, v18
	v_dual_mul_f32 v70, v14, v14 :: v_dual_mul_f32 v57, v24, v24
	v_dual_mul_f32 v66, v17, v17 :: v_dual_mul_f32 v59, v22, v22
	v_dual_mul_f32 v62, v19, v19 :: v_dual_mul_f32 v55, v26, v26
	v_dual_mul_f32 v60, v21, v21 :: v_dual_mul_f32 v53, v28, v28
	v_dual_mul_f32 v58, v23, v23 :: v_dual_mul_f32 v51, v30, v30
	v_dual_mul_f32 v56, v25, v25 :: v_dual_mul_f32 v49, v32, v32
	v_dual_mul_f32 v54, v27, v27 :: v_dual_mul_f32 v47, v34, v34
	v_dual_mul_f32 v52, v29, v29 :: v_dual_mul_f32 v45, v36, v36
	v_dual_mul_f32 v50, v31, v31 :: v_dual_mul_f32 v43, v38, v38
	v_mul_f32_e32 v48, v33, v33
	v_mul_f32_e32 v46, v35, v35
	v_dual_mul_f32 v44, v37, v37 :: v_dual_mul_f32 v35, v83, v83
	v_dual_mul_f32 v42, v39, v39 :: v_dual_mul_f32 v31, v85, v85
	v_dual_mul_f32 v39, v40, v40 :: v_dual_mul_f32 v38, v41, v41
	v_mul_f32_e32 v29, v86, v86
	v_dual_mul_f32 v37, v81, v81 :: v_dual_mul_f32 v36, v82, v82
	v_dual_mul_f32 v25, v89, v89 :: v_dual_mul_f32 v34, v84, v84
	v_dual_mul_f32 v19, v94, v94 :: v_dual_mul_f32 v32, v64, v64
	v_dual_mul_f32 v15, v98, v98 :: v_dual_mul_f32 v28, v87, v87
	v_mul_f32_e32 v21, v92, v92
	v_dual_mul_f32 v26, v88, v88 :: v_dual_mul_f32 v11, v102, v102
	v_dual_mul_f32 v24, v90, v90 :: v_dual_mul_f32 v17, v96, v96
	v_dual_mul_f32 v22, v91, v91 :: v_dual_mul_f32 v13, v100, v100
	v_mul_f32_e32 v20, v93, v93
	v_dual_mul_f32 v18, v95, v95 :: v_dual_mov_b32 v5, v9
	v_mul_f32_e32 v16, v97, v97
	v_mul_f32_e32 v14, v99, v99
	v_mul_f32_e32 v12, v101, v101
	v_mul_f32_e32 v10, v103, v103
	v_and_b32_e32 v108, 15, v0
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v6, 7, v0
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v30, v78, v79, v80
	v_max_f32_e32 v33, v46, v46
	s_mov_b32 s25, 0x76543210
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v85, 8, v0
.Ltmp5:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 62, v6
	v_or_b32_e32 v3, 60, v6
	v_or_b32_e32 v9, 58, v6
	v_or_b32_e32 v23, 50, v6
	v_or_b32_e32 v27, 36, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s0
	v_add_co_u32 v3, s0, s68, v3
	v_add_co_u32 v40, s1, s68, v9
	v_add_co_ci_u32_e64 v4, null, s69, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[1:2]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v41, null, s69, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[72:73], v[1:2]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 56, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[70:71], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 54, v6
	v_or_b32_e32 v9, 52, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s5, s68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s5
	v_add_co_u32 v3, s5, s68, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s69, 0, s5
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[72:73], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s9, s68, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[70:71], v[40:41]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[72:73], v[40:41]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s69, 0, s9
	v_add_co_u32 v40, s9, s68, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[70:71], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v41, null, s69, 0, s9
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[72:73], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 48, v6
	v_or_b32_e32 v4, 46, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[72:73], v[1:2]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v9, 44, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s13, s68, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s13
	v_add_co_u32 v3, s13, s68, v4
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v23, 42, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s69, 0, s13
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[72:73], v[1:2]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s17, s68, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s12, s[70:71], v[40:41]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[72:73], v[40:41]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s69, 0, s17
	v_add_co_u32 v40, s17, s68, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s16, s[70:71], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v41, null, s69, 0, s17
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[72:73], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 40, v6
	v_or_b32_e32 v4, 38, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[72:73], v[1:2]
.Ltmp6:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v62, v62
.Ltmp7:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s21, s68, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s21
	v_add_co_u32 v81, s21, s68, v4
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v68, v68 :: v_dual_max_f32 v4, v65, v65
.Ltmp9:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v8, 0x80, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[72:73], v[1:2]
.Ltmp10:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v72, v74, v75
	v_max_f32_e32 v1, v4, v3
	v_max3_f32 v3, v77, v76, v73
	v_max3_f32 v4, v70, v69, v67
	v_max_f32_e32 v23, v63, v63
.Ltmp11:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s20, s[70:71], v[40:41]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s69, 0, s21
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[72:73], v[40:41]
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v1, v71, v2
	v_max3_f32 v2, v3, v4, v66
	v_max3_f32 v4, v60, v59, v58
	v_max_f32_e32 v40, v47, v47
	v_max_f32_e32 v3, v23, v9
	v_max3_f32 v9, v54, v53, v52
	v_max3_f32 v23, v51, v50, v49
	v_max3_f32 v1, v1, v30, v2
	v_max3_f32 v2, v57, v56, v55
	v_max3_f32 v3, v3, v61, v4
	v_max3_f32 v30, v36, v35, v34
	v_max3_f32 v4, v9, v23, v48
	v_max_f32_e32 v9, v40, v33
	v_max3_f32 v23, v44, v43, v42
	v_max3_f32 v33, v32, v31, v29
	v_dual_max_f32 v40, v25, v25 :: v_dual_max_f32 v41, v26, v26
	v_max3_f32 v2, v3, v2, v4
	v_max3_f32 v3, v39, v38, v37
	v_max3_f32 v4, v9, v45, v23
	v_max3_f32 v9, v30, v33, v28
	v_max_f32_e32 v23, v41, v40
	v_max3_f32 v30, v22, v21, v20
	v_max3_f32 v33, v16, v15, v14
	v_max3_f32 v40, v13, v12, v11
	v_max3_f32 v3, v4, v3, v9
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v41, v1, s25, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v19, v18, v17
	v_max3_f32 v9, v23, v24, v30
	v_max3_f32 v23, v33, v40, v10
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v33, v2, s25, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v64, v3, s25, 0xfedcba98 op_sel:[1,0]
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v30, v41, v41
.Ltmp17:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v40, s26, s68, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v27, v33, v33 :: v_dual_lshlrev_b32 v86, 1, v8
	v_max_f32_e32 v33, v64, v64
	v_max3_f32 v4, v9, v4, v23
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v9, 3, v0
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v30 :: v_dual_and_b32 v64, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v3, v3, v33 :: v_dual_lshlrev_b32 v30, 4, v0
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v33, v9, 9, 0
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v27 :: v_dual_lshlrev_b32 v83, 5, v9
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v27, v4, s25, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v23, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v33, v64, 2, v33
	v_and_or_b32 v84, 0x680, v30, v83
	v_lshrrev_b32_e32 v87, 3, v8
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v27, v27, v27
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v83, v83, v23
	v_lshl_add_u32 v33, v85, 4, v33
	v_xor_b32_e32 v84, v84, v23
	v_lshl_add_u32 v88, v64, 6, 0
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v27
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v27, v33, v86, v83
	s_barrier
	v_add3_u32 v83, v88, v87, v84
.Ltmp28:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v33, 34, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v41, null, s69, 0, s26
.Ltmp29:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v27, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v83
.Ltmp30:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v27, 32, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v83, s25, s68, v33
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v33, 30, v6
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[70:71], v[40:41]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[72:73], v[40:41]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v40, s30, s68, v27
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[70:71], v[81:82]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s69, 0, s25
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[72:73], v[81:82]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v41, null, s69, 0, s30
	v_add_co_u32 v81, s30, s68, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v82, null, s69, 0, s30
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[70:71], v[40:41]
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v33, v2
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp33:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[70:71], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[72:73], v[81:82]
.Ltmp34:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v4, v4
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v33, v33 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[72:73], v[40:41]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v40, 28, v6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v88.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v33, v33, v33
.Ltmp38:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[70:71], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[72:73], v[83:84]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v83, 24, v6
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v81, v4
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v27, v1
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v33, v2, v33
	v_max_f32_e32 v1, v1, v1
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v81, v4
	v_mov_b32_dpp v27, v27 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v82, v33
	s_barrier
.Ltmp43:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_bfe_i32 v7, v0, 7, 1
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v27, v27, v27
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v7, 0x2010, v7
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v27, v1, v27
.Ltmp49:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s35, s68, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s35
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v40, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[72:73], v[1:2]
.Ltmp52:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v82, v82
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v33, v2 :: v_dual_max_f32 v1, v40, v40
	v_max_f32_e32 v33, v81, v81
.Ltmp55:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v40, 26, v6
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v82, v2 :: v_dual_max_f32 v1, v27, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v33
.Ltmp58:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v40, s37, s68, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v41, v3
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v81, v1
	v_dual_mov_b32 v33, v4 :: v_dual_max_f32 v86, v82, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v86 :: v_dual_max_f32 v41, v41, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v84, v81, v81
.Ltmp63:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s38, s68, v83
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v41
	v_max_f32_e32 v83, v33, v33
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v33, 4, v9
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v84
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v84, 1, v23
	v_mov_b32_e32 v41, v3
	v_lshlrev_b32_e32 v9, 3, v85
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v83 :: v_dual_add_nc_u32 v85, 0, v8
.Ltmp69:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s69, 0, s38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_add3_u32 v83, v85, v84, v9
.Ltmp71:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v84, 22, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[70:71], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[72:73], v[81:82]
.Ltmp72:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v27, v41, v41
.Ltmp73:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v41, null, s69, 0, s37
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v27 :: v_dual_lshlrev_b32 v8, 3, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp75:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[70:71], v[40:41]
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v27, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v27, v27 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v27, v27, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v3, v3, v27
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v27, 5, v64
	v_add_nc_u32_e32 v64, 0, v33
	ds_store_b128 v83, v[1:4]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v9, v64, v27, v9
	s_barrier
.Ltmp79:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v27, 18, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v83, s38, s68, v84
.Ltmp80:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[1:4], v9
.Ltmp81:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 20, v6
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s69, 0, s38
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[72:73], v[40:41]
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v40, s43, s68, v9
	v_add_co_ci_u32_e64 v41, null, s69, 0, s43
	v_add_co_u32 v81, s43, s68, v27
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 16, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s69, 0, s43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[70:71], v[40:41]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[72:73], v[40:41]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v40, s47, s68, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[70:71], v[81:82]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v1, v1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[72:73], v[81:82]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v41, null, s69, 0, s47
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 12, v6
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v27, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 14, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[70:71], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[72:73], v[83:84]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v3, v3, v3
	v_div_scale_f32 v64, null, 0x40e00000, 0x40e00000, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s47, s68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v82, null, s69, 0, s47
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v1, v64
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s47, s68, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 10, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s69, 0, s47
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[70:71], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[72:73], v[81:82]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[70:71], v[40:41]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[72:73], v[40:41]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v81, -v64, v1, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v40, s53, s68, v9
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v9, 8, v6
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[70:71], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[72:73], v[83:84]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	v_fmac_f32_e32 v1, v81, v1
	v_div_scale_f32 v83, vcc_lo, v27, 0x40e00000, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v41, null, s69, 0, s53
	v_add_co_u32 v81, s53, s68, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s69, 0, s53
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v9, v83, v1 :: v_dual_max_f32 v2, v2, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[70:71], v[40:41]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v85, v84
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[72:73], v[40:41]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[70:71], v[81:82]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v40, -v64, v9, v83
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[72:73], v[81:82]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v81, 0x2b8cbccc, v2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v41, 6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v9, v40, v1
	v_div_scale_f32 v82, s59, v3, 0x40e00000, v3
	v_max_f32_e32 v40, 0x2b8cbccc, v4
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v81
	v_fma_f32 v2, -v84, v85, 1.0
	v_fma_f32 v64, -v64, v9, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v40
	v_rcp_f32_e32 v83, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v2, v85
	v_div_fmas_f32 v9, v64, v1, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s57, s68, v41
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v87, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v64, v82, v85
	v_div_fixup_f32 v9, v9, 0x40e00000, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s69, 0, s57
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v41, -v4, v83, 1.0
	v_fma_f32 v27, -v84, v64, v82
	s_mov_b32 vcc_lo, s59
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[72:73], v[1:2]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v83, v41, v83
	v_div_scale_f32 v41, s60, v81, 0x40e00000, v81
	v_fmac_f32_e32 v64, v27, v85
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v27.l, v9.h
	v_mov_b16_e32 v27.h, v88.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v89, v41, v83
	v_fma_f32 v90, -v86, v87, 1.0
	v_fma_f32 v1, -v84, v64, v82
	v_div_scale_f32 v82, s61, v40, 0x40e00000, v40
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v27
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v27, -v4, v89, v41
	v_fmac_f32_e32 v87, v90, v87
	v_div_fmas_f32 v1, v1, v85, v64
	s_mov_b32 vcc_lo, s60
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v9, v9, v2, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v89, v27, v83
	v_mul_f32_e32 v27, v82, v87
	v_div_fixup_f32 v1, v1, 0x40e00000, v3
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 4, v6
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v84, 0xffff0000, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v4, v89, v41
	v_fma_f32 v4, -v86, v27, v82
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v88.l, v1.h
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_barrier
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v90, null, v84, v84, v71
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v41, v3, v83, v89
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, null, v84, v84, v65
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v27, v4, v87
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s59, s68, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v85, v83
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v2, -v86, v27, v82
	v_div_fixup_f32 v64, v41, 0x40e00000, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v86, null, v84, v84, v68
	v_div_scale_f32 v91, null, v84, v84, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v87, v27
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v27, 1, v88
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v41, -v83, v85, 1.0
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v89, vcc_lo, v65, v84, v65
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v40
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v40.l, v64.h
	v_mov_b16_e32 v40.h, v88.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v41, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v1, v27, 0x7fff
	v_mov_b16_e32 v88.l, v2.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v93, v91
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v27, 1, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v40, v89, v85
	v_fma_f32 v81, -v86, v87, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v82, 1, v88
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v88, v90
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v27, v64, v27, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v64, -v83, v40, v89
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s69, 0, s59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v92, s59, v68, v84, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v40, v64, v85
	v_fma_f32 v96, -v91, v93, 1.0
	v_fma_f32 v95, -v90, v88, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v94, v92, v87
	v_div_scale_f32 v97, null, v84, v84, v74
	v_fma_f32 v83, -v83, v40, v89
	v_fmac_f32_e32 v88, v95, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v86, v94, v92
	v_div_scale_f32 v95, s60, v71, v84, v71
	v_div_fmas_f32 v40, v83, v85, v40
	v_fmac_f32_e32 v93, v96, v93
	v_rcp_f32_e32 v85, v97
	v_div_scale_f32 v96, null, v84, v84, v75
	v_dual_fmac_f32 v94, v89, v87 :: v_dual_mul_f32 v83, v95, v88
	v_div_scale_f32 v89, s61, v72, v84, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v98, v96
	v_div_fixup_f32 v65, v40, v84, v65
	v_fma_f32 v40, -v86, v94, v92
	v_fma_f32 v86, -v90, v83, v95
	v_mul_f32_e32 v92, v89, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v97, v85, 1.0
	s_mov_b32 vcc_lo, s59
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v2, v82, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v40, v40, v87, v94
	v_fmac_f32_e32 v83, v86, v88
	v_fma_f32 v86, -v91, v92, v89
	v_fmac_f32_e32 v85, v99, v85
	v_div_scale_f32 v87, s59, v74, v84, v74
	v_fma_f32 v94, -v96, v98, 1.0
	v_div_fixup_f32 v68, v40, v84, v68
	v_fma_f32 v40, -v90, v83, v95
	v_fmac_f32_e32 v92, v86, v93
	v_mul_f32_e32 v86, v87, v85
	v_fmac_f32_e32 v98, v94, v98
	v_div_scale_f32 v94, null, v84, v84, v78
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v90, s62, v75, v84, v75
	v_div_fmas_f32 v40, v40, v88, v83
	v_fma_f32 v83, -v91, v92, v89
	v_fma_f32 v88, -v97, v86, v87
	v_rcp_f32_e32 v89, v94
	v_div_scale_f32 v95, null, v84, v84, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v90, v98 :: v_dual_fmac_f32 v86, v88, v85
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v83, v83, v93, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v92, -v96, v91, v90
	v_div_fixup_f32 v71, v40, v84, v71
	v_fma_f32 v93, -v94, v89, 1.0
	v_fma_f32 v40, -v97, v86, v87
	v_div_fixup_f32 v72, v83, v84, v72
	v_fmac_f32_e32 v91, v92, v98
	v_div_scale_f32 v83, s60, v78, v84, v78
	v_fmac_f32_e32 v89, v93, v89
	v_fma_f32 v87, -v95, v88, 1.0
	v_div_scale_f32 v92, null, v84, v84, v80
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v93, null, v84, v84, v77
	v_div_fmas_f32 v40, v40, v85, v86
	v_fma_f32 v85, -v96, v91, v90
	v_mul_f32_e32 v86, v83, v89
	v_fmac_f32_e32 v88, v87, v88
	v_rcp_f32_e32 v87, v92
	v_div_scale_f32 v90, s59, v79, v84, v79
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v74, v40, v84, v74
	v_div_fmas_f32 v85, v85, v98, v91
	v_fma_f32 v91, -v94, v86, v83
	v_mul_f32_e32 v96, v90, v88
	v_rcp_f32_e32 v98, v93
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v92, v87, 1.0
	v_fmac_f32_e32 v86, v91, v89
	v_fma_f32 v40, -v95, v96, v90
	v_div_fixup_f32 v75, v85, v84, v75
	v_div_scale_f32 v85, s61, v80, v84, v80
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v91, null, v84, v84, v76
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v93, v98, 1.0
	v_fma_f32 v83, -v94, v86, v83
	v_fmac_f32_e32 v96, v40, v88
	v_mul_f32_e32 v40, v85, v87
	v_rcp_f32_e32 v94, v91
	v_fmac_f32_e32 v98, v97, v98
	v_div_scale_f32 v97, s62, v77, v84, v77
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v95, v96, v90
	v_div_scale_f32 v99, null, v84, v84, v73
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v89, -v92, v40, v85
	v_mul_f32_e32 v90, v97, v98
	v_div_fmas_f32 v86, v86, v88, v96
	v_rcp_f32_e32 v88, v99
	v_fma_f32 v95, -v91, v94, 1.0
	v_fmac_f32_e32 v40, v89, v87
	v_fma_f32 v89, -v93, v90, v97
	v_div_fixup_f32 v79, v86, v84, v79
	v_div_fixup_f32 v78, v83, v84, v78
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, s59, v76, v84, v76
	v_fmac_f32_e32 v90, v89, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v99, v88, 1.0
	v_div_scale_f32 v89, null, v84, v84, v70
	v_fma_f32 v83, -v92, v40, v85
	v_dual_mul_f32 v85, v95, v94 :: v_dual_fmac_f32 v88, v86, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v92, s60, v73, v84, v73
	v_div_fmas_f32 v40, v83, v87, v40
	v_fma_f32 v83, -v93, v90, v97
	v_fma_f32 v87, -v91, v85, v95
	v_div_scale_f32 v93, null, v84, v84, v69
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v89, v86, 1.0
	v_fmac_f32_e32 v85, v87, v94
	v_rcp_f32_e32 v87, v93
	v_div_fmas_f32 v83, v83, v98, v90
	v_mul_f32_e32 v90, v92, v88
	v_div_fixup_f32 v80, v40, v84, v80
	v_fma_f32 v40, -v91, v85, v95
	v_fmac_f32_e32 v86, v96, v86
	v_div_scale_f32 v96, null, v84, v84, v67
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v77, v83, v84, v77
	v_fma_f32 v83, -v99, v90, v92
	v_div_scale_f32 v91, s61, v70, v84, v70
	v_fma_f32 v95, -v93, v87, 1.0
	v_div_fmas_f32 v40, v40, v94, v85
	v_rcp_f32_e32 v85, v96
	v_fmac_f32_e32 v90, v83, v88
	v_mul_f32_e32 v83, v91, v86
	v_fmac_f32_e32 v87, v95, v87
	v_div_scale_f32 v94, s59, v69, v84, v69
	v_div_scale_f32 v95, null, v84, v84, v66
	v_div_fixup_f32 v76, v40, v84, v76
	v_fma_f32 v40, -v99, v90, v92
	v_fma_f32 v92, -v89, v83, v91
	v_mul_f32_e32 v97, v94, v87
	v_rcp_f32_e32 v98, v95
	v_fma_f32 v99, -v96, v85, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v82, 0xffff0000, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v40, v40, v88, v90
	v_fmac_f32_e32 v83, v92, v86
	v_fma_f32 v88, -v93, v97, v94
	v_fmac_f32_e32 v85, v99, v85
	v_div_scale_f32 v90, s60, v67, v84, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v95, v98, 1.0
	v_div_fixup_f32 v73, v40, v84, v73
	v_fma_f32 v40, -v89, v83, v91
	v_dual_fmac_f32 v97, v88, v87 :: v_dual_mul_f32 v88, v90, v85
	v_div_scale_f32 v91, null, v82, v82, v63
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v98, v92, v98
	v_div_scale_f32 v89, s62, v66, v84, v66
	v_div_fmas_f32 v40, v40, v86, v83
	v_fma_f32 v83, -v93, v97, v94
	v_fma_f32 v86, -v96, v88, v90
	v_rcp_f32_e32 v92, v91
	v_div_scale_f32 v94, null, v82, v82, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v93, v89, v98 :: v_dual_fmac_f32 v88, v86, v85
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v86, v94
	v_div_fmas_f32 v83, v83, v87, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v95, v93, v89
	v_div_fixup_f32 v70, v40, v84, v70
	v_fma_f32 v97, -v91, v92, 1.0
	v_fma_f32 v40, -v96, v88, v90
	v_div_fixup_f32 v69, v83, v84, v69
	v_fmac_f32_e32 v93, v87, v98
	v_div_scale_f32 v83, s59, v63, v82, v63
	v_fmac_f32_e32 v92, v97, v92
	v_fma_f32 v87, -v94, v86, 1.0
	v_div_scale_f32 v90, null, v82, v82, v61
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v64, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v40, v40, v85, v88
	v_fma_f32 v85, -v95, v93, v89
	v_mul_f32_e32 v88, v83, v92
	v_fmac_f32_e32 v86, v87, v86
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v89, s60, v62, v82, v62
	v_div_scale_f32 v95, null, v82, v82, v60
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v96, v89, v86
	v_div_fmas_f32 v85, v85, v98, v93
	v_fma_f32 v93, -v91, v88, v83
	v_rcp_f32_e32 v98, v95
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v81, 0xffff0000, v1
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v90, v87, 1.0
	v_div_fixup_f32 v67, v40, v84, v67
	v_fmac_f32_e32 v88, v93, v92
	v_fma_f32 v40, -v94, v96, v89
	v_div_fixup_f32 v66, v85, v84, v66
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v84, s61, v61, v82, v61
	v_div_scale_f32 v85, null, v82, v82, v59
	v_fma_f32 v93, -v95, v98, 1.0
	v_fma_f32 v83, -v91, v88, v83
	v_fmac_f32_e32 v96, v40, v86
	s_mov_b32 vcc_lo, s59
	v_mul_f32_e32 v40, v84, v87
	v_rcp_f32_e32 v91, v85
	v_fmac_f32_e32 v98, v93, v98
	v_div_scale_f32 v93, s62, v60, v82, v60
	v_div_fmas_f32 v83, v83, v92, v88
	v_fma_f32 v88, -v94, v96, v89
	v_div_scale_f32 v97, null, v82, v82, v58
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v89, -v90, v40, v84
	v_mul_f32_e32 v92, v93, v98
	v_div_fmas_f32 v86, v88, v86, v96
	v_rcp_f32_e32 v88, v97
	v_fma_f32 v94, -v85, v91, 1.0
	v_fmac_f32_e32 v40, v89, v87
	v_fma_f32 v89, -v95, v92, v93
	v_div_fixup_f32 v62, v86, v82, v62
	v_div_fixup_f32 v63, v83, v82, v63
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, s59, v59, v82, v59
	v_fmac_f32_e32 v92, v89, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v97, v88, 1.0
	v_div_scale_f32 v89, null, v82, v82, v57
	v_fma_f32 v83, -v90, v40, v84
	v_mul_f32_e32 v84, v94, v91
	v_fmac_f32_e32 v88, v86, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v90, s60, v58, v82, v58
	v_div_fmas_f32 v40, v83, v87, v40
	v_fma_f32 v83, -v95, v92, v93
	v_fma_f32 v87, -v85, v84, v94
	v_div_scale_f32 v93, null, v82, v82, v56
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v89, v86, 1.0
	v_fmac_f32_e32 v84, v87, v91
	v_rcp_f32_e32 v87, v93
	v_div_fmas_f32 v83, v83, v98, v92
	v_mul_f32_e32 v92, v90, v88
	v_div_fixup_f32 v61, v40, v82, v61
	v_fma_f32 v40, -v85, v84, v94
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v95, null, v82, v82, v55
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v60, v83, v82, v60
	v_fma_f32 v83, -v97, v92, v90
	v_div_scale_f32 v85, s61, v57, v82, v57
	v_fma_f32 v94, -v93, v87, 1.0
	v_div_fmas_f32 v40, v40, v91, v84
	v_rcp_f32_e32 v84, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v83, v88 :: v_dual_mul_f32 v83, v85, v86
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v91, s59, v56, v82, v56
	v_div_scale_f32 v94, null, v82, v82, v54
	v_div_fixup_f32 v59, v40, v82, v59
	v_fma_f32 v40, -v97, v92, v90
	v_fma_f32 v90, -v89, v83, v85
	v_mul_f32_e32 v96, v91, v87
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v83, v90, v86
	v_div_fmas_f32 v40, v40, v88, v92
	v_fma_f32 v88, -v93, v96, v91
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s60, v55, v82, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v58, v40, v82, v58
	v_fma_f32 v92, -v94, v97, 1.0
	v_fma_f32 v40, -v89, v83, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v96, v88, v87 :: v_dual_mul_f32 v85, v90, v84
	v_div_scale_f32 v89, null, v82, v82, v53
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v88, s62, v54, v82, v54
	v_div_fmas_f32 v40, v40, v86, v83
	v_fma_f32 v83, -v93, v96, v91
	v_fma_f32 v86, -v95, v85, v90
	v_rcp_f32_e32 v91, v89
	v_div_scale_f32 v93, null, v82, v82, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v92, v88, v97 :: v_dual_fmac_f32 v85, v86, v84
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v83, v83, v87, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v94, v92, v88
	v_div_fixup_f32 v57, v40, v82, v57
	v_fma_f32 v96, -v89, v91, 1.0
	v_fma_f32 v40, -v95, v85, v90
	v_div_fixup_f32 v56, v83, v82, v56
	v_fmac_f32_e32 v92, v87, v97
	v_div_scale_f32 v83, s59, v53, v82, v53
	v_fmac_f32_e32 v91, v96, v91
	v_fma_f32 v87, -v93, v86, 1.0
	v_div_scale_f32 v90, null, v82, v82, v51
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v98, null, v82, v82, v48
	v_div_fmas_f32 v40, v40, v84, v85
	v_fma_f32 v84, -v94, v92, v88
	v_mul_f32_e32 v85, v83, v91
	v_fmac_f32_e32 v86, v87, v86
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v88, s60, v52, v82, v52
	v_div_scale_f32 v94, null, v82, v82, v50
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v95, v88, v86
	v_div_fmas_f32 v84, v84, v97, v92
	v_fma_f32 v92, -v89, v85, v83
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v90, v87, 1.0
	v_div_fixup_f32 v55, v40, v82, v55
	v_fma_f32 v40, -v93, v95, v88
	v_fmac_f32_e32 v85, v92, v91
	v_div_fixup_f32 v54, v84, v82, v54
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v84, s61, v51, v82, v51
	v_div_scale_f32 v92, null, v82, v82, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v94, v97, 1.0
	v_fma_f32 v83, -v89, v85, v83
	v_fmac_f32_e32 v95, v40, v86
	s_mov_b32 vcc_lo, s59
	v_mul_f32_e32 v40, v84, v87
	v_rcp_f32_e32 v89, v92
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s62, v50, v82, v50
	v_div_fmas_f32 v83, v83, v91, v85
	v_fma_f32 v85, -v93, v95, v88
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v88, -v90, v40, v84
	v_mul_f32_e32 v91, v96, v97
	v_div_fixup_f32 v53, v83, v82, v53
	v_div_fmas_f32 v85, v85, v86, v95
	v_rcp_f32_e32 v86, v98
	v_fma_f32 v93, -v92, v89, 1.0
	v_fmac_f32_e32 v40, v88, v87
	v_fma_f32 v88, -v94, v91, v96
	v_div_fixup_f32 v52, v85, v82, v52
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s59, v49, v82, v49
	v_fmac_f32_e32 v91, v88, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v98, v86, 1.0
	v_div_scale_f32 v88, null, v81, v81, v47
	v_fma_f32 v83, -v90, v40, v84
	v_mul_f32_e32 v84, v93, v89
	v_fmac_f32_e32 v86, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v90, s60, v48, v82, v48
	v_div_fmas_f32 v40, v83, v87, v40
	v_fma_f32 v83, -v94, v91, v96
	v_fma_f32 v87, -v92, v84, v93
	v_div_scale_f32 v94, null, v81, v81, v46
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v51, v40, v82, v51
	v_fmac_f32_e32 v84, v87, v89
	v_rcp_f32_e32 v87, v94
	v_fma_f32 v95, -v88, v85, 1.0
	v_div_fmas_f32 v83, v83, v97, v91
	v_mul_f32_e32 v91, v90, v86
	v_fma_f32 v40, -v92, v84, v93
	s_mov_b32 vcc_lo, s59
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v81, v81, v45
	v_div_fixup_f32 v50, v83, v82, v50
	v_fma_f32 v83, -v98, v91, v90
	v_div_scale_f32 v92, s61, v47, v81, v47
	v_fma_f32 v93, -v94, v87, 1.0
	v_div_fmas_f32 v40, v40, v89, v84
	v_rcp_f32_e32 v84, v95
	v_fmac_f32_e32 v91, v83, v86
	v_mul_f32_e32 v83, v92, v85
	v_fmac_f32_e32 v87, v93, v87
	v_div_scale_f32 v89, s59, v46, v81, v46
	v_div_scale_f32 v93, null, v81, v81, v44
	v_div_fixup_f32 v49, v40, v82, v49
	v_fma_f32 v40, -v98, v91, v90
	v_fma_f32 v90, -v88, v83, v92
	v_mul_f32_e32 v96, v89, v87
	v_rcp_f32_e32 v97, v93
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v83, v90, v85
	v_div_fmas_f32 v40, v40, v86, v91
	v_fma_f32 v86, -v94, v96, v89
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s60, v45, v81, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v48, v40, v82, v48
	v_fma_f32 v91, -v93, v97, 1.0
	v_fma_f32 v40, -v88, v83, v92
	v_fmac_f32_e32 v96, v86, v87
	v_mul_f32_e32 v82, v90, v84
	v_div_scale_f32 v88, null, v81, v81, v43
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v97, v91, v97
	v_div_scale_f32 v86, s62, v44, v81, v44
	v_div_fmas_f32 v40, v40, v85, v83
	v_fma_f32 v83, -v94, v96, v89
	v_fma_f32 v85, -v95, v82, v90
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v92, null, v81, v81, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v86, v97 :: v_dual_fmac_f32 v82, v85, v84
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v83, v83, v87, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v93, v91, v86
	v_div_fixup_f32 v47, v40, v81, v47
	v_fma_f32 v94, -v88, v89, 1.0
	v_fma_f32 v40, -v95, v82, v90
	v_div_fixup_f32 v46, v83, v81, v46
	v_fmac_f32_e32 v91, v87, v97
	v_div_scale_f32 v83, s59, v43, v81, v43
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v87, -v92, v85, 1.0
	v_div_scale_f32 v90, null, v81, v81, v39
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v40, v40, v84, v82
	v_fma_f32 v82, -v93, v91, v86
	v_mul_f32_e32 v84, v83, v89
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v86, v90
	v_div_scale_f32 v87, s60, v42, v81, v42
	v_div_scale_f32 v93, null, v81, v81, v38
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v94, v87, v85
	v_div_fmas_f32 v82, v82, v97, v91
	v_fma_f32 v91, -v88, v84, v83
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v86, 1.0
	v_div_fixup_f32 v45, v40, v81, v45
	v_fma_f32 v40, -v92, v94, v87
	v_fmac_f32_e32 v84, v91, v89
	v_div_scale_f32 v91, null, v81, v81, v37
	v_div_fixup_f32 v44, v82, v81, v44
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v82, s61, v39, v81, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v83, -v88, v84, v83
	v_fmac_f32_e32 v94, v40, v85
	v_rcp_f32_e32 v88, v91
	s_mov_b32 vcc_lo, s59
	v_mul_f32_e32 v40, v82, v86
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s62, v38, v81, v38
	v_div_fmas_f32 v83, v83, v89, v84
	v_fma_f32 v84, -v92, v94, v87
	v_div_scale_f32 v97, null, v81, v81, v36
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v87, -v90, v40, v82
	v_mul_f32_e32 v89, v95, v96
	v_fma_f32 v92, -v91, v88, 1.0
	v_div_fmas_f32 v84, v84, v85, v94
	v_rcp_f32_e32 v85, v97
	v_fmac_f32_e32 v40, v87, v86
	v_fma_f32 v87, -v93, v89, v95
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s59, v37, v81, v37
	v_div_fixup_f32 v43, v83, v81, v43
	v_div_fixup_f32 v42, v84, v81, v42
	v_fma_f32 v82, -v90, v40, v82
	v_fmac_f32_e32 v89, v87, v96
	v_mul_f32_e32 v83, v92, v88
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v81, v81, v35
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v90, s60, v36, v81, v36
	v_div_fmas_f32 v40, v82, v86, v40
	v_fma_f32 v82, -v93, v89, v95
	v_fma_f32 v86, -v91, v83, v92
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v93, null, v81, v81, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v86, v88
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v39, v40, v81, v39
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v82, v82, v96, v89
	v_mul_f32_e32 v89, v90, v85
	v_fma_f32 v40, -v91, v83, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v38, v82, v81, v38
	v_fma_f32 v82, -v97, v89, v90
	v_div_scale_f32 v91, s61, v35, v81, v35
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_scale_f32 v94, null, v81, v81, v32
	v_div_fmas_f32 v40, v40, v88, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v82, v85 :: v_dual_fmac_f32 v86, v92, v86
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v92, null, v81, v81, v31
	v_mul_f32_e32 v82, v91, v84
	v_div_scale_f32 v88, s59, v34, v81, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v37, v40, v81, v37
	v_fma_f32 v40, -v97, v89, v90
	v_fma_f32 v90, -v87, v82, v91
	v_mul_f32_e32 v95, v88, v86
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v40, v40, v85, v89
	v_fmac_f32_e32 v82, v90, v84
	v_fma_f32 v85, -v93, v95, v88
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s60, v32, v81, v32
	v_fma_f32 v90, -v92, v96, 1.0
	v_div_fixup_f32 v36, v40, v81, v36
	v_fma_f32 v40, -v87, v82, v91
	v_fmac_f32_e32 v95, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v85, v89, v83 :: v_dual_fmac_f32 v96, v90, v96
	v_div_scale_f32 v90, null, v81, v81, v29
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v87, s62, v31, v81, v31
	v_div_fmas_f32 v40, v40, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v84, -v94, v85, v89
	v_rcp_f32_e32 v88, v90
	v_div_scale_f32 v93, null, v81, v81, v28
	v_mul_f32_e32 v91, v87, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v84, v83
	s_mov_b32 vcc_lo, s59
	v_rcp_f32_e32 v84, v93
	v_div_fmas_f32 v82, v82, v86, v95
	v_fma_f32 v86, -v92, v91, v87
	v_div_fixup_f32 v35, v40, v81, v35
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v88, 1.0
	v_fma_f32 v40, -v94, v85, v89
	v_div_fixup_f32 v34, v82, v81, v34
	v_fmac_f32_e32 v91, v86, v96
	v_div_scale_f32 v82, s59, v29, v81, v29
	v_fmac_f32_e32 v88, v95, v88
	v_fma_f32 v86, -v93, v84, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v94, null, v64, v64, v25
	v_div_fmas_f32 v40, v40, v83, v85
	v_fma_f32 v83, -v92, v91, v87
	v_mul_f32_e32 v85, v82, v88
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, null, v64, v64, v26
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v87, s60, v28, v81, v28
	v_div_fmas_f32 v83, v83, v96, v91
	v_rcp_f32_e32 v89, v86
	v_fma_f32 v91, -v90, v85, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v92, v87, v84
	v_div_fixup_f32 v32, v40, v81, v32
	v_div_fixup_f32 v31, v83, v81, v31
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v85, v91, v88
	v_fma_f32 v40, -v93, v92, v87
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v96, null, v64, v64, v22
	v_fma_f32 v91, -v86, v89, 1.0
	v_fma_f32 v82, -v90, v85, v82
	v_div_scale_f32 v90, null, v64, v64, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v40, v84 :: v_dual_fmac_f32 v89, v91, v89
	v_div_fmas_f32 v82, v82, v88, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v40, s61, v26, v64, v26
	v_fma_f32 v85, -v93, v92, v87
	v_fma_f32 v95, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v87, v40, v89
	v_div_scale_f32 v88, s59, v25, v64, v25
	v_fmac_f32_e32 v83, v95, v83
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v90, v91, 1.0
	v_rcp_f32_e32 v98, v96
	v_div_fmas_f32 v84, v85, v84, v92
	v_fma_f32 v95, -v86, v87, v40
	v_mul_f32_e32 v97, v88, v83
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s62, v24, v64, v24
	v_div_fixup_f32 v29, v82, v81, v29
	v_div_fixup_f32 v28, v84, v81, v28
	v_div_scale_f32 v84, null, v64, v64, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v92, v93, v91 :: v_dual_fmac_f32 v87, v95, v89
	v_fma_f32 v85, -v94, v97, v88
	v_fma_f32 v82, -v96, v98, 1.0
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v81, -v90, v92, v93
	v_fma_f32 v40, -v86, v87, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v97, v85, v83 :: v_dual_fmac_f32 v98, v82, v98
	v_div_scale_f32 v82, s60, v22, v64, v22
	v_fmac_f32_e32 v92, v81, v91
	v_rcp_f32_e32 v81, v84
	v_div_fmas_f32 v40, v40, v89, v87
	v_fma_f32 v85, -v94, v97, v88
	v_mul_f32_e32 v86, v82, v98
	v_div_scale_f32 v87, null, v64, v64, v20
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v26, v40, v64, v26
	v_div_fmas_f32 v83, v85, v83, v97
	v_fma_f32 v85, -v90, v92, v93
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v84, v81, 1.0
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v90, -v96, v86, v82
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v25, v83, v64, v25
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, s59, v21, v64, v21
	v_fmac_f32_e32 v86, v90, v98
	v_div_fmas_f32 v85, v85, v91, v92
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v40, v88, v81
	v_fma_f32 v83, -v87, v89, 1.0
	v_fma_f32 v82, -v96, v86, v82
	v_div_fixup_f32 v24, v85, v64, v24
	v_div_scale_f32 v85, null, v64, v64, v19
	v_fma_f32 v90, -v84, v40, v88
	v_fmac_f32_e32 v89, v83, v89
	v_div_scale_f32 v83, s61, v20, v64, v20
	v_div_fmas_f32 v82, v82, v98, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v90, v81
	v_rcp_f32_e32 v91, v85
	v_mul_f32_e32 v86, v83, v89
	s_mov_b32 vcc_lo, s59
	v_div_fixup_f32 v22, v82, v64, v22
	v_fma_f32 v82, -v84, v40, v88
	v_div_scale_f32 v90, null, v64, v64, v18
	v_fma_f32 v84, -v87, v86, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v40, v82, v81, v40
	v_div_scale_f32 v81, null, v64, v64, v17
	v_fma_f32 v88, -v85, v91, 1.0
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v86, v84, v89
	v_rcp_f32_e32 v84, v81
	v_div_scale_f32 v82, s59, v19, v64, v19
	v_fmac_f32_e32 v91, v88, v91
	v_div_scale_f32 v88, null, v64, v64, v16
	v_div_fixup_f32 v21, v40, v64, v21
	v_fma_f32 v83, -v87, v86, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v90, v92, 1.0
	v_rcp_f32_e32 v94, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v81, v84, 1.0
	v_mul_f32_e32 v87, v82, v91
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v92, v40, v92
	v_div_scale_f32 v40, s60, v18, v64, v18
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v93, null, v64, v64, v15
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v85, v87, v82
	v_mul_f32_e32 v89, v40, v92
	v_div_scale_f32 v95, s61, v17, v64, v17
	v_fma_f32 v96, -v88, v94, 1.0
	v_rcp_f32_e32 v97, v93
	v_fmac_f32_e32 v87, v86, v91
	v_fma_f32 v86, -v90, v89, v40
	v_mul_f32_e32 v98, v95, v84
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s62, v16, v64, v16
	v_div_fixup_f32 v20, v83, v64, v20
	v_fma_f32 v82, -v85, v87, v82
	v_fmac_f32_e32 v89, v86, v92
	v_fma_f32 v83, -v81, v98, v95
	v_mul_f32_e32 v85, v96, v94
	v_fma_f32 v86, -v93, v97, 1.0
	s_mov_b32 vcc_lo, s59
	v_fma_f32 v40, -v90, v89, v40
	v_fmac_f32_e32 v98, v83, v84
	v_fma_f32 v83, -v88, v85, v96
	v_fmac_f32_e32 v97, v86, v97
	v_div_scale_f32 v86, s59, v15, v64, v15
	v_div_fmas_f32 v82, v82, v91, v87
	v_div_scale_f32 v87, null, v64, v64, v14
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v81, -v81, v98, v95
	v_fmac_f32_e32 v85, v83, v94
	v_mul_f32_e32 v83, v86, v97
	v_div_fmas_f32 v40, v40, v92, v89
	v_rcp_f32_e32 v89, v87
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v19, v82, v64, v19
	v_div_fmas_f32 v81, v81, v84, v98
	v_fma_f32 v84, -v88, v85, v96
	v_fma_f32 v88, -v93, v83, v86
	v_div_fixup_f32 v18, v40, v64, v18
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v17, v81, v64, v17
	v_div_scale_f32 v81, null, v64, v64, v13
	v_fmac_f32_e32 v83, v88, v97
	v_fma_f32 v82, -v87, v89, 1.0
	v_div_fmas_f32 v84, v84, v94, v85
	s_mov_b32 vcc_lo, s59
	v_div_scale_f32 v91, null, v64, v64, v10
	v_fma_f32 v40, -v93, v83, v86
	v_fmac_f32_e32 v89, v82, v89
	v_div_scale_f32 v82, null, v64, v64, v12
	v_div_fixup_f32 v16, v84, v64, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v40, v97, v83
	v_rcp_f32_e32 v83, v81
	v_rcp_f32_e32 v86, v82
	v_div_scale_f32 v85, vcc_lo, v14, v64, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v15, v40, v64, v15
	v_div_scale_f32 v84, null, v64, v64, v11
	v_mul_f32_e32 v90, v85, v89
	v_rcp_f32_e32 v93, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v40, -v81, v83, 1.0
	v_fma_f32 v92, -v82, v86, 1.0
	v_fma_f32 v94, -v87, v90, v85
	v_rcp_f32_e32 v88, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v40, v83
	v_div_scale_f32 v40, s59, v13, v64, v13
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s60, v12, v64, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v96, v40, v83
	v_fmac_f32_e32 v90, v94, v89
	v_fma_f32 v95, -v84, v88, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v98, v92, v86
	v_fma_f32 v97, -v91, v93, 1.0
	v_fma_f32 v94, -v81, v96, v40
	v_fma_f32 v85, -v87, v90, v85
	v_fmac_f32_e32 v88, v95, v88
	v_fma_f32 v87, -v82, v98, v92
	v_div_scale_f32 v95, s61, v11, v64, v11
	v_fmac_f32_e32 v96, v94, v83
	v_div_fmas_f32 v85, v85, v89, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v98, v87, v86
	s_mov_b32 vcc_lo, s59
	s_mov_b32 s59, 0xc1000000
	v_fma_f32 v40, -v81, v96, v40
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v46, v46, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v82, v98, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v69, v69, s59, 0x40e00000
	v_med3_f32 v16, v16, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v40, v40, v83, v96
	s_mov_b32 vcc_lo, s60
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v90, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v86, v98
	v_fmac_f32_e32 v93, v97, v93
	v_div_scale_f32 v97, s62, v10, v64, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v99, v95, v88
	v_div_fixup_f32 v12, v82, v64, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v101, v16
	v_and_b32_e32 v16, 15, v90
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v100, v97, v93
	v_fma_f32 v94, -v84, v99, v95
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v47, v47, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v40, v64, v13
	v_fma_f32 v81, -v91, v100, v97
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v12, v12, s59, 0x40e00000
	v_cvt_i32_f32_e32 v89, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v99, v94, v88 :: v_dual_fmac_f32 v100, v81, v93
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v22, v22
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v105, v12
	v_and_b32_e32 v12, 15, v89
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v84, v99, v95
	v_fma_f32 v83, -v91, v100, v97
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v60, v60, s59, 0x40e00000
	v_med3_f32 v37, v37, s59, 0x40e00000
	v_med3_f32 v26, v26, s59, 0x40e00000
	v_med3_f32 v25, v25, s59, 0x40e00000
	v_med3_f32 v24, v24, s59, 0x40e00000
	v_med3_f32 v22, v22, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v88, v99
	s_mov_b32 vcc_lo, s62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s59, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v93, v100
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s59, 0x40e00000
	v_med3_f32 v13, v13, s59, 0x40e00000
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v22, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v90, 16, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v11, v81, v64, v11
	v_div_fixup_f32 v10, v83, v64, v10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v65
	v_rndne_f32_e32 v63, v63
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v94, v35
	v_cvt_i32_f32_e32 v96, v21
	v_cvt_i32_f32_e32 v100, v17
	v_cvt_i32_f32_e32 v104, v13
	v_and_b32_e32 v35, 15, v60
	v_and_b32_e32 v60, 15, v37
	v_and_b32_e32 v13, 15, v26
	v_and_b32_e32 v17, 15, v25
	v_and_b32_e32 v21, 15, v24
	v_and_b32_e32 v37, 15, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v22, 13, v0
	v_and_b32_e32 v24, 0x2f0, v30
	v_lshlrev_b32_e32 v25, 8, v90
	v_and_b32_e32 v26, 64, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v71
	v_rndne_f32_e32 v71, v74
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v14, v85, v64, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v68
	v_rndne_f32_e32 v74, v78
	v_rndne_f32_e32 v78, v80
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v40, v40, s59, 0x40e00000
	v_med3_f32 v63, v63, s59, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v22, 0xe000, v22, v25
	v_xor_b32_e32 v24, v24, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v72
	v_rndne_f32_e32 v72, v75
	v_rndne_f32_e32 v75, v79
	v_rndne_f32_e32 v77, v77
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v71, v71, s59, 0x40e00000
	v_med3_f32 v59, v59, s59, 0x40e00000
	v_med3_f32 v45, v45, s59, 0x40e00000
	v_med3_f32 v44, v44, s59, 0x40e00000
	v_med3_f32 v43, v43, s59, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s59, 0x40e00000
	v_med3_f32 v78, v78, s59, 0x40e00000
	v_med3_f32 v62, v62, s59, 0x40e00000
	v_med3_f32 v61, v61, s59, 0x40e00000
	v_med3_f32 v55, v55, s59, 0x40e00000
	v_med3_f32 v11, v11, s59, 0x40e00000
	v_med3_f32 v10, v10, s59, 0x40e00000
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v63, v63
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v8, v22, v8, v24
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v50, v50
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v72, v72, s59, 0x40e00000
	v_med3_f32 v74, v74, s59, 0x40e00000
	v_med3_f32 v75, v75, s59, 0x40e00000
	v_med3_f32 v77, v77, s59, 0x40e00000
	v_med3_f32 v76, v76, s59, 0x40e00000
	v_med3_f32 v70, v70, s59, 0x40e00000
	v_med3_f32 v58, v58, s59, 0x40e00000
	v_med3_f32 v51, v51, s59, 0x40e00000
	v_med3_f32 v49, v49, s59, 0x40e00000
	v_med3_f32 v48, v48, s59, 0x40e00000
	v_med3_f32 v42, v42, s59, 0x40e00000
	v_med3_f32 v36, v36, s59, 0x40e00000
	v_med3_f32 v32, v32, s59, 0x40e00000
	v_med3_f32 v20, v20, s59, 0x40e00000
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v91, v43
	v_med3_f32 v19, v19, s59, 0x40e00000
	v_med3_f32 v15, v15, s59, 0x40e00000
	v_med3_f32 v14, v14, s59, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v78, v78
	v_cvt_i32_f32_e32 v81, v62
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v84, v55
	v_cvt_i32_f32_e32 v106, v11
	v_cvt_i32_f32_e32 v107, v10
	v_and_b32_e32 v10, 15, v40
	v_and_b32_e32 v11, 15, v63
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v22, 0, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s59, 0x40e00000
	v_med3_f32 v54, v54, s59, 0x40e00000
	v_med3_f32 v50, v50, s59, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v77, v77
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v79, v70
	v_cvt_i32_f32_e32 v83, v58
	v_cvt_i32_f32_e32 v87, v51
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v92, v42
	v_cvt_i32_f32_e32 v93, v36
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v97, v20
	v_and_b32_e32 v42, 15, v71
	v_and_b32_e32 v43, 15, v59
	v_and_b32_e32 v20, 15, v45
	v_and_b32_e32 v36, 15, v44
	v_and_b32_e32 v44, 15, v91
	v_and_b32_e32 v45, 15, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v98, v19
	v_cvt_i32_f32_e32 v102, v15
	v_cvt_i32_f32_e32 v103, v14
	v_and_b32_e32 v14, 15, v64
	v_and_b32_e32 v58, 15, v78
	v_and_b32_e32 v15, 15, v81
	v_and_b32_e32 v19, 15, v61
	v_and_b32_e32 v59, 15, v84
	v_and_b32_e32 v61, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v22, v[10:13]
	ds_store_b128 v22, v[42:45] offset:256
	v_xad_u32 v10, v8, 16, 0
	v_lshlrev_b32_e32 v11, 6, v0
	v_lshlrev_b32_e32 v12, 5, v23
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v80, v66
	v_cvt_i32_f32_e32 v85, v54
	v_cvt_i32_f32_e32 v88, v50
	v_and_b32_e32 v46, 15, v72
	v_and_b32_e32 v50, 15, v74
	v_and_b32_e32 v54, 15, v75
	v_and_b32_e32 v62, 15, v77
	v_and_b32_e32 v66, 15, v76
	v_and_b32_e32 v74, 15, v79
	v_and_b32_e32 v47, 15, v83
	v_and_b32_e32 v75, 15, v87
	v_and_b32_e32 v83, 15, v49
	v_and_b32_e32 v87, 15, v48
	v_and_b32_e32 v48, 15, v92
	v_and_b32_e32 v76, 15, v32
	v_and_b32_e32 v49, 15, v97
	v_and_b32_e32 v77, 15, v104
	v_med3_f32 v65, v65, s59, 0x40e00000
	v_med3_f32 v68, v68, s59, 0x40e00000
	v_med3_f32 v73, v73, s59, 0x40e00000
	v_med3_f32 v67, v67, s59, 0x40e00000
	v_med3_f32 v53, v53, s59, 0x40e00000
	v_med3_f32 v52, v52, s59, 0x40e00000
	v_med3_f32 v34, v34, s59, 0x40e00000
	v_med3_f32 v57, v57, s59, 0x40e00000
	v_med3_f32 v39, v39, s59, 0x40e00000
	v_med3_f32 v31, v31, s59, 0x40e00000
	v_med3_f32 v29, v29, s59, 0x40e00000
	v_med3_f32 v28, v28, s59, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v22, v[58:61] offset:2048
	ds_store_b128 v22, v[74:77] offset:2304
	ds_store_b128 v10, v[14:17]
	ds_store_b128 v10, v[46:49] offset:256
	v_lshlrev_b32_e32 v14, 2, v90
	v_and_or_b32 v11, 0x300, v11, v12
	v_xor_b32_e32 v7, v7, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v56, v56, s59, 0x40e00000
	v_med3_f32 v38, v38, s59, 0x40e00000
	v_med3_f32 v18, v18, s59, 0x40e00000
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v95, v34
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v28, v28
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v7, v7, v11, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v99, v18
	v_and_b32_e32 v18, 15, v65
	v_and_b32_e32 v34, 15, v68
	v_and_b32_e32 v70, 15, v73
	v_and_b32_e32 v78, 15, v69
	v_and_b32_e32 v82, 15, v67
	v_and_b32_e32 v63, 15, v85
	v_and_b32_e32 v67, 15, v53
	v_and_b32_e32 v71, 15, v52
	v_and_b32_e32 v64, 15, v93
	v_and_b32_e32 v68, 15, v94
	v_and_b32_e32 v72, 15, v95
	v_and_b32_e32 v65, 15, v101
	v_and_b32_e32 v69, 15, v102
	v_and_b32_e32 v73, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v13, v8, 32, 0
	v_xad_u32 v8, v8, 48, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v86, 15, v80
	v_and_b32_e32 v51, 15, v57
	v_and_b32_e32 v79, 15, v88
	v_and_b32_e32 v52, 15, v39
	v_and_b32_e32 v80, 15, v31
	v_and_b32_e32 v84, 15, v29
	v_and_b32_e32 v88, 15, v28
	v_and_b32_e32 v53, 15, v98
	v_and_b32_e32 v81, 15, v105
	v_and_b32_e32 v85, 15, v106
	v_and_b32_e32 v89, 15, v107
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v22, 0, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v55, 15, v56
	v_and_b32_e32 v56, 15, v38
	v_and_b32_e32 v57, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v26, 0x8040, v7, 0
	ds_store_b128 v10, v[62:65] offset:2048
	ds_store_b128 v10, v[78:81] offset:2304
	ds_store_b128 v13, v[18:21]
	ds_store_b128 v13, v[50:53] offset:256
	ds_store_b128 v13, v[66:69] offset:2048
	ds_store_b128 v13, v[82:85] offset:2304
	ds_store_b128 v8, v[34:37]
	ds_store_b128 v8, v[54:57] offset:256
	ds_store_b128 v8, v[70:73] offset:2048
	ds_store_b128 v8, v[86:89] offset:2304
	v_xad_u32 v8, 0x4020, v7, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v22
	ds_load_b128 v[14:17], v22 offset:128
	ds_load_b128 v[18:21], v22 offset:4096
	ds_load_b128 v[22:25], v22 offset:4224
	v_xad_u32 v7, 0xc060, v7, 0
	ds_load_b128 v[46:49], v26
	ds_load_b128 v[50:53], v26 offset:128
	ds_load_b128 v[54:57], v26 offset:4096
	ds_load_b128 v[58:61], v26 offset:4224
	ds_load_b128 v[62:65], v7 offset:4096
	ds_load_b128 v[66:69], v7
	ds_load_b128 v[70:73], v7 offset:128
	ds_load_b128 v[74:77], v7 offset:4224
	ds_load_b128 v[28:31], v8
	ds_load_b128 v[32:35], v8 offset:128
	ds_load_b128 v[36:39], v8 offset:4096
	ds_load_b128 v[42:45], v8 offset:4224
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v41, 2, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[3:4]
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v27.h
	v_mov_b16_e32 v1.l, v9.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v7, s59, s68, v41
	v_add_co_ci_u32_e64 v8, null, s69, 0, s59
	v_add_co_u32 v40, s59, s68, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v41, null, s69, 0, s59
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[72:73], v[3:4]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v4, s68, v6
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v3, 0x7f, v0
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s69, s74, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v78, v18, 4, v10
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v47, v55, 4, v47
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 4, v4
	v_lshl_or_b32 v3, s75, 7, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v55, v63, 4, v67
	v_lshl_or_b32 v67, v20, 4, v12
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s74, s69
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 6, v4
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v64, 4, v68
	v_lshl_or_b32 v68, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 8, v4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[72:73], v[7:8]
	v_cmp_gt_i64_e64 s63, s[72:73], v[40:41]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v79, v36, 4, v28
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v62, 4, v66
	v_lshl_or_b32 v62, v22, 4, v14
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s68, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 10, v4
	v_add_nc_u32_e32 v28, 36, v4
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v63, v23, 4, v15
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v75, 4, v71
	v_lshl_or_b32 v71, v38, 4, v30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 12, v4
	v_add_nc_u32_e32 v30, 38, v4
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v19, 4, v11
	v_lshl_or_b32 v64, v24, 4, v16
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v76, 4, v72
	v_lshl_or_b32 v72, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 14, v4
	v_add_nc_u32_e32 v31, 40, v4
	v_mad_u64_u32 v[10:11], null, v10, s72, v[3:4]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[70:71], v[7:8]
	v_cmp_le_i64_e64 s62, s[70:71], v[40:41]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v42, v42, 4, v32
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v65, 4, v69
	v_lshl_or_b32 v65, v25, 4, v17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 16, v4
	v_add_nc_u32_e32 v32, 42, v4
	v_mad_u64_u32 v[6:7], null, v4, s72, v[3:4]
	v_mad_u64_u32 v[11:12], null, v12, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v43, v43, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 18, v4
	v_add_nc_u32_e32 v33, 44, v4
	v_mad_u64_u32 v[12:13], null, v13, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v74, 4, v70
	v_lshl_or_b32 v70, v37, 4, v29
	v_lshl_or_b32 v44, v44, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 2, v4
	v_add_nc_u32_e32 v19, 20, v4
	v_add_nc_u32_e32 v34, 46, v4
	v_mad_u64_u32 v[13:14], null, v14, s72, v[3:4]
	v_mad_u64_u32 v[28:29], null, v28, s72, v[3:4]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v45, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 22, v4
	v_add_nc_u32_e32 v35, 48, v4
	v_mad_u64_u32 v[14:15], null, v15, s72, v[3:4]
	v_mad_u64_u32 v[29:30], null, v30, s72, v[3:4]
	v_add_nc_u32_e32 v21, 24, v4
	v_add_nc_u32_e32 v36, 50, v4
	v_mad_u64_u32 v[15:16], null, v16, s72, v[3:4]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[3:4]
	v_add_nc_u32_e32 v22, 26, v4
	v_add_nc_u32_e32 v37, 52, v4
	v_mad_u64_u32 v[16:17], null, v17, s72, v[3:4]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[3:4]
	v_add_nc_u32_e32 v23, 28, v4
	v_add_nc_u32_e32 v38, 54, v4
	v_mad_u64_u32 v[17:18], null, v18, s72, v[3:4]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v24, 30, v4
	v_add_nc_u32_e32 v39, 56, v4
	v_mad_u64_u32 v[7:8], null, v8, s72, v[3:4]
	v_mad_u64_u32 v[18:19], null, v19, s72, v[3:4]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[3:4]
	v_add_nc_u32_e32 v25, 32, v4
	v_add_nc_u32_e32 v40, 58, v4
	v_mad_u64_u32 v[19:20], null, v20, s72, v[3:4]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v26, 34, v4
	v_add_nc_u32_e32 v41, 60, v4
	v_add_nc_u32_e32 v69, 62, v4
	v_mad_u64_u32 v[20:21], null, v21, s72, v[3:4]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[3:4]
	v_mad_u64_u32 v[21:22], null, v22, s72, v[3:4]
	v_mad_u64_u32 v[36:37], null, v37, s72, v[3:4]
	v_mad_u64_u32 v[22:23], null, v23, s72, v[3:4]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_mov_b32 s68, s64
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[23:24], null, v24, s72, v[3:4]
	v_mad_u64_u32 v[38:39], null, v39, s72, v[3:4]
	v_mad_u64_u32 v[24:25], null, v25, s72, v[3:4]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v78, v6, s[68:71], 0 offen
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s57, s58
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[25:26], null, v26, s72, v[3:4]
	v_mad_u64_u32 v[40:41], null, v41, s72, v[3:4]
	v_mad_u64_u32 v[3:4], null, v69, s72, v[3:4]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v4, 0x80000000, v7, s60
	v_cndmask_b32_e32 v7, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s55, s56
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s53, s54
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v77, 4, v73
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v79, v4, s[68:71], 0 offen
	buffer_store_b8 v46, v6, s[68:71], 0 offen
	buffer_store_b8 v54, v7, s[68:71], 0 offen
	buffer_store_b8 v62, v8, s[68:71], 0 offen
	buffer_store_b8 v42, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s49, s50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s47, s48
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s45, s46
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s41, s42
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v50, v4, s[68:71], 0 offen
	buffer_store_b8 v58, v6, s[68:71], 0 offen
	buffer_store_b8 v66, v7, s[68:71], 0 offen
	buffer_store_b8 v70, v8, s[68:71], 0 offen
	buffer_store_b8 v47, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s39, s40
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s37, s38
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s35, s36
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s33, s34
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s30, s31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v55, v4, s[68:71], 0 offen
	buffer_store_b8 v63, v6, s[68:71], 0 offen
	buffer_store_b8 v43, v7, s[68:71], 0 offen
	buffer_store_b8 v51, v8, s[68:71], 0 offen
	buffer_store_b8 v59, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s28, s29
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s26, s27
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s24, s25
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s22, s23
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s20, s21
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v67, v4, s[68:71], 0 offen
	buffer_store_b8 v71, v6, s[68:71], 0 offen
	buffer_store_b8 v48, v7, s[68:71], 0 offen
	buffer_store_b8 v56, v8, s[68:71], 0 offen
	buffer_store_b8 v64, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s18, s19
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s16, s17
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s14, s15
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s12, s13
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s10, s11
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v44, v4, s[68:71], 0 offen
	buffer_store_b8 v52, v6, s[68:71], 0 offen
	buffer_store_b8 v60, v7, s[68:71], 0 offen
	buffer_store_b8 v68, v8, s[68:71], 0 offen
	buffer_store_b8 v72, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s8, s9
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s74, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v40, vcc_lo
	s_clause 0x4
	buffer_store_b8 v49, v4, s[68:71], 0 offen
	buffer_store_b8 v57, v6, s[68:71], 0 offen
	buffer_store_b8 v65, v7, s[68:71], 0 offen
	buffer_store_b8 v45, v8, s[68:71], 0 offen
	buffer_store_b8 v53, v10, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v7, 2, v90
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v4, 3, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v61, v3, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v3, 0, v4
	v_add3_u32 v4, v7, v6, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s74, s74, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s74, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v3, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	s_and_b32 vcc_lo, vcc_lo, s76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v0, v2, s75, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp82:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 176
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 79
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 79
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 176
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21364
; TotalNumSgprs: 81
; NumVgprs: 256
; ScratchSize: 176
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 81
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 176
    .sgpr_count:     81
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 43
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
