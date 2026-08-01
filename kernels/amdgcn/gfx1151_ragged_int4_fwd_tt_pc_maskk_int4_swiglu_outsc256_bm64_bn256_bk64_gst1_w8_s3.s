	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
	v_mov_b32_e32 v165, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v69, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s20, 0xff
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
	v_rcp_iflag_f32_e32 v0, s6
	v_readfirstlane_b32 s6, v0
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
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v0, 63, v165
	.loc	1 1038 17                       ; ragged.py:1038:17
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
	s_sub_i32 s28, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s28, s3
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
	s_load_b64 s[22:23], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[24:25], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[26:27], s[2:3], 0x0
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[6:7], s[4:5], 0x0
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s5, s20, 1
	s_mov_b32 s4, 0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s21, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s22, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s23, 0, s2
	v_add_nc_u32_e32 v178, s22, v0
	v_lshlrev_b32_e32 v8, 1, v165
	.loc	1 1066 35                       ; ragged.py:1066:35
	s_mul_i32 s13, s6, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[24:25], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[1:2]
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshlrev_b32_e32 v1, 1, v165
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v2, 0x80, v165
	v_dual_mov_b32 v4, s22 :: v_dual_add_nc_u32 v3, s22, v0
	v_mov_b32_e32 v0, s13
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr0
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x40
	s_load_b128 s[16:19], s[0:1], 0x10
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v166, 15, v165
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v144, 0
	s_lshl_b32 s12, s28, 8
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_and_b32 s29, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_lshrrev_b32_e32 v0, 5, v165
	v_and_b32_e32 v1, 0xe0, v165
	v_bfe_i32 v2, v165, 7, 1
	v_lshlrev_b32_e32 v4, 5, v166
	v_and_b32_e32 v5, 24, v8
	v_or_b32_e32 v0, s12, v0
	v_lshlrev_b32_e32 v1, 4, v1
	v_and_b32_e32 v3, 0x7f, v165
	v_and_b32_e32 v2, 0x88, v2
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b32 s14, s[0:1], 0x50
	v_add_nc_u32_e32 v0, s13, v0
	v_or3_b32 v130, v4, v5, v1
	v_xor_b32_e32 v129, v2, v3
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v77, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v1, v0, s21
	v_add_nc_u32_e32 v2, 8, v0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v129, off offset:116
	scratch_store_b32 off, v8, off offset:412
	scratch_store_b32 off, v130, off offset:120
	v_add_nc_u32_e32 v3, 16, v0
	v_add_nc_u32_e32 v6, 24, v0
	v_add_nc_u32_e32 v4, 40, v0
	scratch_store_b32 off, v1, off offset:124 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s21, v2
	v_add_nc_u32_e32 v5, 48, v0
	v_add_nc_u32_e32 v7, 56, v0
	v_add_nc_u32_e32 v8, 64, v0
	v_add_nc_u32_e32 v10, 0x50, v0
	v_add_nc_u32_e32 v11, 0x58, v0
	v_add_nc_u32_e32 v12, 0x60, v0
	v_add_nc_u32_e32 v13, 0x68, v0
	scratch_store_b32 off, v1, off offset:128 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s21, v3
	v_add_nc_u32_e32 v15, 0x78, v0
	v_add_nc_u32_e32 v16, 0x80, v0
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v17, 0x88, v0
	v_add_nc_u32_e32 v18, 0x90, v0
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v20, 0xa0, v0
	scratch_store_b32 off, v1, off offset:132 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s21, v6
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v21, 0xa8, v0
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v22, 0xb0, v0
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v23, 0xb8, v0
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v25, 0xc8, v0
	scratch_store_b32 off, v1, off offset:136 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 32, v0
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v26, 0xd0, v0
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v27, 0xd8, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v9, s21, v1
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v28, 0xe0, v0
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v30, 0xf0, v0
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v31, 0xf8, v0
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v2, s20, v2
	scratch_store_b32 off, v9, off offset:140 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s21, v4
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v1, s20, v1
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v83, 0
	scratch_store_b32 off, v9, off offset:144 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s21, v5
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v91, 0
	scratch_store_b32 off, v9, off offset:148 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s21, v7
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v99, 0
	scratch_store_b32 off, v9, off offset:152 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s21, v8
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v107, 0
	scratch_store_b32 off, v9, off offset:156 ; 4-byte Folded Spill
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v9, 0x48, v0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v100, 0
	v_mov_b32_e32 v111, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v14, s21, v9
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v119, 0
	scratch_store_b32 off, v14, off offset:160 ; 4-byte Folded Spill
	v_mul_lo_u32 v14, s21, v10
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v127, 0
	scratch_store_b32 off, v14, off offset:164 ; 4-byte Folded Spill
	v_mul_lo_u32 v14, s21, v11
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v124, 0
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v128, 0
	v_add_nc_u32_e32 v210, 0, v166
	scratch_store_b32 off, v14, off offset:168 ; 4-byte Folded Spill
	v_mul_lo_u32 v14, s21, v12
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_mov_b32 s15, 0
	s_mov_b32 s0, s4
	s_mov_b32 s1, s5
	scratch_store_b32 off, v14, off offset:172 ; 4-byte Folded Spill
	v_mul_lo_u32 v14, s21, v13
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s2
	s_mov_b32 s7, s3
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v45, 0
	scratch_store_b32 off, v14, off offset:176 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v14, 0x70, v0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v19, s21, v14
	v_mov_b32_e32 v53, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	scratch_store_b32 off, v19, off offset:180 ; 4-byte Folded Spill
	v_mul_lo_u32 v19, s21, v15
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_mov_b32_e32 v179, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v64, 0
	scratch_store_b32 off, v19, off offset:184 ; 4-byte Folded Spill
	v_mul_lo_u32 v19, s21, v16
	v_mov_b32_e32 v185, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v182, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v65, 0
	scratch_store_b32 off, v19, off offset:188 ; 4-byte Folded Spill
	v_mul_lo_u32 v19, s21, v17
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v71, 0
	scratch_store_b32 off, v19, off offset:192 ; 4-byte Folded Spill
	v_mul_lo_u32 v19, s21, v18
	scratch_store_b32 off, v19, off offset:196 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v19, 0x98, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v24, s21, v19
	scratch_store_b32 off, v24, off offset:200 ; 4-byte Folded Spill
	v_mul_lo_u32 v24, s21, v20
	scratch_store_b32 off, v24, off offset:204 ; 4-byte Folded Spill
	v_mul_lo_u32 v24, s21, v21
	scratch_store_b32 off, v24, off offset:208 ; 4-byte Folded Spill
	v_mul_lo_u32 v24, s21, v22
	scratch_store_b32 off, v24, off offset:212 ; 4-byte Folded Spill
	v_mul_lo_u32 v24, s21, v23
	scratch_store_b32 off, v24, off offset:216 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v24, 0xc0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v29, s21, v24
	scratch_store_b32 off, v29, off offset:220 ; 4-byte Folded Spill
	v_mul_lo_u32 v29, s21, v25
	scratch_store_b32 off, v29, off offset:224 ; 4-byte Folded Spill
	v_mul_lo_u32 v29, s21, v26
	scratch_store_b32 off, v29, off offset:228 ; 4-byte Folded Spill
	v_mul_lo_u32 v29, s21, v27
	scratch_store_b32 off, v29, off offset:232 ; 4-byte Folded Spill
	v_mul_lo_u32 v29, s21, v28
	scratch_store_b32 off, v29, off offset:236 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v29, 0xe8, v0
	v_add_nc_u32_e32 v0, s20, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v32, s21, v29
	v_mul_lo_u32 v0, v0, s21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v32, off offset:240
	scratch_store_b32 off, v0, off offset:252
	v_mul_lo_u32 v32, s21, v30
	v_mul_lo_u32 v0, v2, s21
	v_add_nc_u32_e32 v2, s20, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v32, off offset:244
	scratch_store_b32 off, v0, off offset:256
	v_add_nc_u32_e32 v0, s20, v3
	v_mul_lo_u32 v32, s21, v31
	v_add_nc_u32_e32 v3, s20, v4
	v_add_nc_u32_e32 v4, s20, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v0, v0, s21
	scratch_store_b32 off, v32, off offset:248 ; 4-byte Folded Spill
	v_mov_b32_e32 v32, 0
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s21
	v_add_nc_u32_e32 v2, s20, v9
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s21
	v_add_nc_u32_e32 v1, s20, v8
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s21
	v_add_nc_u32_e32 v3, s20, v10
	v_mov_b32_e32 v10, 0
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s21
	v_add_nc_u32_e32 v4, s20, v11
	v_mov_b32_e32 v11, 0
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s20, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v0, v0, s21
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s21
	v_add_nc_u32_e32 v1, s20, v13
	v_mov_b32_e32 v13, 0
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s21
	v_add_nc_u32_e32 v2, s20, v14
	v_mov_b32_e32 v14, 0
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s21
	v_add_nc_u32_e32 v3, s20, v15
	v_mov_b32_e32 v15, 0
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s21
	v_add_nc_u32_e32 v4, s20, v16
	v_mov_b32_e32 v16, 0
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s20, v12
	v_mov_b32_e32 v12, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v0, v0, s21
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s21
	v_add_nc_u32_e32 v1, s20, v18
	v_mov_b32_e32 v18, 0
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s21
	v_add_nc_u32_e32 v2, s20, v19
	v_mov_b32_e32 v19, 0
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s21
	v_add_nc_u32_e32 v3, s20, v20
	v_mov_b32_e32 v20, 0
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s21
	v_add_nc_u32_e32 v4, s20, v21
	v_mov_b32_e32 v21, 0
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s20, v17
	v_mov_b32_e32 v17, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v0, v0, s21
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s21
	v_add_nc_u32_e32 v1, s20, v23
	v_mov_b32_e32 v23, 0
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s21
	v_add_nc_u32_e32 v2, s20, v24
	v_mov_b32_e32 v24, 0
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s21
	v_add_nc_u32_e32 v3, s20, v25
	v_mov_b32_e32 v25, 0
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s21
	v_add_nc_u32_e32 v4, s20, v26
	v_mov_b32_e32 v26, 0
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s20, v22
	v_mov_b32_e32 v22, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v0, v0, s21
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s21
	v_add_nc_u32_e32 v1, s20, v28
	v_mov_b32_e32 v28, 0
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s21
	v_add_nc_u32_e32 v2, s20, v29
	v_mov_b32_e32 v29, 0
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s21
	v_add_nc_u32_e32 v3, s20, v30
	v_mov_b32_e32 v30, 0
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s21
	v_add_nc_u32_e32 v4, s20, v31
	v_mov_b32_e32 v31, 0
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s20, v27
	v_mov_b32_e32 v27, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v0, v0, s21
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s21
	v_or_b32_e32 v1, 0x700, v165
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s21
	v_or_b32_e32 v2, 0x3f0, v165
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s21
	v_xor_b32_e32 v3, 16, v130
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s21
	v_xor_b32_e32 v4, 24, v130
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v165
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	v_xor_b32_e32 v1, 0x110, v129
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_xor_b32_e32 v2, 8, v130
	v_add_nc_u32_e32 v206, 0, v1
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x7f0, v165
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v3
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:404
	scratch_store_b32 off, v166, off offset:408
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_lshrrev_b32_e32 v0, 6, v165
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v136, off, off offset:156
	scratch_load_b32 v137, off, off offset:160
	scratch_load_b32 v138, off, off offset:164
	scratch_load_b32 v139, off, off offset:168
	scratch_load_b32 v140, off, off offset:172
	scratch_load_b32 v141, off, off offset:176
	scratch_load_b32 v142, off, off offset:180
	scratch_load_b32 v143, off, off offset:184
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v0, s15, v0
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v152, off, off offset:220
	scratch_load_b32 v153, off, off offset:224
	scratch_load_b32 v154, off, off offset:228
	scratch_load_b32 v155, off, off offset:232
	scratch_load_b32 v156, off, off offset:236
	scratch_load_b32 v157, off, off offset:240
	scratch_load_b32 v158, off, off offset:244
	scratch_load_b32 v159, off, off offset:248
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[129:130], null, v0, s14, v[178:179]
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s21, v0
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v2, 4, v0
	v_or_b32_e32 v3, 8, v0
	v_or_b32_e32 v4, 12, v0
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v144, off, off offset:188
	scratch_load_b32 v145, off, off offset:192
	scratch_load_b32 v146, off, off offset:196
	scratch_load_b32 v147, off, off offset:200
	scratch_load_b32 v148, off, off offset:204
	scratch_load_b32 v149, off, off offset:208
	scratch_load_b32 v150, off, off offset:212
	scratch_load_b32 v151, off, off offset:216
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s29, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v5, off, off offset:128
	scratch_load_b32 v6, off, off offset:132
	scratch_load_b32 v7, off, off offset:136
	scratch_load_b32 v8, off, off offset:140
	scratch_load_b32 v135, off, off offset:152
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v1, 0x80000000, v129, vcc_lo
	.loc	1 1069 38 is_stmt 0             ; ragged.py:1069:38
	v_mad_u64_u32 v[129:130], null, v2, s14, v[178:179]
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s21, v2
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s29, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e32 v2, 0x80000000, v129, vcc_lo
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[129:130], null, v3, s14, v[178:179]
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s21, v3
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s29, vcc_lo
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e32 v3, 0x80000000, v129, vcc_lo
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[129:130], null, v4, s14, v[178:179]
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s21, v4
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v4, 16, v0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s29, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e32 v131, 0x80000000, v129, vcc_lo
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[129:130], null, v4, s14, v[178:179]
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s21, v4
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v4, 20, v0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s29, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e32 v132, 0x80000000, v129, vcc_lo
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[129:130], null, v4, s14, v[178:179]
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s21, v4
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v4, 24, v0
	v_or_b32_e32 v0, 28, v0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s29, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e32 v133, 0x80000000, v129, vcc_lo
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[129:130], null, v4, s14, v[178:179]
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s21, v4
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_and_b32_e32 v4, 31, v165
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s29, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v211, s15, v4
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v134, 0x80000000, v129, vcc_lo
	.loc	1 1069 38 is_stmt 0             ; ragged.py:1069:38
	v_mad_u64_u32 v[129:130], null, v0, s14, v[178:179]
	.loc	1 1060 27 is_stmt 1             ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s21, v0
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:124
	scratch_load_b32 v130, off, off offset:148
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s15, s15, 32
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 vcc_lo, s29, vcc_lo
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s15, s21
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v0, 0x80000000, v129, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v129, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s21, v211
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(30)
	v_add_nc_u32_e32 v137, v137, v211
	s_waitcnt vmcnt(28)
	v_add_nc_u32_e32 v139, v139, v211
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	s_waitcnt vmcnt(23)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v137, 0x80000000, v137 :: v_dual_add_nc_u32 v152, v152, v211
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(22)
	v_add_nc_u32_e32 v153, v153, v211
	v_add_nc_u32_e32 v142, v142, v211
	s_waitcnt vmcnt(21)
	v_add_nc_u32_e32 v154, v154, v211
	s_waitcnt vmcnt(20)
	v_add_nc_u32_e32 v155, v155, v211
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v157, v157, v211
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v153, 0x80000000, v153, vcc_lo
	v_dual_cndmask_b32 v142, 0x80000000, v142 :: v_dual_add_nc_u32 v141, v141, v211
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v136, v136, v211
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v154, 0x80000000, v154, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v141, 0x80000000, v141 :: v_dual_add_nc_u32 v156, v156, v211
	s_waitcnt vmcnt(15)
	v_dual_cndmask_b32 v157, 0x80000000, v157 :: v_dual_add_nc_u32 v144, v144, v211
	v_dual_cndmask_b32 v136, 0x80000000, v136 :: v_dual_add_nc_u32 v143, v143, v211
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v146, v146, v211
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v148, v148, v211
	v_add_nc_u32_e32 v145, v145, v211
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v149, v149, v211
	v_add_nc_u32_e32 v140, v140, v211
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v150, v150, v211
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(7)
	v_dual_cndmask_b32 v148, 0x80000000, v148 :: v_dual_add_nc_u32 v5, v5, v211
	v_dual_cndmask_b32 v145, 0x80000000, v145 :: v_dual_add_nc_u32 v138, v138, v211
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v6, v6, v211
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v7, v7, v211
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(4)
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_add_nc_u32 v8, v8, v211
	v_dual_cndmask_b32 v138, 0x80000000, v138 :: v_dual_add_nc_u32 v147, v147, v211
	v_dual_cndmask_b32 v150, 0x80000000, v150 :: v_dual_add_nc_u32 v151, v151, v211
	v_cndmask_b32_e32 v156, 0x80000000, v156, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v158, v158, v211
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_add_nc_u32 v159, v159, v211
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v144, 0x80000000, v144
	v_dual_cndmask_b32 v143, 0x80000000, v143 :: v_dual_cndmask_b32 v146, 0x80000000, v146
	v_dual_cndmask_b32 v147, 0x80000000, v147 :: v_dual_cndmask_b32 v152, 0x80000000, v152
	v_cndmask_b32_e32 v149, 0x80000000, v149, vcc_lo
	v_dual_cndmask_b32 v139, 0x80000000, v139 :: v_dual_cndmask_b32 v140, 0x80000000, v140
	v_dual_cndmask_b32 v151, 0x80000000, v151 :: v_dual_cndmask_b32 v158, 0x80000000, v158
	v_cndmask_b32_e32 v155, 0x80000000, v155, vcc_lo
	v_cndmask_b32_e32 v159, 0x80000000, v159, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v135, v135, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v135, 0x80000000, v135, vcc_lo
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v4, v4, v211
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v130, v130, v211
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v130, 0x80000000, v130 :: v_dual_add_nc_u32 v129, v129, v211
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v129, 0x80000000, v129
	s_clause 0x1f
	buffer_load_u8 v227, v4, s[4:7], 0 offen
	buffer_load_u8 v160, v5, s[4:7], 0 offen
	buffer_load_u8 v229, v6, s[4:7], 0 offen
	buffer_load_u8 v161, v7, s[4:7], 0 offen
	buffer_load_u8 v230, v8, s[4:7], 0 offen
	buffer_load_u8 v162, v129, s[4:7], 0 offen
	buffer_load_u8 v231, v130, s[4:7], 0 offen
	buffer_load_u8 v163, v135, s[4:7], 0 offen
	buffer_load_u8 v232, v136, s[4:7], 0 offen
	buffer_load_u8 v164, v137, s[4:7], 0 offen
	buffer_load_u8 v233, v138, s[4:7], 0 offen
	buffer_load_u8 v166, v139, s[4:7], 0 offen
	buffer_load_u8 v234, v140, s[4:7], 0 offen
	buffer_load_u8 v168, v141, s[4:7], 0 offen
	buffer_load_u8 v235, v142, s[4:7], 0 offen
	buffer_load_u8 v169, v143, s[4:7], 0 offen
	buffer_load_u8 v222, v144, s[4:7], 0 offen
	buffer_load_u8 v170, v145, s[4:7], 0 offen
	buffer_load_u8 v221, v146, s[4:7], 0 offen
	buffer_load_u8 v171, v147, s[4:7], 0 offen
	buffer_load_u8 v220, v148, s[4:7], 0 offen
	buffer_load_u8 v172, v149, s[4:7], 0 offen
	buffer_load_u8 v5, v150, s[4:7], 0 offen
	buffer_load_u8 v223, v151, s[4:7], 0 offen
	buffer_load_u8 v6, v152, s[4:7], 0 offen
	buffer_load_u8 v224, v153, s[4:7], 0 offen
	buffer_load_u8 v7, v154, s[4:7], 0 offen
	buffer_load_u8 v225, v155, s[4:7], 0 offen
	buffer_load_u8 v4, v156, s[4:7], 0 offen
	buffer_load_u8 v226, v157, s[4:7], 0 offen
	buffer_load_u8 v219, v158, s[4:7], 0 offen
	buffer_load_u8 v228, v159, s[4:7], 0 offen
	.loc	1 1069 30 is_stmt 1             ; ragged.py:1069:30
	s_clause 0x7
	buffer_load_u8 v1, v1, s[0:3], 0 offen
	buffer_load_u8 v2, v2, s[0:3], 0 offen
	buffer_load_u8 v3, v3, s[0:3], 0 offen
	buffer_load_u8 v129, v132, s[0:3], 0 offen
	buffer_load_u8 v130, v133, s[0:3], 0 offen
	buffer_load_u8 v132, v134, s[0:3], 0 offen
	buffer_load_u8 v0, v0, s[0:3], 0 offen
	buffer_load_u8 v131, v131, s[0:3], 0 offen
	v_add_nc_u32_e32 v133, 0, v165
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v133, v1
	s_waitcnt vmcnt(6)
	ds_store_b8 v133, v2 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v133, v3 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v133, v129 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v133, v130 offset:1280
	s_waitcnt vmcnt(2)
	ds_store_b8 v133, v132 offset:1536
	scratch_load_b32 v1, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v131
	scratch_load_b32 v1, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v0, v210 offset:320
	ds_load_u8 v1, v210 offset:256
	ds_load_u8 v2, v210 offset:336
	ds_load_u8 v3, v210 offset:272
	ds_load_u8 v129, v210 offset:352
	ds_load_u8 v130, v210 offset:288
	ds_load_u8 v131, v210 offset:368
	ds_load_u8 v134, v210 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v210 offset:448
	ds_load_u8 v132, v210 offset:384
	ds_load_u8 v133, v210 offset:464
	ds_load_u8 v135, v210 offset:400
	ds_load_u8 v136, v210 offset:480
	ds_load_u8 v137, v210 offset:416
	ds_load_u8 v138, v210 offset:496
	ds_load_u8 v139, v210 offset:432
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v132, v1, 0xc0c0004
	ds_load_u8 v132, v210 offset:64
	ds_load_u8 v140, v210
	ds_load_u8 v141, v210 offset:80
	ds_load_u8 v142, v210 offset:16
	ds_load_u8 v143, v210 offset:96
	ds_load_u8 v144, v210 offset:32
	ds_load_u8 v145, v210 offset:112
	ds_load_u8 v146, v210 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v135, v133, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v130, v137, v136, 0xc0c0004
	v_lshl_or_b32 v1, v1, 16, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v3, v3, 16, v2
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v132, v140, v132, 0xc0c0004
	ds_load_u8 v140, v210 offset:192
	ds_load_u8 v147, v210 offset:128
	ds_load_u8 v148, v210 offset:208
	ds_load_u8 v149, v210 offset:144
	ds_load_u8 v150, v210 offset:224
	ds_load_u8 v151, v210 offset:160
	ds_load_u8 v152, v210 offset:240
	ds_load_u8 v153, v210 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v140, v147, v140, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v133, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v135, v151, v150, 0xc0c0004
	v_lshl_or_b32 v0, v140, 16, v132
	v_perm_b32 v132, v142, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v133, 16, v132
	v_perm_b32 v132, v144, v143, 0xc0c0004
	ds_load_u8 v144, v210 offset:960
	ds_load_u8 v142, v210 offset:896
	ds_load_u8 v8, v210 offset:1024
	v_lshl_or_b32 v133, v130, 16, v129
	v_perm_b32 v130, v139, v138, 0xc0c0004
	v_perm_b32 v129, v134, v131, 0xc0c0004
	v_lshl_or_b32 v132, v135, 16, v132
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v135, v153, v152, 0xc0c0004
	v_perm_b32 v134, v146, v145, 0xc0c0004
	ds_load_u8 v140, v210 offset:1664
	ds_load_u8 v188, v210 offset:1600
	ds_load_u8 v146, v210 offset:1616
	ds_load_u8 v145, v210 offset:1552
	ds_load_u8 v244, v210 offset:1632
	ds_load_u8 v153, v210 offset:1568
	ds_load_u8 v238, v210 offset:1648
	ds_load_u8 v243, v210 offset:1584
	v_lshl_or_b32 v131, v130, 16, v129
	v_lshl_or_b32 v130, v135, 16, v134
	s_waitcnt lgkmcnt(8)
	scratch_store_b32 off, v8, off          ; 4-byte Folded Spill
	ds_load_u8 v152, v210 offset:976
	ds_load_u8 v148, v210 offset:912
	ds_load_u8 v158, v210 offset:992
	ds_load_u8 v241, v210 offset:928
	ds_load_u8 v8, v210 offset:944
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:108 ; 4-byte Folded Spill
	ds_load_u8 v199, v210 offset:832
	ds_load_u8 v200, v210 offset:768
	ds_load_u8 v191, v210 offset:848
	ds_load_u8 v194, v210 offset:784
	ds_load_u8 v143, v210 offset:864
	ds_load_u8 v139, v210 offset:800
	ds_load_u8 v156, v210 offset:880
	ds_load_u8 v154, v210 offset:816
	ds_load_u8 v205, v210 offset:704
	ds_load_u8 v209, v210 offset:640
	ds_load_u8 v201, v210 offset:720
	ds_load_u8 v137, v210 offset:656
	ds_load_u8 v195, v210 offset:736
	ds_load_u8 v196, v210 offset:672
	ds_load_u8 v189, v210 offset:752
	ds_load_u8 v192, v210 offset:688
	ds_load_u8 v216, v210 offset:576
	ds_load_u8 v217, v210 offset:512
	ds_load_u8 v214, v210 offset:592
	ds_load_u8 v215, v210 offset:528
	ds_load_u8 v136, v210 offset:608
	ds_load_u8 v213, v210 offset:544
	ds_load_u8 v204, v210 offset:624
	ds_load_u8 v208, v210 offset:560
	ds_load_u8 v8, v210 offset:1216
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:112 ; 4-byte Folded Spill
	ds_load_u8 v249, v210 offset:1280
	ds_load_u8 v8, v210 offset:1232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:68 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1168
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:76 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:52 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:56 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:36 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:44 ; 4-byte Folded Spill
	ds_load_u8 v155, v210 offset:1152
	ds_load_u8 v150, v210 offset:1088
	ds_load_u8 v159, v210 offset:1104
	ds_load_u8 v240, v210 offset:1040
	ds_load_u8 v254, v210 offset:1120
	ds_load_u8 v253, v210 offset:1056
	ds_load_u8 v8, v210 offset:1136
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:84 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1072
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:100 ; 4-byte Folded Spill
	ds_load_u8 v193, v210 offset:1472
	ds_load_u8 v8, v210 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:4 ; 4-byte Folded Spill
	ds_load_u8 v141, v210 offset:1488
	ds_load_u8 v138, v210 offset:1424
	ds_load_u8 v149, v210 offset:1504
	ds_load_u8 v147, v210 offset:1440
	ds_load_u8 v242, v210 offset:1520
	ds_load_u8 v157, v210 offset:1456
	ds_load_u8 v207, v210 offset:1408
	ds_load_u8 v212, v210 offset:1344
	ds_load_u8 v202, v210 offset:1360
	ds_load_u8 v203, v210 offset:1296
	ds_load_u8 v197, v210 offset:1376
	ds_load_u8 v198, v210 offset:1312
	ds_load_u8 v187, v210 offset:1392
	ds_load_u8 v190, v210 offset:1328
	ds_load_u8 v8, v210 offset:1984
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:48 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:2000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:24 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1936
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:32 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:16 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:20 ; 4-byte Folded Spill
	scratch_load_b32 v8, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v218, v8
	scratch_load_b32 v8, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v8, v8
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:8 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1968
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:12 ; 4-byte Folded Spill
	ds_load_u8 v255, v210 offset:1920
	ds_load_u8 v251, v210 offset:1856
	ds_load_u8 v8, v210 offset:1872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:80 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:92 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:60 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:64 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:28 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:40 ; 4-byte Folded Spill
	ds_load_u8 v239, v210 offset:1728
	ds_load_u8 v151, v210 offset:1792
	ds_load_u8 v252, v210 offset:1744
	ds_load_u8 v250, v210 offset:1680
	ds_load_u8 v8, v210 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:96 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:104 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:72 ; 4-byte Folded Spill
	ds_load_u8 v8, v210 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v8, off offset:88 ; 4-byte Folded Spill
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v8, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v236, 0, v8
	ds_store_b8 v236, v227
	ds_store_b8 v236, v229 offset:512
	ds_store_b8 v236, v230 offset:1024
	ds_store_b8 v236, v231 offset:1536
	ds_store_b8 v236, v232 offset:2048
	ds_store_b8 v236, v233 offset:2560
	ds_store_b8 v236, v234 offset:3072
	ds_store_b8 v236, v235 offset:3584
	ds_store_b8 v236, v222 offset:4096
	ds_store_b8 v236, v221 offset:4608
	ds_store_b8 v236, v220 offset:5120
	ds_store_b8 v236, v5 offset:5632
	ds_store_b8 v236, v6 offset:6144
	ds_store_b8 v236, v7 offset:6656
	ds_store_b8 v236, v4 offset:7168
	ds_store_b8 v236, v219 offset:7680
	ds_store_b8 v206, v160
	ds_store_b8 v206, v161 offset:512
	ds_store_b8 v206, v162 offset:1024
	ds_store_b8 v206, v163 offset:1536
	ds_store_b8 v206, v164 offset:2048
	ds_store_b8 v206, v166 offset:2560
	ds_store_b8 v206, v168 offset:3072
	ds_store_b8 v206, v169 offset:3584
	ds_store_b8 v206, v170 offset:4096
	ds_store_b8 v206, v171 offset:4608
	ds_store_b8 v206, v172 offset:5120
	ds_store_b8 v206, v223 offset:5632
	ds_store_b8 v206, v224 offset:6144
	ds_store_b8 v206, v225 offset:6656
	ds_store_b8 v206, v226 offset:7168
	ds_store_b8 v206, v228 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v4, off, off offset:120
	scratch_load_b32 v166, off, off offset:376
	scratch_load_b32 v8, off, off offset:396
	scratch_load_b32 v134, off, off offset:400
	scratch_load_b32 v135, off, off offset:404
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v129, 0, v4
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v4, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[220:223], v129 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[220:221], v[0:1], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[220:221], v[2:3], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[220:221], v[132:133], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[220:221], v[130:131], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[222:223], v[0:1], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[222:223], v[2:3], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[222:223], v[132:133], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[222:223], v[130:131], v[121:128] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, v4, v211
	scratch_load_b32 v4, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v6, v4, v211
	scratch_load_b32 v4, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, v4, v211
	scratch_load_b32 v4, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v219, v4, v211
	scratch_load_b32 v4, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v220, v4, v211
	scratch_load_b32 v4, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v221, v4, v211
	scratch_load_b32 v4, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v222, v4, v211
	scratch_load_b32 v4, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v222, 0x80000000, v222 :: v_dual_add_nc_u32 v223, v4, v211
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v4, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v224, v4, v211
	scratch_load_b32 v4, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v224, 0x80000000, v224 :: v_dual_add_nc_u32 v225, v4, v211
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v4, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v226, v4, v211
	scratch_load_b32 v4, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v226, 0x80000000, v226 :: v_dual_add_nc_u32 v227, v4, v211
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v4, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v228, v4, v211
	scratch_load_b32 v4, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_dual_cndmask_b32 v228, 0x80000000, v228 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v229, v4, v211
	scratch_load_b32 v4, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v230, v4, v211
	scratch_load_b32 v4, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v230, 0x80000000, v230 :: v_dual_add_nc_u32 v231, v4, v211
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v4, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v231, 0x80000000, v231, vcc_lo
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v232, v4, v211
	scratch_load_b32 v4, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_dual_cndmask_b32 v232, 0x80000000, v232 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v233, v4, v211
	scratch_load_b32 v4, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v233, 0x80000000, v233 :: v_dual_add_nc_u32 v234, v4, v211
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v4, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_dual_cndmask_b32 v234, 0x80000000, v234 :: v_dual_cndmask_b32 v219, 0x80000000, v219
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v235, v4, v211
	scratch_load_b32 v4, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v235, 0x80000000, v235, vcc_lo
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v245, v4, v211
	scratch_load_b32 v4, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v245, 0x80000000, v245 :: v_dual_add_nc_u32 v246, v4, v211
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v4, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_dual_cndmask_b32 v246, 0x80000000, v246 :: v_dual_cndmask_b32 v221, 0x80000000, v221
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v247, v4, v211
	scratch_load_b32 v4, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v247, 0x80000000, v247, vcc_lo
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v248, v4, v211
	scratch_load_b32 v4, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_dual_cndmask_b32 v248, 0x80000000, v248 :: v_dual_cndmask_b32 v223, 0x80000000, v223
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v237, v4, v211
	scratch_load_b32 v4, off, off offset:352 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v237, 0x80000000, v237 :: v_dual_add_nc_u32 v160, v4, v211
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v4, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_dual_cndmask_b32 v160, 0x80000000, v160 :: v_dual_cndmask_b32 v225, 0x80000000, v225
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v161, v4, v211
	scratch_load_b32 v4, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_dual_cndmask_b32 v161, 0x80000000, v161 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v162, v4, v211
	scratch_load_b32 v4, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_dual_cndmask_b32 v162, 0x80000000, v162 :: v_dual_cndmask_b32 v227, 0x80000000, v227
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v163, v4, v211
	scratch_load_b32 v4, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_cndmask_b32_e32 v163, 0x80000000, v163, vcc_lo
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v164, v4, v211
	v_mov_b32_e32 v4, v165
	scratch_load_b32 v165, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_dual_cndmask_b32 v164, 0x80000000, v164 :: v_dual_cndmask_b32 v229, 0x80000000, v229
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v165, v165, v211
	v_add_nc_u32_e32 v211, v166, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1095 35                       ; ragged.py:1095:35
	v_dual_cndmask_b32 v165, 0x80000000, v165 :: v_dual_cndmask_b32 v220, 0x80000000, v220
	v_cndmask_b32_e32 v211, 0x80000000, v211, vcc_lo
	s_clause 0x1f
	buffer_load_u8 v5, v5, s[4:7], 0 offen
	buffer_load_u8 v7, v7, s[4:7], 0 offen
	buffer_load_u8 v166, v220, s[4:7], 0 offen
	buffer_load_u8 v167, v222, s[4:7], 0 offen
	buffer_load_u8 v168, v224, s[4:7], 0 offen
	buffer_load_u8 v169, v226, s[4:7], 0 offen
	buffer_load_u8 v170, v228, s[4:7], 0 offen
	buffer_load_u8 v171, v230, s[4:7], 0 offen
	buffer_load_u8 v232, v232, s[4:7], 0 offen
	buffer_load_u8 v234, v234, s[4:7], 0 offen
	buffer_load_u8 v245, v245, s[4:7], 0 offen
	buffer_load_u8 v247, v247, s[4:7], 0 offen
	buffer_load_u8 v237, v237, s[4:7], 0 offen
	buffer_load_u8 v161, v161, s[4:7], 0 offen
	buffer_load_u8 v163, v163, s[4:7], 0 offen
	buffer_load_u8 v165, v165, s[4:7], 0 offen
	buffer_load_u8 v172, v223, s[4:7], 0 offen
	buffer_load_u8 v173, v221, s[4:7], 0 offen
	buffer_load_u8 v219, v219, s[4:7], 0 offen
	buffer_load_u8 v6, v6, s[4:7], 0 offen
	buffer_load_u8 v174, v231, s[4:7], 0 offen
	buffer_load_u8 v175, v229, s[4:7], 0 offen
	buffer_load_u8 v176, v227, s[4:7], 0 offen
	buffer_load_u8 v177, v225, s[4:7], 0 offen
	buffer_load_u8 v248, v248, s[4:7], 0 offen
	buffer_load_u8 v246, v246, s[4:7], 0 offen
	buffer_load_u8 v235, v235, s[4:7], 0 offen
	buffer_load_u8 v233, v233, s[4:7], 0 offen
	buffer_load_u8 v211, v211, s[4:7], 0 offen
	buffer_load_u8 v164, v164, s[4:7], 0 offen
	buffer_load_u8 v162, v162, s[4:7], 0 offen
	buffer_load_u8 v160, v160, s[4:7], 0 offen
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[220:223], v8 offset1:8
	ds_load_2addr_stride64_b64 v[224:227], v134 offset1:8
	ds_load_2addr_stride64_b64 v[228:231], v135 offset1:8
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v236, v5
	s_waitcnt vmcnt(30)
	ds_store_b8 v236, v7 offset:512
	s_waitcnt vmcnt(29)
	ds_store_b8 v236, v166 offset:1024
	s_waitcnt vmcnt(28)
	ds_store_b8 v236, v167 offset:1536
	s_waitcnt vmcnt(27)
	ds_store_b8 v236, v168 offset:2048
	s_waitcnt vmcnt(26)
	ds_store_b8 v236, v169 offset:2560
	s_waitcnt vmcnt(25)
	ds_store_b8 v236, v170 offset:3072
	s_waitcnt vmcnt(24)
	ds_store_b8 v236, v171 offset:3584
	s_waitcnt vmcnt(23)
	ds_store_b8 v236, v232 offset:4096
	s_waitcnt vmcnt(22)
	ds_store_b8 v236, v234 offset:4608
	s_waitcnt vmcnt(21)
	ds_store_b8 v236, v245 offset:5120
	s_waitcnt vmcnt(20)
	ds_store_b8 v236, v247 offset:5632
	s_waitcnt vmcnt(19)
	ds_store_b8 v236, v237 offset:6144
	s_waitcnt vmcnt(18)
	ds_store_b8 v236, v161 offset:6656
	s_waitcnt vmcnt(17)
	ds_store_b8 v236, v163 offset:7168
	s_waitcnt vmcnt(16)
	ds_store_b8 v236, v165 offset:7680
	s_waitcnt vmcnt(12)
	ds_store_b8 v206, v6
	ds_store_b8 v206, v219 offset:512
	ds_store_b8 v206, v173 offset:1024
	ds_store_b8 v206, v172 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v206, v177 offset:2048
	ds_store_b8 v206, v176 offset:2560
	ds_store_b8 v206, v175 offset:3072
	ds_store_b8 v206, v174 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b8 v206, v233 offset:4096
	ds_store_b8 v206, v235 offset:4608
	ds_store_b8 v206, v246 offset:5120
	ds_store_b8 v206, v248 offset:5632
	s_waitcnt vmcnt(0)
	ds_store_b8 v206, v160 offset:6144
	ds_store_b8 v206, v162 offset:6656
	ds_store_b8 v206, v164 offset:7168
	ds_store_b8 v206, v211 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[232:235], v129 offset1:8
	v_mov_b32_e32 v165, v4
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v4, v215, v214, 0xc0c0004
	v_perm_b32 v5, v137, v201, 0xc0c0004
	v_perm_b32 v6, v213, v136, 0xc0c0004
	v_perm_b32 v7, v196, v195, 0xc0c0004
	v_perm_b32 v129, v154, v156, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[232:233], v[130:131], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[179:186], v[234:235], v[130:131], v[179:186] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	scratch_load_b32 v130, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[232:233], v[0:1], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[234:235], v[0:1], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[232:233], v[2:3], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[234:235], v[2:3], v[33:40] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v0, v200, v199, 0xc0c0004
	v_perm_b32 v1, v142, v144, 0xc0c0004
	v_perm_b32 v2, v217, v216, 0xc0c0004
	v_perm_b32 v3, v209, v205, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[41:48], v[232:233], v[132:133], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[234:235], v[132:133], v[49:56] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v1, v1, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v0, v3, 16, v2
	v_perm_b32 v2, v194, v191, 0xc0c0004
	v_perm_b32 v3, v148, v152, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[65:72], v[220:221], v[0:1], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[222:223], v[0:1], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v3, v3, 16, v2
	v_lshl_or_b32 v2, v5, 16, v4
	v_perm_b32 v4, v139, v143, 0xc0c0004
	v_perm_b32 v5, v241, v158, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[81:88], v[220:221], v[2:3], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[222:223], v[2:3], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v7, 16, v6
	v_perm_b32 v6, v208, v204, 0xc0c0004
	v_perm_b32 v7, v192, v189, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[97:104], v[220:221], v[4:5], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[222:223], v[4:5], v[105:112] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v6, v7, 16, v6
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v130, v218, 0xc0c0004
	v_lshl_or_b32 v7, v130, 16, v129
	.loc	1 1095 35                       ; ragged.py:1095:35
	ds_load_2addr_stride64_b64 v[129:132], v8 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[113:120], v[220:221], v[6:7], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[222:223], v[6:7], v[121:128] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[129:130], v[6:7], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[179:186], v[131:132], v[6:7], v[179:186] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:52
	scratch_load_b32 v8, off, off offset:56
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[129:130], v[0:1], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[129:130], v[2:3], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[129:130], v[4:5], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[131:132], v[2:3], v[33:40] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off
	scratch_load_b32 v3, off, off offset:112
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[49:56], v[131:132], v[4:5], v[49:56] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:68
	scratch_load_b32 v6, off, off offset:76
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[17:24], v[131:132], v[0:1], v[17:24] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v0, v249, v212, 0xc0c0004
	v_perm_b32 v1, v207, v193, 0xc0c0004
	v_perm_b32 v4, v240, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v1, v1, 16, v0
	s_waitcnt vmcnt(4)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:84
	scratch_load_b32 v129, off, off offset:100
	s_waitcnt vmcnt(5)
	v_perm_b32 v2, v2, v150, 0xc0c0004
	s_waitcnt vmcnt(4)
	v_perm_b32 v3, v155, v3, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_perm_b32 v6, v253, v254, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v0, v3, 16, v2
	v_perm_b32 v2, v203, v202, 0xc0c0004
	v_perm_b32 v3, v138, v141, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[65:72], v[224:225], v[0:1], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[226:227], v[0:1], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v3, v3, 16, v2
	v_lshl_or_b32 v2, v5, 16, v4
	v_perm_b32 v4, v198, v197, 0xc0c0004
	v_perm_b32 v5, v147, v149, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[81:88], v[224:225], v[2:3], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[226:227], v[2:3], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v7, 16, v6
	v_perm_b32 v6, v190, v187, 0xc0c0004
	v_perm_b32 v7, v157, v242, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[97:104], v[224:225], v[4:5], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[226:227], v[4:5], v[105:112] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v7, v7, 16, v6
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v129, v8, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:36
	scratch_load_b32 v130, off, off offset:44
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v130, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v130, 16, v129
	.loc	1 1095 35                       ; ragged.py:1095:35
	ds_load_2addr_stride64_b64 v[129:132], v134 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[113:120], v[224:225], v[6:7], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[226:227], v[6:7], v[121:128] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[129:130], v[0:1], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[131:132], v[0:1], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[129:130], v[2:3], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[131:132], v[2:3], v[33:40] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:48
	scratch_load_b32 v2, off, off offset:4
	v_perm_b32 v0, v151, v251, 0xc0c0004
	v_perm_b32 v3, v140, v239, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[41:48], v[129:130], v[4:5], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[131:132], v[4:5], v[49:56] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v5, v250, v252, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[57:64], v[129:130], v[6:7], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[179:186], v[131:132], v[6:7], v[179:186] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:96
	scratch_load_b32 v8, off, off offset:104
	s_waitcnt vmcnt(3)
	v_perm_b32 v1, v255, v1, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v2, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v1, v1, 16, v0
	v_lshl_or_b32 v0, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:80
	scratch_load_b32 v3, off, off offset:92
	s_waitcnt vmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[65:72], v[228:229], v[0:1], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[230:231], v[0:1], v[73:80] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:24
	scratch_load_b32 v4, off, off offset:32
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_perm_b32 v4, v145, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v3, v3, 16, v2
	v_lshl_or_b32 v2, v5, 16, v4
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:60
	scratch_load_b32 v5, off, off offset:64
	v_wmma_i32_16x16x16_iu4 v[81:88], v[228:229], v[2:3], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[230:231], v[2:3], v[89:96] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:16
	scratch_load_b32 v6, off, off offset:20
	s_waitcnt vmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_perm_b32 v6, v153, v244, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v7, 16, v6
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:72
	scratch_load_b32 v8, off, off offset:88
	v_perm_b32 v6, v243, v238, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[97:104], v[228:229], v[4:5], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[230:231], v[4:5], v[105:112] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:28
	scratch_load_b32 v129, off, off offset:40
	v_lshl_or_b32 v6, v7, 16, v6
	s_waitcnt vmcnt(0)
	v_perm_b32 v8, v129, v8, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:8
	scratch_load_b32 v130, off, off offset:12
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v7, v129, 16, v8
	.loc	1 1095 35                       ; ragged.py:1095:35
	ds_load_2addr_stride64_b64 v[129:132], v135 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[113:120], v[228:229], v[6:7], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[230:231], v[6:7], v[121:128] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[129:130], v[0:1], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[131:132], v[0:1], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[129:130], v[2:3], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[131:132], v[2:3], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[129:130], v[4:5], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[131:132], v[4:5], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[129:130], v[6:7], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[179:186], v[131:132], v[6:7], v[179:186] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:412
	scratch_load_b32 v166, off, off offset:408
	.loc	1 1111 19 is_stmt 1             ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v161, v65
	v_cvt_f32_i32_e32 v162, v66
	v_cvt_f32_i32_e32 v164, v67
	v_cvt_f32_i32_e32 v163, v68
	v_cvt_f32_i32_e32 v141, v69
	v_cvt_f32_i32_e32 v142, v70
	v_cvt_f32_i32_e32 v143, v71
	v_cvt_f32_i32_e32 v145, v72
	v_cvt_f32_i32_e32 v144, v73
	v_cvt_f32_i32_e32 v138, v74
	v_cvt_f32_i32_e32 v139, v75
	v_cvt_f32_i32_e32 v140, v76
	v_cvt_f32_i32_e32 v130, v77
	v_cvt_f32_i32_e32 v133, v78
	v_cvt_f32_i32_e32 v132, v79
	v_cvt_f32_i32_e32 v131, v80
	v_cvt_f32_i32_e32 v134, v81
	v_cvt_f32_i32_e32 v129, v82
	v_cvt_f32_i32_e32 v160, v83
	v_cvt_f32_i32_e32 v159, v84
	v_cvt_f32_i32_e32 v148, v85
	v_cvt_f32_i32_e32 v147, v86
	v_cvt_f32_i32_e32 v149, v87
	v_cvt_f32_i32_e32 v150, v88
	v_cvt_f32_i32_e32 v146, v89
	v_cvt_f32_i32_e32 v136, v90
	v_cvt_f32_i32_e32 v135, v91
	v_cvt_f32_i32_e32 v137, v92
	v_cvt_f32_i32_e32 v78, v93
	v_cvt_f32_i32_e32 v93, v94
	v_cvt_f32_i32_e32 v92, v95
	v_cvt_f32_i32_e32 v91, v96
	v_cvt_f32_i32_e32 v156, v97
	v_cvt_f32_i32_e32 v155, v98
	v_cvt_f32_i32_e32 v158, v99
	v_cvt_f32_i32_e32 v157, v100
	v_cvt_f32_i32_e32 v152, v101
	v_cvt_f32_i32_e32 v151, v102
	v_cvt_f32_i32_e32 v153, v103
	v_cvt_f32_i32_e32 v154, v104
	v_cvt_f32_i32_e32 v104, v105
	v_cvt_f32_i32_e32 v102, v106
	v_cvt_f32_i32_e32 v101, v107
	v_cvt_f32_i32_e32 v103, v108
	v_cvt_f32_i32_e32 v77, v109
	v_cvt_f32_i32_e32 v97, v110
	v_cvt_f32_i32_e32 v96, v111
	v_cvt_f32_i32_e32 v95, v112
	v_cvt_f32_i32_e32 v110, v113
	v_cvt_f32_i32_e32 v111, v114
	v_cvt_f32_i32_e32 v113, v115
	v_cvt_f32_i32_e32 v112, v116
	v_cvt_f32_i32_e32 v106, v117
	v_cvt_f32_i32_e32 v107, v118
	v_cvt_f32_i32_e32 v108, v119
	v_cvt_f32_i32_e32 v109, v120
	v_cvt_f32_i32_e32 v105, v121
	v_cvt_f32_i32_e32 v89, v122
	v_cvt_f32_i32_e32 v90, v123
	v_cvt_f32_i32_e32 v94, v124
	v_cvt_f32_i32_e32 v69, v125
	v_cvt_f32_i32_e32 v100, v126
	v_cvt_f32_i32_e32 v99, v127
	v_cvt_f32_i32_e32 v98, v128
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v85, v9
	v_cvt_f32_i32_e32 v86, v10
	v_cvt_f32_i32_e32 v88, v11
	v_cvt_f32_i32_e32 v87, v12
	v_cvt_f32_i32_e32 v70, v13
	v_cvt_f32_i32_e32 v71, v14
	v_cvt_f32_i32_e32 v72, v15
	v_cvt_f32_i32_e32 v73, v16
	v_cvt_f32_i32_e32 v74, v17
	v_cvt_f32_i32_e32 v66, v18
	v_cvt_f32_i32_e32 v67, v19
	v_cvt_f32_i32_e32 v68, v20
	v_cvt_f32_i32_e32 v11, v21
	v_cvt_f32_i32_e32 v65, v22
	v_cvt_f32_i32_e32 v21, v23
	v_cvt_f32_i32_e32 v19, v24
	v_cvt_f32_i32_e32 v83, v25
	v_cvt_f32_i32_e32 v84, v26
	v_cvt_f32_i32_e32 v81, v27
	v_cvt_f32_i32_e32 v82, v28
	v_cvt_f32_i32_e32 v76, v29
	v_cvt_f32_i32_e32 v75, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v30, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v22, v34
	v_cvt_f32_i32_e32 v20, v35
	v_cvt_f32_i32_e32 v18, v36
	v_cvt_f32_i32_e32 v10, v37
	v_cvt_f32_i32_e32 v25, v38
	v_cvt_f32_i32_e32 v24, v39
	v_cvt_f32_i32_e32 v23, v40
	v_cvt_f32_i32_e32 v80, v41
	v_cvt_f32_i32_e32 v79, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v37, v45
	v_cvt_f32_i32_e32 v36, v46
	v_cvt_f32_i32_e32 v35, v47
	v_cvt_f32_i32_e32 v34, v48
	v_cvt_f32_i32_e32 v33, v49
	v_cvt_f32_i32_e32 v17, v50
	v_cvt_f32_i32_e32 v16, v51
	v_cvt_f32_i32_e32 v15, v52
	v_cvt_f32_i32_e32 v9, v53
	v_cvt_f32_i32_e32 v28, v54
	v_cvt_f32_i32_e32 v27, v55
	v_cvt_f32_i32_e32 v26, v56
	v_cvt_f32_i32_e32 v42, v57
	v_cvt_f32_i32_e32 v41, v58
	v_cvt_f32_i32_e32 v38, v59
	v_cvt_f32_i32_e32 v39, v60
	v_cvt_f32_i32_e32 v48, v61
	v_cvt_f32_i32_e32 v47, v62
	v_cvt_f32_i32_e32 v46, v63
	v_cvt_f32_i32_e32 v45, v64
	v_cvt_f32_i32_e32 v40, v179
	v_cvt_f32_i32_e32 v14, v180
	v_cvt_f32_i32_e32 v13, v181
	v_cvt_f32_i32_e32 v12, v182
	v_cvt_f32_i32_e32 v5, v183
	v_cvt_f32_i32_e32 v29, v184
	v_cvt_f32_i32_e32 v6, v185
	v_dual_mov_b32 v3, v178 :: v_dual_and_b32 v2, 0x80, v165
	v_cvt_f32_i32_e32 v7, v186
	v_mov_b32_e32 v0, s13
	v_mov_b32_e32 v4, s22
.LBB0_7:                                ; %._crit_edge
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v8, 28, v1
	v_lshlrev_b32_e32 v1, 5, v165
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s17, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v49, 32, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 0xf0, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v50, v1, 2, 0
	v_add3_u32 v52, v50, v49, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt vmcnt(0)
	v_add_co_u32 v49, s0, s22, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v50, null, s23, 0, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v8, 1, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[49:50]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[49:50]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v49, 16, v166
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v49, s1, s22, v49
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v50, null, s23, 0, s1
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v51, 1, v49
	s_mov_b32 s0, 0x76543210
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[24:25], v[49:50]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[26:27], v[49:50]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v49, 32, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v49, s3, s22, v49
	v_add_co_ci_u32_e64 v50, null, s23, 0, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v54, 1, v49
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[24:25], v[49:50]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[26:27], v[49:50]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v49, 48, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v49, s5, s22, v49
	v_add_co_ci_u32_e64 v50, null, s23, 0, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[24:25], v[49:50]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[26:27], v[49:50]
	.loc	1 1120 21 is_stmt 1             ; ragged.py:1120:21
	v_or_b32_e32 v50, s12, v165
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v49, 1, v49
	s_mov_b32 s12, s16
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_add_nc_u32_e32 v53, v50, v0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v0, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s1, s2
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s1, s20, 31
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v8, 0x80000000, v51, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s1, s20, s1
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v50, 0x80000000, v54, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s5, s1, 1
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	s_clause 0x3
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	buffer_load_u16 v8, v8, s[12:15], 0 offen
	buffer_load_u16 v54, v50, s[12:15], 0 offen
	buffer_load_u16 v55, v49, s[12:15], 0 offen
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v51, 16, v0
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v50, 16, v8
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v63, v134, v50 :: v_dual_lshlrev_b32 v8, 16, v55
	v_dual_mul_f32 v58, v159, v50 :: v_dual_lshlrev_b32 v49, 1, v53
	v_mul_f32_e32 v64, v129, v50
	v_mul_f32_e32 v59, v160, v50
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v84, v84, v50 :: v_dual_mul_f32 v39, v39, v8
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v49, v49, s[12:15], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v10, v10, v50
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v0, v113, v8
	v_mul_f32_e32 v122, v112, v8
	v_mul_f32_e32 v110, v110, v8
	v_mul_f32_e32 v123, v111, v8
	v_mul_f32_e32 v106, v106, v8
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v45, v45, v8
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v89, v89, v8
	v_mul_f32_e32 v93, v93, v50
	v_mul_f32_e32 v91, v91, v50
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v83, v83, v50
	v_mul_f32_e32 v31, v31, v50
	v_mul_f32_e32 v7, v7, v8
	v_mul_f32_e32 v5, v5, v8
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v52, v49
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v49, 16, v54
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v114, v158, v49
	v_mul_f32_e32 v54, v164, v51
	v_mul_f32_e32 v57, v161, v51
	v_mul_f32_e32 v117, v155, v49
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v155, v1, 1, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v115, v157, v49
	v_mul_f32_e32 v116, v156, v49
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[118:121], v155
	ds_load_b128 v[156:159], v155 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v55, v163, v51
	v_mul_f32_e32 v56, v162, v51
	v_mul_f32_e32 v127, v154, v49
	v_mul_f32_e32 v128, v153, v49
	v_mul_f32_e32 v129, v152, v49
	v_mul_f32_e32 v134, v151, v49
	v_mul_f32_e32 v104, v104, v49
	v_mul_f32_e32 v151, v103, v49
	v_dual_mul_f32 v103, v101, v49 :: v_dual_mul_f32 v132, v132, v51
	v_mul_f32_e32 v97, v97, v49
	v_dual_mul_f32 v96, v96, v49 :: v_dual_mul_f32 v85, v85, v51
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v80, v80, v49
	v_dual_mul_f32 v79, v79, v49 :: v_dual_mul_f32 v70, v70, v51
	v_mul_f32_e32 v37, v37, v49
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v71, v71, v51 :: v_dual_mul_f32 v60, v57, v118
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v61, v56, v119 :: v_dual_mul_f32 v62, v54, v120
	v_dual_mul_f32 v55, v55, v121 :: v_dual_mul_f32 v112, v117, v119
	v_dual_mul_f32 v56, v63, v118 :: v_dual_mul_f32 v57, v64, v119
	v_dual_mul_f32 v58, v58, v121 :: v_dual_mul_f32 v59, v59, v120
	v_dual_mul_f32 v111, v116, v118 :: v_dual_mul_f32 v114, v114, v120
	v_dual_mul_f32 v113, v115, v121 :: v_dual_mul_f32 v54, v110, v118
	v_dual_mul_f32 v110, v0, v120 :: v_dual_mul_f32 v115, v143, v51
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v0, v145, v51
	v_mul_f32_e32 v116, v142, v51
	v_dual_mul_f32 v117, v141, v51 :: v_dual_mul_f32 v118, v150, v50
	v_dual_mul_f32 v120, v147, v50 :: v_dual_mul_f32 v141, v109, v8
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v142, v108, v8 :: v_dual_mul_f32 v125, v115, v158
	v_mul_f32_e32 v143, v107, v8
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v63, v123, v119 :: v_dual_mul_f32 v64, v122, v121
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v121, v149, v50
	v_mul_f32_e32 v119, v148, v50
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v123, v117, v156 :: v_dual_mul_f32 v124, v116, v157
	v_mul_f32_e32 v126, v0, v159
	v_dual_mul_f32 v122, v118, v159 :: v_dual_mul_f32 v107, v129, v156
	v_dual_mul_f32 v108, v134, v157 :: v_dual_mul_f32 v109, v128, v158
	v_dual_mul_f32 v116, v127, v159 :: v_dual_mul_f32 v117, v142, v158
	v_dual_mul_f32 v106, v106, v156 :: v_dual_mul_f32 v115, v143, v157
	v_dual_mul_f32 v118, v141, v159 :: v_dual_mul_f32 v149, v136, v50
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v0, v144, v51
	v_dual_mul_f32 v127, v140, v51 :: v_dual_mul_f32 v134, v146, v50
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[140:143], v155 offset:512
	ds_load_b128 v[144:147], v155 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v128, v139, v51
	v_dual_mul_f32 v129, v138, v51 :: v_dual_mul_f32 v138, v105, v8
	v_mul_f32_e32 v148, v137, v50
	v_mul_f32_e32 v150, v135, v50
	v_mul_f32_e32 v102, v102, v49
	v_mul_f32_e32 v94, v94, v8
	v_mul_f32_e32 v92, v92, v50
	v_dual_mul_f32 v98, v98, v8 :: v_dual_mul_f32 v35, v35, v49
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v18, v18, v50
	v_dual_mul_f32 v40, v40, v8 :: v_dual_mul_f32 v67, v67, v51
	v_dual_mul_f32 v33, v33, v49 :: v_dual_mul_f32 v20, v20, v50
	v_mul_f32_e32 v17, v17, v49
	v_mul_f32_e32 v9, v9, v49
	v_mul_f32_e32 v11, v11, v51
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v139, v0, v140
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v90, v90, v8
	v_dual_mul_f32 v0, v133, v51 :: v_dual_mul_f32 v135, v134, v140
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v136, v129, v141 :: v_dual_mul_f32 v105, v104, v140
	v_mul_f32_e32 v137, v128, v142
	v_dual_mul_f32 v101, v138, v140 :: v_dual_mul_f32 v138, v127, v143
	v_dual_mul_f32 v127, v149, v141 :: v_dual_mul_f32 v128, v150, v142
	v_mul_f32_e32 v89, v89, v141
	v_dual_mul_f32 v129, v148, v143 :: v_dual_mul_f32 v102, v102, v141
	v_mul_f32_e32 v103, v103, v142
	v_dual_mul_f32 v90, v90, v142 :: v_dual_mul_f32 v133, v131, v51
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v134, v130, v51 :: v_dual_mul_f32 v149, v69, v8
	v_mul_f32_e32 v141, v100, v8
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v142, v99, v8 :: v_dual_mul_f32 v69, v0, v145
	.loc	1 1124 41                       ; ragged.py:1124:41
	v_add_lshl_u32 v0, v53, s20, 1
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v104, v151, v143
	v_mul_f32_e32 v94, v94, v143
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v140, v95, v49 :: v_dual_mul_f32 v131, v132, v146
	.loc	1 1124 41                       ; ragged.py:1124:41
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v143, v78, v50 :: v_dual_mul_f32 v148, v77, v49
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v132, v133, v147 :: v_dual_mul_f32 v133, v134, v144
	v_dual_mul_f32 v99, v93, v145 :: v_dual_mul_f32 v100, v92, v146
	v_mul_f32_e32 v77, v141, v145
	v_dual_mul_f32 v95, v97, v145 :: v_dual_mul_f32 v96, v96, v146
	v_mul_f32_e32 v97, v140, v147
	v_dual_mul_f32 v130, v91, v147 :: v_dual_mul_f32 v93, v148, v144
	v_mul_f32_e32 v78, v142, v146
	v_dual_mul_f32 v91, v98, v147 :: v_dual_mul_f32 v98, v143, v144
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v53, v86, v51 :: v_dual_mul_f32 v92, v149, v144
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v147, v42, v8
	v_mul_f32_e32 v148, v41, v8
	v_dual_mul_f32 v149, v38, v8 :: v_dual_mul_f32 v120, v120, v157
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v121, v121, v158
	v_mul_f32_e32 v119, v119, v156
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s9, 0xffff
	s_mov_b32 s12, s8
	.loc	1 1124 41                       ; ragged.py:1124:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_store_b32 v52, v0
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v88, v51
	v_mul_f32_e32 v52, v87, v51
	v_mul_f32_e32 v88, v44, v49
	v_mul_f32_e32 v146, v43, v49
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v155
	ds_load_b128 v[142:145], v155 offset:16
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v86, v82, v50
	v_mul_f32_e32 v87, v81, v50
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v141, v85, v41
	v_mul_f32_e32 v140, v53, v42
	v_dual_mul_f32 v134, v52, v44 :: v_dual_mul_f32 v53, v79, v42
	v_dual_mul_f32 v81, v83, v41 :: v_dual_mul_f32 v82, v84, v42
	v_dual_mul_f32 v83, v86, v44 :: v_dual_mul_f32 v84, v87, v43
	v_mul_f32_e32 v52, v80, v41
	v_dual_mul_f32 v79, v88, v44 :: v_dual_mul_f32 v80, v146, v43
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v85, v36, v49 :: v_dual_mul_f32 v38, v39, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v87, v70, v142 :: v_dual_mul_f32 v44, v72, v51
	v_dual_mul_f32 v0, v0, v43 :: v_dual_mul_f32 v41, v147, v41
	v_dual_mul_f32 v42, v148, v42 :: v_dual_mul_f32 v39, v149, v43
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v43, v73, v51 :: v_dual_mul_f32 v72, v76, v50
	v_dual_mul_f32 v147, v46, v8 :: v_dual_mul_f32 v76, v75, v50
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v73, v44, v144 :: v_dual_mul_f32 v30, v30, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v75, v43, v145
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v34, v34, v49
	v_mul_f32_e32 v88, v48, v8
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v36, v37, v142
	v_dual_mul_f32 v37, v85, v143 :: v_dual_mul_f32 v146, v47, v8
	v_mul_f32_e32 v86, v71, v143
	v_dual_mul_f32 v46, v72, v142 :: v_dual_mul_f32 v43, v35, v144
	v_dual_mul_f32 v47, v76, v143 :: v_dual_mul_f32 v48, v31, v144
	v_dual_mul_f32 v70, v30, v145 :: v_dual_mul_f32 v35, v147, v144
	v_dual_mul_f32 v44, v34, v145 :: v_dual_mul_f32 v147, v12, v8
	v_dual_mul_f32 v31, v88, v142 :: v_dual_mul_f32 v34, v146, v143
	v_dual_mul_f32 v30, v45, v145 :: v_dual_mul_f32 v45, v74, v51
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v72, v15, v49
	v_mul_f32_e32 v74, v14, v8
	v_mul_f32_e32 v146, v13, v8
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_load_b128 v[12:15], v155 offset:512
	ds_load_b128 v[142:145], v155 offset:528
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v68, v68, v51
	v_mul_f32_e32 v66, v66, v51
	v_mul_f32_e32 v16, v16, v49
	v_mul_f32_e32 v6, v6, v8
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp6:
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v45, v45, v12 :: v_dual_mul_f32 v22, v22, v50
	v_mul_f32_e32 v85, v68, v15
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v32, v32, v50 :: v_dual_mul_f32 v33, v33, v12
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v88, v66, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v76, v67, v14 :: v_dual_mul_f32 v71, v22, v13
	v_mul_f32_e32 v148, v32, v12
	v_mul_f32_e32 v66, v20, v14
	v_dual_mul_f32 v32, v17, v13 :: v_dual_mul_f32 v17, v19, v51
	v_dual_mul_f32 v67, v18, v15 :: v_dual_mul_f32 v18, v25, v50
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v25, v26, v49 :: v_dual_mul_f32 v26, v29, v8
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v149, v40, v12 :: v_dual_mul_f32 v12, v74, v13
	v_mul_f32_e32 v13, v146, v14
	v_mul_f32_e32 v20, v16, v14
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v16, v21, v51 :: v_dual_mul_f32 v19, v24, v50
	v_mul_f32_e32 v21, v23, v50
	v_mul_f32_e32 v23, v28, v49
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v29, v26, v143 :: v_dual_mul_f32 v24, v27, v49
	v_dual_mul_f32 v49, v6, v144 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v45
	v_mul_f32_e32 v22, v72, v15
	v_dual_mul_f32 v14, v147, v15 :: v_dual_mul_f32 v27, v25, v145
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v15, v65, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v5, v5, v142
	v_mul_f32_e32 v25, v10, v142
	v_mul_f32_e32 v26, v11, v142
	v_mul_f32_e32 v8, v15, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v15, v16, v144 :: v_dual_mul_f32 v50, v7, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v16, v17, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v45 :: v_dual_mul_f32 v17, v18, v143
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v18, v19, v144 :: v_dual_mul_f32 v19, v21, v145
	v_mul_f32_e32 v21, v9, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v6
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v23, v23, v143
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v6, v7
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v7, null, v6, v6, v45
	v_rcp_f32_e32 v9, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v7, v9, 1.0
	v_fmac_f32_e32 v9, v10, v9
	v_div_scale_f32 v10, vcc_lo, v45, v6, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_dual_mul_f32 v24, v24, v144 :: v_dual_mul_f32 v11, v10, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v7, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, v28, v9
	v_fma_f32 v7, -v7, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v7, v7, v9, v11
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v9, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v9, v9, v10
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v10, null, v9, v9, v8
	v_rcp_f32_e32 v11, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v10, v11, 1.0
	v_fmac_f32_e32 v11, v28, v11
	v_div_scale_f32 v28, vcc_lo, v8, v9, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v28, v11
	v_fma_f32 v51, -v10, v40, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v51, v11
	v_fma_f32 v10, -v10, v40, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v10, v10, v11, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v11, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v7, v6, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v16
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v11, v11, v28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v11, v11, v15
	v_rcp_f32_e32 v40, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v28, v40, 1.0
	v_fmac_f32_e32 v40, v51, v40
	v_div_scale_f32 v51, vcc_lo, v15, v11, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v51, v40
	v_fma_f32 v68, -v28, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v68, v40
	v_fma_f32 v28, -v28, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v28, v28, v40, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v7, v7
	v_ldexp_f32 v7, v7, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v7, null, v40, v40, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v45, v7
	v_fma_f32 v51, -v7, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v51, v45
	v_div_scale_f32 v51, vcc_lo, v16, v40, v16
	v_mul_f32_e32 v65, v51, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v7, v65, v51
	v_fmac_f32_e32 v65, v68, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v7, v65, v51
	v_div_fmas_f32 v45, v7, v45, v65
	v_div_fixup_f32 v7, v10, v9, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v8, 0xbfb8aa3b, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v8, v8
	v_ldexp_f32 v8, v8, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v9, null, v8, v8, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v10, v9
	v_fma_f32 v51, -v9, v10, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, v51, v10
	v_div_scale_f32 v51, vcc_lo, v148, v8, v148
	v_mul_f32_e32 v65, v51, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v9, v65, v51
	v_fmac_f32_e32 v65, v68, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v9, -v9, v65, v51
	v_div_fmas_f32 v10, v9, v10, v65
	v_div_fixup_f32 v9, v28, v11, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v11, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v8, v10, v8, v148
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v10, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v17
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v11, v11, v15
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v15, v15, v17
	v_rcp_f32_e32 v28, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v11, v28, 1.0
	v_fmac_f32_e32 v28, v51, v28
	v_div_scale_f32 v51, vcc_lo, v17, v15, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v51, v28
	v_fma_f32 v68, -v11, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v68, v28
	v_fma_f32 v11, -v11, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v28, v11, v28, v65
	v_div_fixup_f32 v11, v45, v40, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v16, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v18
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v16, v16, v18
	v_rcp_f32_e32 v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v40, v45, 1.0
	v_fmac_f32_e32 v45, v51, v45
	v_div_scale_f32 v51, vcc_lo, v18, v16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v51, v45
	v_fma_f32 v68, -v40, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v68, v45
	v_fma_f32 v40, -v40, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v40, v40, v45, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v10, v10
	v_ldexp_f32 v10, v10, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v10, null, v45, v45, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v51, v10
	v_fma_f32 v65, -v10, v51, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v65, v51
	v_div_scale_f32 v65, vcc_lo, v19, v45, v19
	v_mul_f32_e32 v68, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v10, v68, v65
	v_fmac_f32_e32 v68, v72, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v10, v68, v65
	v_div_fmas_f32 v51, v10, v51, v68
	v_div_fixup_f32 v10, v28, v15, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v15, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v15, null, v28, v28, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v15
	v_fma_f32 v65, -v15, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v65, v17
	v_div_scale_f32 v65, vcc_lo, v33, v28, v33
	v_mul_f32_e32 v68, v65, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v15, v68, v65
	v_fmac_f32_e32 v68, v72, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v68, v65
	v_div_fmas_f32 v65, v15, v17, v68
	v_div_fixup_f32 v15, v40, v16, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v16, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v18, v18, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v40, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v40, v17
	v_div_scale_f32 v40, vcc_lo, v23, v18, v23
	v_mul_f32_e32 v68, v40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v16, v68, v40
	v_fmac_f32_e32 v68, v72, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v68, v40
	v_div_fmas_f32 v40, v16, v17, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v16, 0xbfb8aa3b, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v51, v45, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v18, v40, v18, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_mul_f32_e32 v23, 0xbfb8aa3b, v149
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v24
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v19, v19, v24
	v_rcp_f32_e32 v45, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v16, v45, 1.0
	v_fmac_f32_e32 v45, v51, v45
	v_div_scale_f32 v51, vcc_lo, v24, v19, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v51, v45
	v_fma_f32 v72, -v16, v68, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v72, v45
	v_fma_f32 v16, -v16, v68, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v45, v16, v45, v68
	v_div_fixup_f32 v16, v65, v28, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v28, 0xbfb8aa3b, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v19, v45, v19, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v28, v28, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v28, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v51, v33
	v_fma_f32 v65, -v33, v51, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v65, v51
	v_div_scale_f32 v65, vcc_lo, v27, v28, v27
	v_mul_f32_e32 v68, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v33, v68, v65
	v_fmac_f32_e32 v68, v72, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v33, v68, v65
	v_div_fmas_f32 v33, v33, v51, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v149
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v23, v23, v149
	v_rcp_f32_e32 v51, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v40, v51, 1.0
	v_fmac_f32_e32 v51, v65, v51
	v_div_scale_f32 v65, vcc_lo, v149, v23, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v65, v51
	v_fma_f32 v72, -v40, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v72, v51
	v_fma_f32 v40, -v40, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v51, v40, v51, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v24, v24, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v45, v40
	v_fma_f32 v65, -v40, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v65, v45
	v_div_scale_f32 v65, vcc_lo, v29, v24, v29
	v_mul_f32_e32 v68, v65, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v40, v68, v65
	v_fmac_f32_e32 v68, v72, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v68, v65
	v_div_fmas_f32 v45, v40, v45, v68
	v_div_fixup_f32 v40, v33, v28, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v27, v27, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v28
	v_fma_f32 v65, -v28, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v65, v33
	v_div_scale_f32 v65, vcc_lo, v49, v27, v49
	v_mul_f32_e32 v68, v65, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v28, v68, v65
	v_fmac_f32_e32 v68, v72, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v68, v65
	v_div_fmas_f32 v33, v28, v33, v68
	v_div_fixup_f32 v28, v51, v23, v149
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v45, v24, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, null, v23, v23, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v51
	v_fma_f32 v68, -v51, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v68, v65
	v_div_scale_f32 v68, vcc_lo, v50, v23, v50
	v_mul_f32_e32 v72, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v51, v72, v68
	v_fmac_f32_e32 v72, v74, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v51, v72, v68
	v_div_fmas_f32 v51, v51, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v141
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v24, v24, v141
	v_rcp_f32_e32 v65, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v29, v65, 1.0
	v_fmac_f32_e32 v65, v68, v65
	v_div_scale_f32 v68, vcc_lo, v141, v24, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v68, v65
	v_fma_f32 v74, -v29, v72, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v74, v65
	v_fma_f32 v29, -v29, v72, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v29, v29, v65, v72
	v_div_fixup_f32 v72, v33, v27, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v140
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v140
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v27, v27, v140
	v_rcp_f32_e32 v49, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v33, v49, 1.0
	v_fmac_f32_e32 v49, v65, v49
	v_div_scale_f32 v65, vcc_lo, v140, v27, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v65, v49
	v_fma_f32 v74, -v33, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v74, v49
	v_div_fixup_f32 v74, v51, v23, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v33, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v49, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v134
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v49, v49, v134
	v_rcp_f32_e32 v50, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v23, v50, 1.0
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v134, v49, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v51, v50
	v_fma_f32 v68, -v23, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v68, v50
	v_fma_f32 v23, -v23, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v50, v23, v50, v65
	v_div_fixup_f32 v23, v29, v24, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v0
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v51, v51, v0
	v_rcp_f32_e32 v29, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v24, v29, 1.0
	v_fmac_f32_e32 v29, v65, v29
	v_div_scale_f32 v65, vcc_lo, v0, v51, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v65, v29
	v_fma_f32 v141, -v24, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v141, v29
	v_fma_f32 v24, -v24, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v65, v24, v29, v68
	v_div_fixup_f32 v24, v33, v27, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v87
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v87
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v27, v27, v87
	v_rcp_f32_e32 v33, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v29, v33, 1.0
	v_fmac_f32_e32 v33, v68, v33
	v_div_scale_f32 v68, vcc_lo, v87, v27, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v68, v33
	v_fma_f32 v141, -v29, v140, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v33
	v_fma_f32 v29, -v29, v140, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v68, v29, v33, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v33, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v50, v49, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v86
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v50, v50, v86
	v_rcp_f32_e32 v49, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v33, v49, 1.0
	v_fmac_f32_e32 v49, v134, v49
	v_div_scale_f32 v134, vcc_lo, v86, v50, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v134, v49
	v_fma_f32 v141, -v33, v140, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v49
	v_fma_f32 v33, -v33, v140, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v134, v33, v49, v140
	v_div_fixup_f32 v33, v65, v51, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v73
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v73
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, null, v0, v0, v73
	v_rcp_f32_e32 v51, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v49, v51, 1.0
	v_fmac_f32_e32 v51, v65, v51
	v_div_scale_f32 v65, vcc_lo, v73, v0, v73
	v_div_fixup_f32 v50, v134, v50, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v65, v51
	v_fma_f32 v141, -v49, v140, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v51
	v_fma_f32 v49, -v49, v140, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v51, v49, v51, v140
	v_div_fixup_f32 v49, v68, v27, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v0, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v27, v27, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v65
	v_fma_f32 v87, -v65, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v87, v68
	v_div_scale_f32 v87, vcc_lo, v75, v27, v75
	v_mul_f32_e32 v140, v87, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v65, v140, v87
	v_fmac_f32_e32 v140, v141, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v140, v87
	v_div_fmas_f32 v65, v65, v68, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v86, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v68, v68
	v_ldexp_f32 v68, v68, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v86, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v86, v86, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v87, v68
	v_fma_f32 v134, -v68, v87, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v134, v87
	v_div_scale_f32 v134, vcc_lo, v88, v86, v88
	v_mul_f32_e32 v140, v134, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v68, v140, v134
	v_fmac_f32_e32 v140, v141, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v68, v140, v134
	v_div_fmas_f32 v87, v68, v87, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v68, v65, v27, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v76
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v0, v0, v76
	v_rcp_f32_e32 v65, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v27, v65, 1.0
	v_fmac_f32_e32 v65, v73, v65
	v_div_scale_f32 v73, vcc_lo, v76, v0, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v73, v65
	v_fma_f32 v134, -v27, v75, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v134, v65
	v_fma_f32 v27, -v27, v75, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v27, v27, v65, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v65, 0xbfb8aa3b, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v75, v87, v86, v88
	v_div_fixup_f32 v76, v27, v0, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_mul_f32_e32 v0, 0xbfb8aa3b, v81
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v65, v65, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v73
	v_fma_f32 v87, -v73, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v85, v65, v85
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v73, v88, v87
	v_fmac_f32_e32 v88, v134, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v73, v88, v87
	v_div_fmas_f32 v73, v73, v86, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v86, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v85, v73, v65, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v86
	v_cndmask_b32_e64 v86, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, 0xbfb8aa3b, v26
	v_exp_f32_e32 v86, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v86, v86, v87
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v86, 1.0, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v86, v86, v26
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v87, v88, 1.0
	v_fmac_f32_e32 v88, v134, v88
	v_div_scale_f32 v134, vcc_lo, v26, v86, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v134, v88
	v_fma_f32 v141, -v87, v140, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v88
	v_fma_f32 v87, -v87, v140, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v87, v88, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v86, v87, v86, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v81
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v0, v0, v81
	v_rcp_f32_e32 v65, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v27, v65, 1.0
	v_fmac_f32_e32 v65, v73, v65
	v_div_scale_f32 v73, vcc_lo, v81, v0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v73, v65
	v_fma_f32 v134, -v27, v88, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v134, v65
	v_fma_f32 v27, -v27, v88, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v65, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v65, 0xbfb8aa3b, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v81, v27, v0, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_mul_f32_e32 v0, 0xbfb8aa3b, v46
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v65, v65, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v88, v73
	v_fma_f32 v134, -v73, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v134, v88
	v_div_scale_f32 v134, vcc_lo, v82, v65, v82
	v_mul_f32_e32 v140, v134, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v73, v140, v134
	v_fmac_f32_e32 v140, v141, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v73, v140, v134
	v_div_fmas_f32 v73, v73, v88, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v88, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v82, v73, v65, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v83
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v88, v88, v134
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v88, 1.0, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v134, null, v88, v88, v83
	v_rcp_f32_e32 v140, v134
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v134, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v83, v88, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v134, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v134, -v134, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v134, v134, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v140, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v83, v134, v88, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v140
	v_cndmask_b32_e64 v140, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v141, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v140, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v140, v140
	v_ldexp_f32 v140, v140, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v140, 1.0, v140
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v141, null, v140, v140, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v142, v141
	v_fma_f32 v143, -v141, v142, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v142
	v_div_scale_f32 v143, vcc_lo, v84, v140, v84
	v_mul_f32_e32 v144, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v145, -v141, v144, v143
	v_fmac_f32_e32 v144, v145, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v141, v144, v143
	v_div_fmas_f32 v141, v141, v142, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v84, v141, v140, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v59, v59, v84 :: v_dual_fmac_f32 v0, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v0, v0, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v65, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v65, v27
	v_div_scale_f32 v65, vcc_lo, v46, v0, v46
	v_mul_f32_e32 v73, v65, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v26, v73, v65
	v_fmac_f32_e32 v73, v87, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v73, v65
	v_div_fmas_f32 v26, v26, v27, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v46, v26, v0, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_mul_f32_e32 v0, 0xbfb8aa3b, v66
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v47
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v27, v27, v47
	v_rcp_f32_e32 v73, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v65, v73, 1.0
	v_fmac_f32_e32 v73, v87, v73
	v_div_scale_f32 v87, vcc_lo, v47, v27, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v73
	v_fma_f32 v134, -v65, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v134, v73
	v_fma_f32 v65, -v65, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v65, v65, v73, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v73, 0xbfb8aa3b, v48
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v48
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v73, v73, v87
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v73, v73, v48
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v87, v88, 1.0
	v_fmac_f32_e32 v88, v134, v88
	v_div_scale_f32 v134, vcc_lo, v48, v73, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v134, v88
	v_fma_f32 v141, -v87, v140, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v88
	v_fma_f32 v87, -v87, v140, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v87, v88, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v87, 0xbfb8aa3b, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v88, v73, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v134, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v87, v87, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v134, 1.0, v87
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v134, v134, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v140, v87
	v_fma_f32 v141, -v87, v140, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v70, v134, v70
	v_mul_f32_e32 v142, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v87, v142, v141
	v_fmac_f32_e32 v142, v143, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v87, v142, v141
	v_div_fmas_f32 v140, v87, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v87, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v88, v140, v134, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v141, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v71
	v_exp_f32_e32 v87, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v87, v87, v141
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v141, 1.0, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v141, v141, v71
	v_rcp_f32_e32 v142, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v87, v142, 1.0
	v_fmac_f32_e32 v142, v143, v142
	v_div_scale_f32 v143, vcc_lo, v71, v141, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v144, v143, v142
	v_fma_f32 v145, -v87, v144, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v144, v145, v142
	v_fma_f32 v87, -v87, v144, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v142, v87, v142, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v87, v65, v27, v47
	v_div_fixup_f32 v47, v142, v141, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v66
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v0, v0, v66
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v65, v27
	v_div_scale_f32 v65, vcc_lo, v66, v0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v65, v27
	v_fma_f32 v71, -v26, v70, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v27
	v_fma_f32 v26, -v26, v70, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v26, v27, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v26, v0, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_mul_f32_e32 v26, 0xbfb8aa3b, v52
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v27, v27, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v65
	v_fma_f32 v71, -v65, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v67, v27, v67
	v_mul_f32_e32 v73, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v134, -v65, v73, v71
	v_fmac_f32_e32 v73, v134, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v73, v71
	v_div_fmas_f32 v65, v65, v70, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v70, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v70, v70, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v71
	v_fma_f32 v134, -v71, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v134, v73
	v_div_scale_f32 v134, vcc_lo, v25, v70, v25
	v_mul_f32_e32 v140, v134, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v71, v140, v134
	v_fmac_f32_e32 v140, v141, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v71, v140, v134
	v_div_fixup_f32 v134, v65, v27, v67
	v_div_fmas_f32 v71, v71, v73, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v52
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v26, v26, v52
	v_rcp_f32_e32 v65, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v27, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v52, v26, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v65
	v_fma_f32 v73, -v27, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v73, v65
	v_fma_f32 v27, -v27, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v27, v27, v65, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v65, 0xbfb8aa3b, v53
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v53
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v65, v65, v53
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v73, v67
	v_div_scale_f32 v73, vcc_lo, v53, v65, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v73, v67
	v_fma_f32 v141, -v66, v140, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v67
	v_fma_f32 v66, -v66, v140, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v66, v66, v67, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v79
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v79
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v67, v67, v79
	v_rcp_f32_e32 v140, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v73, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v79, v67, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v73, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v73, -v73, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v73, v73, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v140, 0xbfb8aa3b, v80
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v140
	v_cndmask_b32_e64 v140, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v141, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, 0xbfb8aa3b, v80
	v_exp_f32_e32 v140, v140
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v140, v140, v141
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v140, 1.0, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v141, null, v140, v140, v80
	v_rcp_f32_e32 v142, v141
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v141, v142, 1.0
	v_fmac_f32_e32 v142, v143, v142
	v_div_scale_f32 v143, vcc_lo, v80, v140, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v144, v143, v142
	v_fma_f32 v145, -v141, v144, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v144, v145, v142
	v_fma_f32 v141, -v141, v144, v143
	v_div_fixup_f32 v143, v27, v26, v52
	v_div_fixup_f32 v52, v66, v65, v53
	v_div_fixup_f32 v53, v73, v67, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v141, v141, v142, v144
	v_div_fixup_f32 v142, v71, v70, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v112, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v79, v141, v140, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v25, v25, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v65, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v65, v27
	v_div_scale_f32 v65, vcc_lo, v36, v25, v36
	v_mul_f32_e32 v66, v65, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v26, v66, v65
	v_fmac_f32_e32 v66, v67, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v66, v65
	v_div_fmas_f32 v26, v26, v27, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v27, v27, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v65
	v_fma_f32 v67, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v37, v27, v37
	v_mul_f32_e32 v70, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v65, v70, v67
	v_fmac_f32_e32 v70, v71, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v70, v67
	v_div_fmas_f32 v65, v65, v66, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v66, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v66, v66, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v67
	v_fma_f32 v71, -v67, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v43, v66, v43
	v_mul_f32_e32 v73, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v67, v73, v71
	v_fmac_f32_e32 v73, v80, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v73, v71
	v_div_fmas_f32 v67, v67, v70, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v70, 0xbfb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v67, v66, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v44
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v70, v70, v44
	v_rcp_f32_e32 v73, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v71, v73, 1.0
	v_fmac_f32_e32 v73, v80, v73
	v_div_scale_f32 v80, vcc_lo, v44, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v80, v73
	v_fma_f32 v141, -v71, v140, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v73
	v_fma_f32 v71, -v71, v140, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v71, v73, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v73, 0xbfb8aa3b, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v71, v70, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v73, v73
	v_ldexp_f32 v73, v73, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v73, v73, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v140, v80
	v_fma_f32 v141, -v80, v140, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v32, v73, v32
	v_mul_f32_e32 v144, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v145, -v80, v144, v141
	v_fmac_f32_e32 v144, v145, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v80, v144, v141
	v_div_fixup_f32 v141, v65, v27, v37
	v_div_fmas_f32 v80, v80, v140, v144
	v_div_fixup_f32 v140, v26, v25, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v80, v80, v73, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v20
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v25, v25, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v25, v25, v20
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v32, v27
	v_div_scale_f32 v32, vcc_lo, v20, v25, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v36, v32, v27
	v_fma_f32 v37, -v26, v36, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v27
	v_fma_f32 v26, -v26, v36, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v26, v26, v27, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v22
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v27, v27, v22
	v_rcp_f32_e32 v36, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v32, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v22, v27, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v37, v36
	v_fma_f32 v66, -v32, v65, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v36
	v_fma_f32 v32, -v32, v65, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v32, v32, v36, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v36, 0xbfb8aa3b, v21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v21
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v36, v36, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v36, v36, v21
	v_rcp_f32_e32 v65, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v37, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v21, v36, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v65
	v_fma_f32 v70, -v37, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v70, v65
	v_fma_f32 v37, -v37, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v37, v37, v65, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v65, 0xbfb8aa3b, v41
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v41
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v65, v65, v41
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v70, vcc_lo, v41, v65, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v70, v67
	v_fma_f32 v73, -v66, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v73, v67
	v_fma_f32 v66, -v66, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v66, v66, v67, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v66, v65, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v67, v67
	v_ldexp_f32 v67, v67, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v67, v67, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v73, -v70, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v73, v71
	v_div_scale_f32 v73, vcc_lo, v42, v67, v42
	v_mul_f32_e32 v144, v73, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v145, -v70, v144, v73
	v_fmac_f32_e32 v144, v145, v71
	v_div_fixup_f32 v145, v32, v27, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v70, v144, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v62, v33
	v_dual_mul_f32 v33, v119, v46 :: v_dual_mul_f32 v62, v56, v81
	v_mul_f32_e32 v56, v129, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v70, v70, v71, v144
	v_div_fixup_f32 v144, v26, v25, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v20, 0xbfb8aa3b, v38 :: v_dual_mul_f32 v71, v60, v23
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v130, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v146, v37, v36, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v116, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v58, v83
	v_dual_mul_f32 v58, v127, v47 :: v_dual_mul_f32 v47, v104, v145
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v147, v70, v67, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v105, v16
	v_mul_f32_e32 v16, v93, v146
	v_mul_f32_e32 v44, v63, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v20, v20, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v21
	v_fma_f32 v25, -v21, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v25, v22
	v_div_scale_f32 v25, vcc_lo, v38, v20, v38
	v_mul_f32_e32 v26, v25, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v21, v26, v25
	v_fmac_f32_e32 v26, v27, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v21, v26, v25
	v_div_fmas_f32 v21, v21, v22, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v22, v22, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v25
	v_fma_f32 v27, -v25, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v39, v22, v39
	v_mul_f32_e32 v32, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v25, v32, v27
	v_fmac_f32_e32 v32, v36, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v32, v27
	v_div_fmas_f32 v25, v25, v26, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v25, v22, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v31
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v26, v26, v31
	v_rcp_f32_e32 v32, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v27, v32, 1.0
	v_fmac_f32_e32 v32, v36, v32
	v_div_scale_f32 v36, vcc_lo, v31, v26, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v37, v36, v32
	v_fma_f32 v42, -v27, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v42, v32
	v_fma_f32 v27, -v27, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v32, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v32, 0xbfb8aa3b, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v149, v27, v26, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v32, v32
	v_ldexp_f32 v32, v32, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v32, v32, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v37, v36
	v_fma_f32 v42, -v36, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v42, v37
	v_div_scale_f32 v42, vcc_lo, v34, v32, v34
	v_mul_f32_e32 v65, v42, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v36, v65, v42
	v_fmac_f32_e32 v65, v66, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v36, v65, v42
	v_div_fmas_f32 v36, v36, v37, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v37, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v150, v36, v32, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v35
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v37, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v37, v37, v35
	v_rcp_f32_e32 v65, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v42, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v35, v37, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v65
	v_fma_f32 v70, -v42, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v67, v70, v65 :: v_dual_mul_f32 v70, v61, v24
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v57, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v148, v21, v20, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v20, 0xbfb8aa3b, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v42, v67, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v138, v85
	v_dual_mul_f32 v24, v98, v142 :: v_dual_mul_f32 v57, v128, v0
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v62|, |v61|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v42, v65, v67
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v139, v6
	v_mul_f32_e32 v67, v137, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v151, v42, v37, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v30
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v20, v20, v30
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v25, v22
	v_div_scale_f32 v25, vcc_lo, v30, v20, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v25, v22
	v_fma_f32 v27, -v21, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v22
	v_fma_f32 v21, -v21, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v21, v22, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v152, v21, v20, v30
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v21, v99, v10 :: v_dual_mul_f32 v30, v121, v48
	v_mul_f32_e32 v20, v107, v140
	v_mul_f32_e32 v48, v103, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v12
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v22, v22, v12
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v12, v22, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v27, v26
	v_fma_f32 v32, -v25, v31, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v32, v26
	v_fma_f32 v25, -v25, v31, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v26, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v153, v25, v22, v12
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v25, v69, v7
	v_dual_mul_f32 v69, v55, v29 :: v_dual_mul_f32 v22, v100, v15
	v_mul_f32_e32 v55, v135, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v122, v88
	v_dual_mul_f32 v15, v97, v40 :: v_dual_mul_f32 v12, v106, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v13
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v118, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v26, v26, v13
	v_rcp_f32_e32 v31, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v27, v31, 1.0
	v_fmac_f32_e32 v31, v32, v31
	v_div_scale_f32 v32, vcc_lo, v13, v26, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v34, v32, v31
	v_fma_f32 v35, -v27, v34, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v31
	v_fma_f32 v27, -v27, v34, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v31, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v31, 0xbfb8aa3b, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v154, v27, v26, v13
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v26, v131, v9 :: v_dual_mul_f32 v27, v132, v11
	v_dual_mul_f32 v13, v95, v18 :: v_dual_mul_f32 v18, v109, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v64, v148
	v_mul_f32_e32 v11, v115, v150
	v_mul_f32_e32 v40, v90, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v14
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v117, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v31, v31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v34, v32
	v_fma_f32 v35, -v32, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v14, v31, v14
	v_mul_f32_e32 v36, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v32, v36, v35
	v_fmac_f32_e32 v36, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v36, v35
	v_div_fmas_f32 v32, v32, v34, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v34, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v155, v32, v31, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v32, v133, v86 :: v_dual_mul_f32 v31, v120, v87
	v_mul_f32_e32 v14, v96, v19
	v_mul_f32_e32 v19, v108, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v7, |v32|, |v25|, |v26|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v5
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v35
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v34, v34, v5
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v5, v34, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v42, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v42, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v110, v39
	v_mul_f32_e32 v39, v94, v155
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v35, v38, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v123, v49
	v_mul_f32_e32 v49, v102, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v124, v50
	v_mul_f32_e32 v50, v114, v79
	v_dual_mul_f32 v38, v101, v28 :: v_dual_and_b32 v79, 0x60, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v156, v35, v34, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v126, v68
	v_mul_f32_e32 v68, v136, v75
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v5, |v71|, |v70|
	v_max3_f32 v6, |v69|, |v37|, |v36|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v125, v51
	v_mul_f32_e32 v51, v113, v53
	v_dual_mul_f32 v53, v111, v143 :: v_dual_mul_f32 v10, v92, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, |v73|, v6
	v_max3_f32 v6, |v68|, |v67|, |v66|
	v_max3_f32 v6, v6, v7, |v27|
	v_max3_f32 v7, |v35|, |v34|, |v65|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max3_f32 v75, v5, v7, v6
	v_max3_f32 v5, |v60|, |v33|, |v31|
	v_max3_f32 v6, |v24|, |v21|, |v22|
	v_max3_f32 v7, |v16|, |v13|, |v14|
	v_max3_f32 v0, v0, |v59|, v5
	v_max3_f32 v5, |v58|, |v57|, |v56|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v5, v5, v6, |v23|
	v_max3_f32 v6, |v30|, |v29|, |v55|
	v_max3_f32 v0, v0, v6, v5
	v_max_f32_e64 v5, |v53|, |v52|
	v_max3_f32 v6, |v51|, |v20|, |v19|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v5, v5, |v50|, v6
	v_max3_f32 v6, |v49|, |v48|, |v47|
	v_max3_f32 v6, v6, v7, |v15|
	v_max3_f32 v7, |v18|, |v17|, |v46|
	s_delay_alu instid0(VALU_DEP_1)
	v_max3_f32 v76, v5, v7, v6
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v77, v45
	v_mul_f32_e32 v45, v54, v41
	v_dual_mul_f32 v6, v78, v72 :: v_dual_mul_f32 v41, v89, v153
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v54, |v43|, |v12|, |v11|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v91, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v28, |v45|, |v44|
	v_max3_f32 v63, |v10|, |v5|, |v6|
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v77, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v28, v28, |v42|, v54
	v_max3_f32 v54, |v41|, |v40|, |v39|
	v_max3_f32 v54, v54, v63, |v7|
	v_max3_f32 v63, |v9|, |v8|, |v38|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v28, v28, v63, v54
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v63, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v54, v75, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v63, v63, v63 :: v_dual_max_f32 v54, v54, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v81, v0, v63
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v76, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v80, v75, v54 :: v_dual_and_b32 v63, 8, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v0, v0, v0
	v_max_f32_e32 v82, v76, v0
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v28, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
	v_dual_max_f32 v83, v28, v0 :: v_dual_and_b32 v0, 3, v165
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v28, 4, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v54, v0, 9, 0
	v_lshlrev_b32_e32 v75, 5, v0
	v_lshl_add_u32 v72, v28, 6, 0
	v_lshl_add_u32 v0, v0, 4, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v54, v28, 2, v54
	v_xor_b32_e32 v64, v75, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v54, v63, 4, v54
	v_add3_u32 v54, v54, v77, v64
	v_lshrrev_b32_e32 v64, 3, v2
	v_add_nc_u32_e32 v2, 0, v2
	ds_store_b128 v54, v[80:83]
	v_lshlrev_b32_e32 v54, 4, v165
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v54, 0x680, v54, v75
	v_xor_b32_e32 v54, v54, v79
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v54, v72, v64, v54
	ds_load_b128 v[80:83], v54
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v64, v80
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v80, v80
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v72, v81
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v81, v81
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v74, v82
	v_mov_b32_dpp v64, v64 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v82, v82
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v72, v72 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v54, v83, v83
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v74, v74 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v64, v64, v64
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v83, v83 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v64, v76, v64 :: v_dual_max_f32 v83, v83, v83
	v_max_f32_e32 v72, v78, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v64
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v54, v54, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v64, v64, v76
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v72
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
	v_max_f32_e32 v72, v72, v76
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v78, v72
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v78, v78, v78
	v_max_f32_e32 v80, v64, v76
	v_max_f32_e32 v64, v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v81, v72, v78 :: v_dual_max_f32 v64, v82, v64
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v72, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v64, v64, v72
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v72, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v82, v64, v72
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v64, v54
	v_mov_b32_dpp v64, v64 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v64, v64, v64
	v_max_f32_e32 v54, v54, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v64, v54
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v64, v64, v64
	v_dual_max_f32 v83, v54, v64 :: v_dual_lshlrev_b32 v54, 3, v63
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v63, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v2, v63, v54
	ds_store_b128 v2, v[80:83]
	v_lshlrev_b32_e32 v2, 5, v28
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v0, v0, v2, v54
	ds_load_b128 v[80:83], v0
.Ltmp55:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v80, v80
	v_max_f32_e32 v2, v82, v82
	v_max_f32_e32 v28, v81, v81
	v_max_f32_e32 v54, v83, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	v_div_scale_f32 v63, null, 0x40e00000, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v64, v63
	v_fma_f32 v72, -v63, v64, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v72, v64
	v_div_scale_f32 v72, vcc_lo, v0, 0x40e00000, v0
	v_mul_f32_e32 v74, v72, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v63, v74, v72
	v_fmac_f32_e32 v74, v76, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v63, v74, v72
	v_max_f32_e32 v72, 0x2b8cbccc, v2
	v_div_fmas_f32 v64, v63, v64, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v72
	v_div_fixup_f32 v0, v64, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v2
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v64.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v74, -v2, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v74, v63
	v_div_scale_f32 v74, vcc_lo, v72, 0x40e00000, v72
	v_mul_f32_e32 v76, v74, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v2, v76, v74
	v_fmac_f32_e32 v76, v78, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v76, v74
	v_div_fmas_f32 v74, v2, v63, v76
	v_max_f32_e32 v76, 0x2b8cbccc, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v76
	v_rcp_f32_e32 v28, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v2, v28, 1.0
	v_fmac_f32_e32 v28, v63, v28
	v_div_scale_f32 v63, vcc_lo, v76, 0x40e00000, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v63, v28
	v_fma_f32 v80, -v2, v78, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v80, v28
	v_fma_f32 v2, -v2, v78, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v78, v2, v28, v78
	v_max_f32_e32 v2, 0x2b8cbccc, v54
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v28
	v_fma_f32 v63, -v28, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v63, v54
	v_div_scale_f32 v63, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v80, v63, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v28, v80, v63
	v_fmac_f32_e32 v80, v81, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v80, v63
	v_div_fmas_f32 v63, v28, v54, v80
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e32 v28.h, v64.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v63, 0x40e00000, v2
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v54, 0xffff0000, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v54, v54, v71
	v_rcp_f32_e32 v80, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v0, v80, 1.0
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v81, vcc_lo, v71, v54, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v81, v80
	v_fma_f32 v83, -v0, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v83, v80
	v_fma_f32 v0, -v0, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v0, v80, v82
	v_div_scale_f32 v0, null, v54, v54, v70
	v_div_fixup_f32 v71, v80, v54, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v81, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v71, v71, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v0, v81, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, vcc_lo, v70, v54, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v83, v82, v81 :: v_dual_and_b32 v80, 15, v71
	v_fma_f32 v84, -v0, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v81
	v_fma_f32 v0, -v0, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v81, v0, v81, v83
	v_div_scale_f32 v0, null, v54, v54, v73
	v_rcp_f32_e32 v82, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v0, v82, 1.0
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, vcc_lo, v73, v54, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v83, v82
	v_fma_f32 v85, -v0, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v82
	v_fma_f32 v0, -v0, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v0, v82, v84
	v_div_scale_f32 v0, null, v54, v54, v69
	v_div_fixup_f32 v73, v82, v54, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v0
	v_fma_f32 v84, -v0, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v69, v54, v69
	v_mul_f32_e32 v85, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v0, v85, v84
	v_fmac_f32_e32 v85, v86, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v85, v84
	v_div_fmas_f32 v83, v0, v83, v85
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 4, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v69, v83, v54, v69
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v0, v0, v79
	v_lshlrev_b32_e32 v79, 10, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v84, 0x1800, v79
	v_and_b32_e32 v79, 16, v165
	v_lshlrev_b32_e32 v85, 6, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v84, 0, v84, v85
	v_add3_u32 v77, v84, v0, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v54, v54, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v84, v0
	v_fma_f32 v85, -v0, v84, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v84
	v_div_scale_f32 v85, vcc_lo, v37, v54, v37
	v_mul_f32_e32 v86, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v0, v86, v85
	v_fmac_f32_e32 v86, v87, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v86, v85
	v_div_fmas_f32 v84, v0, v84, v86
	v_div_scale_f32 v0, null, v54, v54, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v85, v0
	v_fma_f32 v86, -v0, v85, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v85
	v_div_scale_f32 v86, vcc_lo, v36, v54, v36
	v_mul_f32_e32 v87, v86, v85
	v_div_fixup_f32 v70, v81, v54, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v88, -v0, v87, v86
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v88, v85
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v70, v70, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v0, v87, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v85, v0, v85, v87
	v_div_scale_f32 v0, null, v54, v54, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v81, 15, v70
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v70, v70, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v0, v86, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v82, 15, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v35, v54, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v0, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v0, -v0, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v86, v0, v86, v88
	v_div_scale_f32 v0, null, v54, v54, v34
	v_rcp_f32_e32 v87, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v0, v87, 1.0
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v34, v54, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v88, v87
	v_fma_f32 v90, -v0, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v87
	v_fma_f32 v0, -v0, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v87, v0, v87, v89
	v_div_scale_f32 v0, null, v54, v54, v65
	v_rcp_f32_e32 v88, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v0, v88, 1.0
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v65, v54, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v88
	v_fma_f32 v91, -v0, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v88
	v_fma_f32 v0, -v0, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v88, v90
	v_div_scale_f32 v88, null, v54, v54, v68
	v_div_fixup_f32 v0, v0, v54, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v89, v88
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v68, v54, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v88, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v88, v89, v91
	v_div_scale_f32 v89, null, v54, v54, v67
	v_div_fixup_f32 v65, v88, v54, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v90, v89
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v69
	v_rndne_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v89, v90, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v67, v54, v67
	v_dual_mul_f32 v92, v91, v90 :: v_dual_and_b32 v83, 15, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v89, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v89, v92, v91
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_scale_f32 v90, null, v54, v54, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v67, v89, v54, v67
	v_rcp_f32_e32 v91, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v90, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v66, v54, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v90, v90, v91, v93
	v_div_fixup_f32 v68, v90, v54, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v66, v65
	v_and_b32_e32 v65, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v66, 15, v66
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v67, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v68, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 6, v165
	ds_store_b128 v77, v[80:83]
	ds_store_b128 v77, v[65:68] offset:512
	s_waitcnt lgkmcnt(0)
	v_and_or_b32 v0, 0x1b00, v0, v75
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_xad_u32 v66, v0, v1, 0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v54, v54, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[67:70], v66
	ds_load_b128 v[80:83], v66 offset:1024
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v1, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v65, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v65, v1
	v_div_scale_f32 v65, vcc_lo, v32, v54, v32
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v80, 4, v67
	v_lshl_or_b32 v68, v81, 4, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v71, v65, v1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v69, v82, 4, v69
	v_lshl_or_b32 v70, v83, 4, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v73, v1
	v_fma_f32 v0, -v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v73, v0, v1, v71
	v_div_scale_f32 v0, null, v54, v54, v25
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v65, v1
	v_div_scale_f32 v65, vcc_lo, v25, v54, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v65, v1
	v_fma_f32 v75, -v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v75, v1
	v_fma_f32 v0, -v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v75, v0, v1, v71
	v_div_scale_f32 v0, null, v54, v54, v26
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v65, v1
	v_div_scale_f32 v65, vcc_lo, v26, v54, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v65, v1
	v_fma_f32 v80, -v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v80, v1
	v_fma_f32 v0, -v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v80, v0, v1, v71
	v_div_scale_f32 v0, null, v54, v54, v27
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v65, v1
	v_div_scale_f32 v65, vcc_lo, v27, v54, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v65, v1
	v_fma_f32 v81, -v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v81, v1
	v_fma_f32 v0, -v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v0, v1, v71
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v78, 0x40e00000, v76
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v1.h, v64.h
	v_mov_b16_e32 v1.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v65, v0, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v71, 0xffff0000, v65
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v71, v71, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v1, v0
	v_fma_f32 v76, -v0, v1, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, v76, v1
	v_div_scale_f32 v76, vcc_lo, v62, v71, v62
	v_mul_f32_e32 v78, v76, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v0, v78, v76
	v_fmac_f32_e32 v78, v82, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v78, v76
	v_div_fmas_f32 v0, v0, v1, v78
	v_div_scale_f32 v1, null, v71, v71, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, v71, v62
	v_rcp_f32_e32 v76, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v1, v76, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, vcc_lo, v61, v71, v61
	v_mul_f32_e32 v82, v78, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v1, v82, v78
	v_fmac_f32_e32 v82, v83, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v1, -v1, v82, v78
	v_div_fmas_f32 v1, v1, v76, v82
	v_div_scale_f32 v76, null, v71, v71, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v1, v1, v71, v61
	v_rcp_f32_e32 v78, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v1, v1
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v1, v1, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v76, v78, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v82, v78
	v_div_scale_f32 v82, vcc_lo, v59, v71, v59
	v_mul_f32_e32 v83, v82, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v76, v83, v82
	v_fmac_f32_e32 v83, v88, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v76, v83, v82
	v_div_fmas_f32 v88, v76, v78, v83
	v_div_scale_f32 v76, null, v71, v71, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v61, v88, v71, v59
	v_rcp_f32_e32 v78, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v59, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v76, v78, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v82, v78
	v_div_scale_f32 v82, vcc_lo, v60, v71, v60
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v61, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v83, v82, v78
	v_fma_f32 v89, -v76, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v89, v78
	v_fma_f32 v76, -v76, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v89, v76, v78, v83
	v_div_scale_f32 v76, null, v71, v71, v33
	v_div_fixup_f32 v62, v89, v71, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v78, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v60, 15, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v76, v78, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v82, v78
	v_div_scale_f32 v82, vcc_lo, v33, v71, v33
	v_mul_f32_e32 v83, v82, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v76, v83, v82
	v_fmac_f32_e32 v83, v90, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v76, v83, v82
	v_div_fmas_f32 v76, v76, v78, v83
	v_div_scale_f32 v78, null, v71, v71, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v82, v78
	v_fma_f32 v83, -v78, v82, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, vcc_lo, v31, v71, v31
	v_mul_f32_e32 v90, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v78, v90, v83
	v_fmac_f32_e32 v90, v91, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v78, v90, v83
	v_div_fmas_f32 v78, v78, v82, v90
	v_div_scale_f32 v82, null, v71, v71, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v31, v78, v71, v31
	v_rcp_f32_e32 v83, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v82, v83, 1.0
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v90, vcc_lo, v30, v71, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v83
	v_fma_f32 v92, -v82, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v83
	v_fma_f32 v82, -v82, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v83, v91
	v_div_scale_f32 v83, null, v71, v71, v29
	v_div_fixup_f32 v30, v82, v71, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v90, v83
	v_fma_f32 v91, -v83, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v29, v71, v29
	v_mul_f32_e32 v92, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v83, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v83, v92, v91
	v_div_fmas_f32 v83, v83, v90, v92
	v_div_scale_f32 v90, null, v71, v71, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v29, v83, v71, v29
	v_rcp_f32_e32 v91, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v90, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v55, v71, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v90, v91, v93
	v_div_scale_f32 v91, null, v71, v71, v58
	v_div_fixup_f32 v0, v90, v71, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v92, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v62
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v91, v92, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v58, v71, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v62, 15, v55
	v_and_b32_e32 v55, 15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v93, v92
	v_fma_f32 v95, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v92
	v_fma_f32 v91, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v91, v91, v92, v94
	v_div_scale_f32 v92, null, v71, v71, v57
	v_div_fixup_f32 v1, v91, v71, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v93, v92
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v1, v1, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v92, v93, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v1, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v57, v71, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v95, v94, v93
	v_fma_f32 v96, -v92, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v93
	v_fma_f32 v92, -v92, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v92, v92, v93, v95
	v_div_scale_f32 v93, null, v71, v71, v56
	v_div_fixup_f32 v57, v92, v71, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v94, v93
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v93, v94, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, vcc_lo, v56, v71, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v96, v95, v94 :: v_dual_and_b32 v57, 15, v0
	v_fma_f32 v97, -v93, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v97, v94
	v_fma_f32 v93, -v93, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v93, v93, v94, v96
	v_div_fixup_f32 v58, v93, v71, v56
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v56, 15, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v58, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v71, v71, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v77, v[59:62]
	ds_store_b128 v77, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v1, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v55, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v55, v1
	v_div_scale_f32 v55, vcc_lo, v24, v71, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v56, v55, v1
	v_fma_f32 v57, -v0, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v1
	v_fma_f32 v0, -v0, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v56, v0, v1, v56
	v_div_scale_f32 v0, null, v71, v71, v21
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v55, v1
	v_div_scale_f32 v55, vcc_lo, v21, v71, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v55, v1
	v_fma_f32 v58, -v0, v57, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v58, v1
	v_fma_f32 v0, -v0, v57, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v57, v0, v1, v57
	v_div_scale_f32 v0, null, v71, v71, v22
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v55, v1
	v_div_scale_f32 v55, vcc_lo, v22, v71, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v58, v55, v1
	v_fma_f32 v59, -v0, v58, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v1
	v_fma_f32 v0, -v0, v58, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v1, v58
	v_div_scale_f32 v1, null, v71, v71, v23
	v_div_fixup_f32 v0, v0, v71, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v55, v1
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v31
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v58, -v1, v55, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v55, v58, v55
	v_div_scale_f32 v58, vcc_lo, v23, v71, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v22, 15, v22
	v_and_b32_e32 v31, 15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v59, v58, v55
	v_fma_f32 v60, -v1, v59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v60, v55
	v_fma_f32 v1, -v1, v59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v58, v1, v55, v59
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v1, v74, 0x40e00000, v72
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v64.l, v1.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v55, 1, v64
	v_mov_b16_e32 v64.l, v2.h
	v_add3_u32 v1, v1, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v55, 0xffff0000, v1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v68.l
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v59, null, v55, v55, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v60, v59
	v_fma_f32 v61, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v53, v55, v53
	v_mul_f32_e32 v62, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v59, v62, v61
	v_fmac_f32_e32 v62, v72, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v62, v61
	v_div_fmas_f32 v62, v59, v60, v62
	v_div_scale_f32 v59, null, v55, v55, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v53, v62, v55, v53
	v_rcp_f32_e32 v60, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v59, v60, 1.0
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v52, v55, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v61, v60
	v_fma_f32 v74, -v59, v72, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v74, v60
	v_fma_f32 v59, -v59, v72, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v72, v59, v60, v72
	v_div_scale_f32 v59, null, v55, v55, v50
	v_div_fixup_f32 v52, v72, v55, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v60, v59
	v_fma_f32 v61, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v50, v55, v50
	v_mul_f32_e32 v74, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v59, v74, v61
	v_fmac_f32_e32 v74, v88, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v74, v61
	v_div_fmas_f32 v74, v59, v60, v74
	v_div_scale_f32 v59, null, v55, v55, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v62, v74, v55, v50
	v_rcp_f32_e32 v60, v59
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v50, v50, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v51, v55, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v50, 15, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v88, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v59, v88, v61
	v_fmac_f32_e32 v88, v89, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v88, v61
	v_div_fmas_f32 v88, v59, v60, v88
	v_div_scale_f32 v59, null, v55, v55, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v72, v88, v55, v51
	v_rcp_f32_e32 v60, v59
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v53, v72
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v51, v51, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v59, v60, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v20, v55, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v51
	v_and_b32_e32 v52, 15, v52
	v_and_b32_e32 v53, 15, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v89, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v59, v89, v61
	v_fmac_f32_e32 v89, v90, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v89, v61
	v_div_fmas_f32 v59, v59, v60, v89
	v_div_scale_f32 v60, null, v55, v55, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v61, v60
	v_fma_f32 v89, -v60, v61, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v89, v61
	v_div_scale_f32 v89, vcc_lo, v19, v55, v19
	v_mul_f32_e32 v90, v89, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v60, v90, v89
	v_fmac_f32_e32 v90, v91, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v60, v90, v89
	v_div_fmas_f32 v60, v60, v61, v90
	v_div_scale_f32 v61, null, v55, v55, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v19, v60, v55, v19
	v_rcp_f32_e32 v89, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v61, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v18, v55, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v61, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v61, -v61, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v61, v61, v89, v91
	v_div_scale_f32 v89, null, v55, v55, v17
	v_div_fixup_f32 v18, v61, v55, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v91, -v89, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v17, v55, v17
	v_mul_f32_e32 v92, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v89, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v89, v92, v91
	v_div_fmas_f32 v100, v89, v90, v92
	v_div_scale_f32 v89, null, v55, v55, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v17, v100, v55, v17
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v89, v90, 1.0
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v46, v55, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v90
	v_fma_f32 v89, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_scale_f32 v90, null, v55, v55, v49
	v_div_fixup_f32 v46, v89, v55, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v91, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v46, v46, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v90, v91, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v49, v55, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v93, v92, v91 :: v_dual_and_b32 v46, 15, v46
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v90, v91, v93
	v_div_scale_f32 v91, null, v55, v55, v48
	v_div_fixup_f32 v49, v90, v55, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v91
	v_fma_f32 v93, -v91, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v48, v55, v48
	v_mul_f32_e32 v94, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v91, v94, v93
	v_fmac_f32_e32 v94, v95, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v91, v94, v93
	v_div_fmas_f32 v91, v91, v92, v94
	v_div_scale_f32 v92, null, v55, v55, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v48, v91, v55, v48
	v_rcp_f32_e32 v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v48, v48, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v92, v93, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v47, v55, v47
	v_dual_mul_f32 v95, v94, v93 :: v_dual_and_b32 v48, 15, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v96, -v92, v95, v94
	v_fmac_f32_e32 v95, v96, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v92, v95, v94
	v_div_fmas_f32 v92, v92, v93, v95
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v62, v92, v55, v47
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v49
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	ds_load_b128 v[88:91], v66
	ds_load_b128 v[92:95], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v49, v49
	v_and_b32_e32 v47, 15, v47
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v49, 15, v49
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v77, v[50:53]
	ds_store_b128 v77, v[46:49] offset:512
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v46, 1, v64
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v2, v46, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v46, null, v55, v55, v16
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v46, v47, 1.0
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v16, v55, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v47
	v_fma_f32 v46, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v62, v46, v47, v49
	v_div_scale_f32 v46, null, v55, v55, v13
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v46, v47, 1.0
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v13, v55, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v47
	v_fma_f32 v46, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v63, v46, v47, v49
	v_div_scale_f32 v46, null, v55, v55, v14
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v46, v47, 1.0
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v14, v55, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v47
	v_fma_f32 v46, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v64, v46, v47, v49
	v_div_scale_f32 v46, null, v55, v55, v15
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v46, v47, 1.0
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v15, v55, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v47
	v_fma_f32 v46, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v72, v46, v47, v49
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v46, 0xffff0000, v2
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_and_b16 v2.l, 0xff, v67.l
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v47, null, v46, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v49, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, vcc_lo, v45, v46, v45
	v_mul_f32_e32 v50, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v47, v50, v49
	v_fmac_f32_e32 v50, v51, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v50, v49
	v_div_fmas_f32 v47, v47, v48, v50
	v_div_scale_f32 v48, null, v46, v46, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v45, v47, v46, v45
	v_rcp_f32_e32 v49, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v48, v49, 1.0
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, vcc_lo, v44, v46, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v51, v50, v49
	v_fma_f32 v52, -v48, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v52, v49
	v_fma_f32 v48, -v48, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v48, v48, v49, v51
	v_div_scale_f32 v49, null, v46, v46, v42
	v_div_fixup_f32 v44, v48, v46, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v50, v49
	v_fma_f32 v51, -v49, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v42, v46, v42
	v_mul_f32_e32 v52, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v49, v52, v51
	v_fmac_f32_e32 v52, v53, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v49, v52, v51
	v_div_fmas_f32 v49, v49, v50, v52
	v_div_scale_f32 v50, null, v46, v46, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v47, v49, v46, v42
	v_rcp_f32_e32 v51, v50
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v52, -v50, v51, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v43, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v53, v52, v51 :: v_dual_and_b32 v42, 15, v42
	v_fma_f32 v74, -v50, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v74, v51
	v_fma_f32 v50, -v50, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v50, v50, v51, v53
	v_div_scale_f32 v51, null, v46, v46, v12
	v_div_fixup_f32 v48, v50, v46, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v52, v51
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v44
	v_rndne_f32_e32 v44, v47
	v_rndne_f32_e32 v45, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v45, v45, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v53, -v51, v52, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v52, v53, v52
	v_div_scale_f32 v53, vcc_lo, v12, v46, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v43, 15, v43
	v_and_b32_e32 v44, 15, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v74, v53, v52 :: v_dual_and_b32 v45, 15, v45
	v_fma_f32 v96, -v51, v74, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v96, v52
	v_fma_f32 v51, -v51, v74, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v74, v51, v52, v74
	v_div_scale_f32 v51, null, v46, v46, v11
	v_div_fixup_f32 v12, v74, v46, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v52, v51
	v_fma_f32 v53, -v51, v52, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v53, v52
	v_div_scale_f32 v53, vcc_lo, v11, v46, v11
	v_mul_f32_e32 v96, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v97, -v51, v96, v53
	v_fmac_f32_e32 v96, v97, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v51, v96, v53
	v_div_fmas_f32 v101, v51, v52, v96
	v_div_scale_f32 v51, null, v46, v46, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v11, v101, v46, v11
	v_rcp_f32_e32 v52, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v51, v52, 1.0
	v_fmac_f32_e32 v52, v53, v52
	v_div_scale_f32 v53, vcc_lo, v9, v46, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v96, v53, v52
	v_fma_f32 v97, -v51, v96, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v97, v52
	v_fma_f32 v51, -v51, v96, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v102, v51, v52, v96
	v_div_scale_f32 v51, null, v46, v46, v8
	v_div_fixup_f32 v9, v102, v46, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v52, v51
	v_fma_f32 v53, -v51, v52, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v53, v52
	v_div_scale_f32 v53, vcc_lo, v8, v46, v8
	v_mul_f32_e32 v96, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v97, -v51, v96, v53
	v_fmac_f32_e32 v96, v97, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v51, v96, v53
	v_div_fmas_f32 v103, v51, v52, v96
	v_div_scale_f32 v51, null, v46, v46, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v8, v103, v46, v8
	v_rcp_f32_e32 v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v8, v8, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v53, -v51, v52, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v52, v53, v52
	v_div_scale_f32 v53, vcc_lo, v38, v46, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v8, 15, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v53, v52
	v_fma_f32 v97, -v51, v96, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v97, v52
	v_fma_f32 v51, -v51, v96, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v51, v51, v52, v96
	v_div_scale_f32 v52, null, v46, v46, v41
	v_div_fixup_f32 v38, v51, v46, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v53, v52
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v38, v38, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v96, -v52, v53, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v53, v96, v53
	v_div_scale_f32 v96, vcc_lo, v41, v46, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v97, v96, v53 :: v_dual_and_b32 v38, 15, v38
	v_fma_f32 v98, -v52, v97, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v97, v98, v53
	v_fma_f32 v52, -v52, v97, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v52, v52, v53, v97
	v_div_scale_f32 v53, null, v46, v46, v40
	v_div_fixup_f32 v41, v52, v46, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v96, v53
	v_fma_f32 v97, -v53, v96, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v97, v96
	v_div_scale_f32 v97, vcc_lo, v40, v46, v40
	v_mul_f32_e32 v98, v97, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v99, -v53, v98, v97
	v_fmac_f32_e32 v98, v99, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v53, v98, v97
	v_div_fmas_f32 v53, v53, v96, v98
	v_div_scale_f32 v96, null, v46, v46, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v40, v53, v46, v40
	v_rcp_f32_e32 v97, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v40, v40, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v98, -v96, v97, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v98, v97
	v_div_scale_f32 v98, vcc_lo, v39, v46, v39
	v_dual_mul_f32 v99, v98, v97 :: v_dual_and_b32 v40, 15, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v104, -v96, v99, v98
	v_fmac_f32_e32 v99, v104, v97
	v_div_fixup_f32 v25, v75, v54, v25
	v_div_fixup_f32 v37, v84, v54, v37
	v_div_fixup_f32 v26, v80, v54, v26
	v_div_fixup_f32 v36, v85, v54, v36
	v_fma_f32 v96, -v96, v99, v98
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v73, v54, v32
	v_div_fixup_f32 v27, v81, v54, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v96, v96, v97, v99
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v25, v25, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v47, v96, v46, v39
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v25, v25
	v_med3_f32 v32, v32, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v47
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[47:50], v66
	ds_load_b128 v[96:99], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v41, v41
	v_and_b32_e32 v39, 15, v39
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v41, 15, v41
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v77, v[42:45]
	ds_store_b128 v77, v[38:41] offset:512
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v87, v54, v34
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v86, v54, v35
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v36
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v39, 15, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v26
	v_rndne_f32_e32 v36, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v36, v36
	v_and_b32_e32 v34, 15, v34
	v_and_b32_e32 v35, 15, v35
	v_and_b32_e32 v37, 15, v37
	v_and_b32_e32 v40, 15, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v36, 15, v36
	v_and_b32_e32 v38, 15, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_load_b128 v[42:45], v66
	ds_load_b128 v[51:54], v66 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v76, v71, v33
	v_div_fixup_f32 v33, v56, v71, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v25, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v29, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v41, 15, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v77, v[34:37]
	ds_store_b128 v77, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v66
	ds_load_b128 v[38:41], v66 offset:1024
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v33, v63, v55, v13
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v19
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v24, 15, v24
	v_and_b32_e32 v29, 15, v29
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v40, 4, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v40, v58, v71, v23
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v26, v39, 4, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v57, v71, v21
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v32
	v_rndne_f32_e32 v23, v30
	v_rndne_f32_e32 v0, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v40, v72, v55, v15
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v64, v55, v14
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v14, v13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v25, v38, 4, v34
	v_lshl_or_b32 v34, v41, 4, v37
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_and_b32_e32 v14, 15, v14
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v23, v23
	v_and_b32_e32 v32, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v0, v59, v55, v20
	v_div_fixup_f32 v20, v62, v55, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v30, v30
	v_and_b32_e32 v21, 15, v21
	v_and_b32_e32 v23, 15, v23
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v35, v92, 4, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v30, 15, v30
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v77, v[21:24]
	ds_store_b128 v77, v[29:32] offset:512
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v66
	ds_load_b128 v[29:32], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v93, 4, v89
	v_lshl_or_b32 v37, v94, 4, v90
	v_lshl_or_b32 v38, v95, 4, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v13, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v29, 4, v21
	v_lshl_or_b32 v22, v30, 4, v22
	v_lshl_or_b32 v23, v31, 4, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v15, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v17
	v_rndne_f32_e32 v17, v33
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v24, v32, 4, v24
	v_lshl_or_b32 v29, v96, 4, v47
	v_lshl_or_b32 v30, v97, 4, v48
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v31, v98, 4, v49
	v_lshl_or_b32 v32, v99, 4, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v18, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v16, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v18, 15, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v19, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v20, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v46, v46, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v77, v[13:16]
	ds_store_b128 v77, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v33, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_load_b128 v[13:16], v66
	ds_load_b128 v[17:20], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v39, -v0, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v39, v33
	v_div_scale_f32 v39, vcc_lo, v10, v46, v10
	v_mul_f32_e32 v40, v39, v33
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v13, v17, 4, v13
	v_lshl_or_b32 v17, v51, 4, v42
	v_lshl_or_b32 v14, v18, 4, v14
	v_lshl_or_b32 v18, v52, 4, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v41, -v0, v40, v39
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v15, v19, 4, v15
	v_lshl_or_b32 v19, v53, 4, v44
	v_lshl_or_b32 v16, v20, 4, v16
	v_lshl_or_b32 v20, v54, 4, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v40, v41, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v40, v39
	v_div_fmas_f32 v0, v0, v33, v40
	v_div_scale_f32 v33, null, v46, v46, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, v46, v10
	v_rcp_f32_e32 v39, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v40, -v33, v39, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v5, v46, v5
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v33, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v33, v41, v40
	v_div_fmas_f32 v33, v33, v39, v41
	v_div_scale_f32 v39, null, v46, v46, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v10, v33, v46, v5
	v_rcp_f32_e32 v40, v39
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v5, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v5, v5, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v5, v5
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v6, v46, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v42, v41, v40 :: v_dual_and_b32 v5, 15, v5
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_scale_f32 v40, null, v46, v46, v7
	v_div_fixup_f32 v33, v39, v46, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v41, v40
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v6, v6, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v42, -v40, v41, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v7, v46, v7
	v_dual_mul_f32 v43, v42, v41 :: v_dual_and_b32 v6, 15, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v40, v43, v42
	v_fmac_f32_e32 v43, v44, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v40, v43, v42
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v42, 3, v166
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v40, v40, v41, v43
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v41, 4, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v40, v46, v7
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v9
	v_rndne_f32_e32 v9, v10
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v7, v7, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v10, v9
	v_and_b32_e32 v9, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v7, 15, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v10, 15, v10
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v11, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v12, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v77, v[5:8]
	ds_store_b128 v77, v[9:12] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v66
	ds_load_b128 v[9:12], v66 offset:1024
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v70.l
	v_and_b16 v0.h, 0xff, v69.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v33, v9, 4, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s0, s22, v41
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v10, 4, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s23, 0, s0
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v40, v11, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, v41, v4
	v_lshl_or_b32 v4, s28, 7, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[5:6]
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_or_b16 v5.h, v0.h, v0.l
	v_or_b16 v5.l, v2.l, v1.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v12, v12, 4, v8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v34.l
	v_and_b16 v0.h, 0xff, v27.l
	v_lshlrev_b16 v1.l, 8, v26.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[7:8], null, v11, s5, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_and_b16 v2.l, 0xff, v25.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v6.h, v0.h, v0.l
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 32, v41
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v6.l, v2.l, v1.l
	v_cndmask_b32_e32 v0, 0x80000000, v7, vcc_lo
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v7, 48, v41
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v36.l
	v_and_b16 v2.l, 0xff, v35.l
	buffer_store_b64 v[5:6], v0, s[12:15], 0 offen
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 16, v41
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v7, s0, s22, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v8, null, s23, 0, s0
	v_add_co_u32 v5, s3, s22, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s23, 0, s3
	v_add_co_u32 v9, s0, s22, v9
	v_add_co_ci_u32_e64 v10, null, s23, 0, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[24:25], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[26:27], v[5:6]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, 16, v11
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v38.l
	v_and_b16 v0.h, 0xff, v37.l
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[7:8]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[24:25], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[26:27], v[9:10]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_mad_u64_u32 v[8:9], null, v5, s5, v[4:5]
	v_add_nc_u32_e32 v7, 32, v11
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v6.h, v0.h, v0.l
	v_or_b16 v6.l, v2.l, v1.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 48, v11
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v24.l
	v_and_b16 v0.h, 0xff, v23.l
	v_lshlrev_b16 v1.l, 8, v22.l
	v_and_b16 v2.l, 0xff, v21.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s4
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v7, s5, v[4:5]
	v_mad_u64_u32 v[10:11], null, v11, s5, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v2.l, v1.l
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	v_lshlrev_b16 v4.l, 8, v16.l
	v_and_b16 v4.h, 0xff, v15.l
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_lshlrev_b16 v5.l, 8, v14.l
	v_and_b16 v5.h, 0xff, v13.l
	buffer_store_b64 v[6:7], v8, s[12:15], 0 offen
	v_or_b16 v7.h, v4.h, v4.l
	v_lshlrev_b16 v4.l, 8, v12.l
	v_and_b16 v4.h, 0xff, v40.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s2
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v6.h, v0.h, v0.l
	v_or_b16 v6.l, v2.l, v1.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v0.l, 8, v20.l
	v_and_b16 v0.h, 0xff, v19.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v17.l
	v_lshlrev_b16 v5.l, 8, v39.l
	v_and_b16 v5.h, 0xff, v33.l
	v_cndmask_b32_e64 v11, 0x80000000, v9, s1
	v_or_b16 v9.h, v4.h, v4.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 2, v79
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v8.h, v0.h, v0.l
	v_or_b16 v8.l, v2.l, v1.l
	v_or_b16 v9.l, v5.h, v5.l
	v_dual_cndmask_b32 v0, 0x80000000, v10 :: v_dual_and_b32 v5, 2, v41
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s20, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[6:7], v11, s[12:15], 0 offen
	buffer_store_b64 v[8:9], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v42
	v_mov_b16_e32 v2.l, v65.h
	v_mov_b16_e32 v1.l, v28.h
	v_add3_u32 v4, v4, v5, v42
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s20, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v165
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s12, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s28, 1
	s_and_b32 vcc_lo, vcc_lo, s29
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp56:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 420
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 420
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 33752
; TotalNumSgprs: 32
; NumVgprs: 256
; ScratchSize: 420
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 32
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp28-.Lfunc_begin0
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 420
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 104
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
