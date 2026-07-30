	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x80
	s_load_b128 s[88:91], s[0:1], 0x4c
	s_load_b32 s39, s[0:1], 0x60
                                        ; implicit-def: $vgpr254 : SGPR spill to VGPR lane
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v147, 5, v0
	.loc	1 584 86                        ; attention.py:584:86
	v_and_b32_e32 v1, 31, v0
	s_load_b64 s[24:25], s[0:1], 0x0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v148, 4, v147
	v_or_b32_e32 v149, 8, v147
	v_or_b32_e32 v150, 12, v147
	v_or_b32_e32 v151, 16, v147
	v_or_b32_e32 v152, 20, v147
	v_or_b32_e32 v153, 24, v147
	v_or_b32_e32 v154, 28, v147
	v_or_b32_e32 v155, 32, v147
	v_or_b32_e32 v156, 36, v147
	v_or_b32_e32 v157, 40, v147
	v_or_b32_e32 v159, 48, v147
	v_or_b32_e32 v158, 44, v147
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 583 26                        ; attention.py:583:26
	s_mul_i32 s30, s3, s90
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v254, s5, 0
	s_cselect_b32 s28, -1, 0
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s4, s88
	.loc	1 566 23                        ; attention.py:566:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s29, s2, 6
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s60, s39, v1
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v2, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, s29, v148
	v_or_b32_e32 v4, s29, v149
	v_or_b32_e32 v5, s29, v150
	v_or_b32_e32 v6, s29, v151
	v_or_b32_e32 v7, s29, v152
	v_or_b32_e32 v8, s29, v153
	v_or_b32_e32 v9, s29, v154
	v_or_b32_e32 v11, s29, v155
	v_or_b32_e32 v12, s29, v156
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s5, v2
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[90:91], null, s39, v147, v[1:2]
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s29, v147
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s8, s90, v7
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s9, s90, v8
	v_cmp_gt_i32_e64 s10, s90, v9
	v_cmp_gt_i32_e32 vcc_lo, s90, v2
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_u32_f32 s5, s5
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[91:92], null, s39, 12, v[90:91]
	v_lshl_add_u32 v163, s39, 2, v90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s6, s6, s5
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v164, s39, 3, v90
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v165, s39, 4, v90
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s5, s5, s6
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[92:93], null, s39, 20, v[90:91]
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s2, s7, s5
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[93:94], null, s39, 24, v[90:91]
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s5, s2, s4
	s_add_i32 s6, s2, 1
	s_sub_i32 s5, s7, s5
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[94:95], null, s39, 28, v[90:91]
	.loc	1 566 23                        ; attention.py:566:23
	s_sub_i32 s7, s5, s4
	s_cmp_ge_u32 s5, s4
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[95:96], null, s39, 36, v[90:91]
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[96:97], null, s39, 40, v[90:91]
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s19, s6, s2
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s2, s89
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[97:98], null, s39, 44, v[90:91]
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[98:99], null, s39, 48, v[90:91]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 568 22                        ; attention.py:568:22
	v_rcp_iflag_f32_e32 v10, s5
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[99:100], null, s39, 52, v[90:91]
	v_mad_u64_u32 v[100:101], null, s39, 56, v[90:91]
	v_mad_u64_u32 v[101:102], null, s39, 60, v[90:91]
	v_lshl_add_u32 v166, s39, 5, v90
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v13, s29, v157
	.loc	1 570 31 is_stmt 0              ; attention.py:570:31
	v_or_b32_e32 v160, 52, v147
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 568 22 is_stmt 1              ; attention.py:568:22
	v_readfirstlane_b32 s5, v10
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s11, s90, v11
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v15, s29, v159
	.loc	1 570 31 is_stmt 0              ; attention.py:570:31
	v_or_b32_e32 v161, 56, v147
	.loc	1 587 23 is_stmt 1              ; attention.py:587:23
	v_cmp_gt_i32_e64 s12, s90, v12
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v14, s29, v158
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s13, s90, v13
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v162, 60, v147
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_u32_f32 s5, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v16, s29, v160
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s15, s90, v15
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v17, s29, v161
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s6, s6, s5
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s14, s90, v14
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v18, s29, v162
	.loc	1 568 22                        ; attention.py:568:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s88, s89
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s31, s6, 31
	s_mul_i32 s7, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s7
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s16, s90, v16
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s7, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s17, s90, v17
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s7, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s4, s90, v4
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s33, s6, s5
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s30, s30, s29
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s60
	.loc	1 584 26                        ; attention.py:584:26
	s_mul_i32 s2, s30, s39
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s90, v5
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v10, s2, v90
	v_add_nc_u32_e32 v19, s2, v163
	v_add_nc_u32_e32 v20, s2, v164
	v_add_nc_u32_e32 v21, s2, v91
	v_add_nc_u32_e32 v22, s2, v165
	v_add_nc_u32_e32 v23, s2, v92
	v_add_nc_u32_e32 v24, s2, v93
	v_add_nc_u32_e32 v25, s2, v94
	v_add_nc_u32_e32 v26, s2, v166
	v_add_nc_u32_e32 v27, s2, v95
	v_add_nc_u32_e32 v28, s2, v96
	v_add_nc_u32_e32 v29, s2, v97
	v_add_nc_u32_e32 v30, s2, v98
	v_add_nc_u32_e32 v31, s2, v99
	v_add_nc_u32_e32 v32, s2, v100
	v_add_nc_u32_e32 v33, s2, v101
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, s90, v3
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v10, vcc_lo
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s7, s90, v6
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s18, s90, v18
	.loc	1 587 22 is_stmt 0              ; attention.py:587:22
	s_and_b32 vcc_lo, s2, s60
	.loc	1 570 31 is_stmt 1              ; attention.py:570:31
	v_and_b32_e32 v34, 15, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v2, 0x80000000, v19, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, s60
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s2, s33, s31
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v3, 0x80000000, v20, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s6, s60
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s6, s2, s31
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v4, 0x80000000, v21, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s7, s60
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s4, s6
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v5, 0x80000000, v22, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s8, s60
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v36, 0x60, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v6, 0x80000000, v23, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s9, s60
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s7, s91, 63
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v7, 0x80000000, v24, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s10, s60
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x5
	buffer_load_u8 v8, v1, s[24:27], 0 offen
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v25, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s11, s60
	.loc	1 612 9                         ; attention.py:612:9
	v_writelane_b32 v254, s88, 1
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v9, 0x80000000, v26, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s12, s60
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s2, s4
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v10, 0x80000000, v27, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s13, s60
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v19, 1, v36
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v11, 0x80000000, v28, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s15, s60
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v21, s2
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v12, 0x80000000, v30, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s14, s60
	.loc	1 612 9                         ; attention.py:612:9
	v_writelane_b32 v254, s89, 2
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v13, 0x80000000, v29, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s16, s60
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v18, 0x110, v0
	v_cndmask_b32_e32 v14, 0x80000000, v31, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s17, s60
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x1
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	v_cndmask_b32_e32 v15, 0x80000000, v32, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s18, s60
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v20, 0x198, v0
	v_cndmask_b32_e32 v16, 0x80000000, v33, vcc_lo
	s_clause 0x7
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v17, v1, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	v_xor_b32_e32 v1, 0x88, v0
	.loc	1 612 9                         ; attention.py:612:9
	v_writelane_b32 v254, s90, 3
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s2, s7, 31
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v167, 0, v0
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s2, s2, 26
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v168, 0, v1
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, v19, v34
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v169, 0, v18
	v_add_nc_u32_e32 v170, 0, v20
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s2, s7, s2
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s7, v21
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v35, s29, v1
	.loc	1 612 9                         ; attention.py:612:9
	v_writelane_b32 v254, s91, 4
	s_mov_b32 s92, 0
	.loc	1 606 14                        ; attention.py:606:14
	s_and_b32 s41, s2, 0xffffffc0
	.loc	1 612 9                         ; attention.py:612:9
	s_bfe_u32 s2, s20, 0x10008
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v167, v8
	s_waitcnt vmcnt(12)
	ds_store_b8 v167, v5 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v167, v9 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v167, v12 offset:1536
	ds_store_b8 v168, v2
	ds_store_b8 v168, v6 offset:512
	ds_store_b8 v168, v10 offset:1024
	ds_store_b8 v168, v14 offset:1536
	ds_store_b8 v169, v3
	ds_store_b8 v169, v7 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v169, v11 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v169, v15 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v170, v4
	s_waitcnt vmcnt(2)
	ds_store_b8 v170, v17 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v170, v13 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v170, v16 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 612 9                         ; attention.py:612:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s29, s22
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s9, s29, s21
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s23
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s9, s9, s23
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s2, s91, s2
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 34 is_stmt 0              ; attention.py:619:34
	s_ashr_i32 s8, s2, 31
	s_lshr_b32 s8, s8, 26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s8
	.loc	1 613 25 is_stmt 1              ; attention.py:613:25
	s_max_i32 s8, s9, 0
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s92, s8, 0x7fffffc0
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s41, s41, s2
.LBB0_2:
	.loc	1 620 9                         ; attention.py:620:9
	v_cndmask_b32_e64 v2, 0, 1, s28
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_cmp_gt_i32_e64 s94, s90, v35
	.loc	1 620 9                         ; attention.py:620:9
	s_and_not1_b32 vcc_lo, exec_lo, s28
	v_cmp_ne_u32_e64 s42, 1, v2
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s8, s29, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 64
	s_min_i32 s8, s91, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 63
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s9, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s9, s9, 26
	s_add_i32 s8, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_not1_b32 s8, s8, 63
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s41, s41, s8
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x38
	s_load_b32 s46, s[0:1], 0x64
	.loc	1 570 31 is_stmt 1              ; attention.py:570:31
	v_bfe_u32 v144, v0, 4, 1
	v_mov_b32_e32 v8, 0
	v_add_nc_u32_e32 v54, s30, v1
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 s92, s41
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v145, 2, v144
	v_or_b32_e32 v143, 4, v144
	v_or_b32_e32 v142, 6, v144
	v_or_b32_e32 v141, 8, v144
	v_or_b32_e32 v140, 10, v144
	v_or_b32_e32 v139, 12, v144
	v_or_b32_e32 v138, 14, v144
	v_or_b32_e32 v137, 16, v144
	v_or_b32_e32 v136, 18, v144
	v_or_b32_e32 v135, 20, v144
	v_or_b32_e32 v134, 22, v144
	v_or_b32_e32 v133, 24, v144
	v_or_b32_e32 v132, 26, v144
	v_or_b32_e32 v131, 28, v144
	v_or_b32_e32 v130, 30, v144
	v_or_b32_e32 v129, 32, v144
	v_or_b32_e32 v128, 34, v144
	v_or_b32_e32 v127, 36, v144
	v_or_b32_e32 v126, 38, v144
	v_or_b32_e32 v125, 40, v144
	v_or_b32_e32 v124, 42, v144
	v_or_b32_e32 v123, 44, v144
	v_or_b32_e32 v122, 46, v144
	v_or_b32_e32 v121, 48, v144
	v_or_b32_e32 v120, 50, v144
	v_or_b32_e32 v119, 52, v144
	v_or_b32_e32 v117, 54, v144
	v_or_b32_e32 v118, 56, v144
	v_or_b32_e32 v116, 58, v144
	v_or_b32_e32 v115, 60, v144
	v_or_b32_e32 v114, 62, v1
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v33, v8
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_12
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[76:83], s[0:1], 0x8
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v2, 16, v0
	v_lshlrev_b32_e32 v1, 1, v54
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v254, s36, 5
	s_xor_b32 s8, s3, s88
	s_mul_f32 s9, s7, 0x4f7ffffe
	v_mov_b32_e32 v26, v25
	v_cndmask_b32_e64 v1, 0x80000000, v1, s94
	v_writelane_b32 v254, s37, 6
	s_ashr_i32 s8, s8, 31
	s_load_b32 s1, s[0:1], 0x6c
	s_xor_b32 s10, s19, s8
	s_cvt_u32_f32 s9, s9
	v_writelane_b32 v254, s38, 7
	s_sub_i32 s7, 0, s4
	s_sub_i32 s8, s10, s8
	s_mul_i32 s7, s7, s9
	s_mul_i32 s10, s8, s88
	v_writelane_b32 v254, s39, 8
	s_and_b32 s25, s81, 0xffff
	s_mov_b32 s24, s80
	s_sub_i32 s3, s3, s10
	buffer_load_u16 v37, v1, s[24:27], 0 offen
	s_mov_b32 s24, 0
	s_mul_hi_u32 s7, s9, s7
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	s_mov_b32 s31, s24
	v_writelane_b32 v254, s24, 9
	s_abs_i32 s10, s3
	s_add_i32 s9, s9, s7
	s_ashr_i32 s6, s6, 31
	s_ashr_i32 s3, s3, 31
	v_writelane_b32 v254, s25, 10
	s_mul_hi_u32 s7, s10, s9
	.loc	1 569 19 is_stmt 1              ; attention.py:569:19
	s_xor_b32 s3, s3, s6
	s_mul_i32 s6, s7, s4
	s_add_i32 s9, s7, 1
	v_writelane_b32 v254, s26, 11
	s_sub_i32 s6, s10, s6
	v_dual_mov_b32 v28, v25 :: v_dual_lshlrev_b32 v1, 1, v0
	s_sub_i32 s10, s6, s4
	v_writelane_b32 v254, s27, 12
	s_cmp_ge_u32 s6, s4
	.loc	1 664 27                        ; attention.py:664:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s43, s1, 0x3fb8aa3b
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s1, s9, s7
	s_cselect_b32 s6, s10, s6
	v_writelane_b32 v254, s28, 13
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v171, 6, v0
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s7, s1, 1
	s_cmp_ge_u32 s6, s4
	v_dual_mov_b32 v3, 0x5410 :: v_dual_lshlrev_b32 v38, 5, v34
	v_writelane_b32 v254, s29, 14
	v_lshlrev_b32_e32 v36, 4, v36
	v_lshl_add_u32 v174, v34, 1, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_and_b32_e32 v34, 24, v1
	v_writelane_b32 v254, s30, 15
	s_cselect_b32 s1, s7, s1
	s_lshl_b32 s0, s46, 3
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v33, 63, v0
	v_writelane_b32 v254, s31, 16
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v177, 14, v171
	v_or_b32_e32 v185, 30, v171
	v_or_b32_e32 v193, 46, v171
	v_dual_mov_b32 v65, 0xff800000 :: v_dual_add_nc_u32 v172, s23, v35
	v_writelane_b32 v254, s0, 17
	v_mov_b32_e32 v35, 0x7632
	v_or_b32_e32 v201, 62, v171
	v_cndmask_b32_e32 v39, 0x1054, v3, vcc_lo
	v_or3_b32 v36, v38, v36, v34
	s_lshl_b32 s0, s46, 4
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[102:103], null, s46, v177, v[33:34]
	.loc	1 569 19                        ; attention.py:569:19
	v_writelane_b32 v254, s0, 18
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[103:104], null, s46, v185, v[33:34]
	v_mad_u64_u32 v[104:105], null, s46, v193, v[33:34]
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s1, s1, s3
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v175, v167, v0
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s71, s46, v33
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[0:1], null, s46, v171, v[33:34]
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v22, v25
	v_mad_u64_u32 v[105:106], null, s46, v201, v[33:34]
	v_cndmask_b32_e32 v33, 0x3276, v35, vcc_lo
	v_add_nc_u32_e32 v35, 0, v36
	s_lshl_b32 s0, s46, 5
	.loc	1 632 33                        ; attention.py:632:33
	s_mul_i32 s8, s8, s89
	v_or_b32_e32 v204, v38, v34
	v_xad_u32 v38, v36, 8, 0
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s1, s1, s3
	v_lshl_or_b32 v34, v39, 8, v39
	v_xad_u32 v39, v36, 16, 0
	v_writelane_b32 v254, s0, 19
	v_xad_u32 v36, v36, 24, 0
	.loc	1 632 33                        ; attention.py:632:33
	s_add_i32 s1, s1, s8
	ds_load_b64 v[106:107], v35
	ds_load_b64 v[108:109], v38
	ds_load_b64 v[110:111], v39
	ds_load_b64 v[112:113], v36
	.loc	1 632 32 is_stmt 0              ; attention.py:632:32
	s_mul_i32 s0, s1, s91
	v_lshl_or_b32 v33, v33, 8, v33
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_writelane_b32 v254, s0, 20
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v34, 0x540054, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v33, 0x760076, v33
	.loc	1 629 13                        ; attention.py:629:13
	v_writelane_b32 v254, s71, 21
	v_mov_b16_e64 v173.l, 0
	v_xor_b32_e32 v40, 8, v204
	v_xor_b32_e32 v41, 16, v204
	v_xor_b32_e32 v42, 24, v204
	v_lshl_or_b32 v34, v34, 4, v34
	v_lshl_or_b32 v33, v33, 4, v33
	v_writelane_b32 v254, s94, 22
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v190, 40, v171
	v_or_b32_e32 v191, 42, v171
	v_or_b32_e32 v192, 44, v171
	v_or_b32_e32 v194, 48, v171
	v_or_b32_e32 v195, 50, v171
	v_or_b32_e32 v196, 52, v171
	v_or_b32_e32 v197, 54, v171
	v_or_b32_e32 v198, 56, v171
	v_or_b32_e32 v199, 58, v171
	v_or_b32_e32 v200, 60, v171
	v_subrev_nc_u32_e32 v202, s21, v172
	v_dual_mov_b32 v18, v25 :: v_dual_add_nc_u32 v203, s22, v172
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v206, 0, v41
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v208, 0x5040504, v34
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v9, v25
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v205, 0, v40
	v_mov_b32_e32 v11, v25
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v207, 0, v42
	v_mov_b32_e32 v13, v25
	v_dual_mov_b32 v14, v25 :: v_dual_and_b32 v209, 0x7060706, v33
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v213, v25
	.loc	1 629 13                        ; attention.py:629:13
	v_writelane_b32 v254, s46, 23
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_mov_b32 s48, s82
	s_mov_b32 s72, s78
	.loc	1 664 17                        ; attention.py:664:17
	s_mov_b32 s52, s43
	s_mov_b32 s57, s43
	s_mov_b32 s54, s43
	s_and_b32 s77, s77, 0xffff
	s_and_b32 s49, s83, 0xffff
	s_lshl_b32 s55, s46, 1
	s_lshl_b32 s56, s46, 2
	s_and_b32 s73, s79, 0xffff
	s_mov_b32 s61, 0x76543210
	s_mov_b32 s78, s50
	s_mov_b32 s79, s51
	scratch_store_b32 off, v54, off         ; 4-byte Folded Spill
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v173.h, v37.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mov_b32_e32 v210, v173
	v_mov_b32_e32 v211, v173
	v_mov_b32_e32 v212, v173
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v146, v58
	v_cvt_f32_i32_e32 v58, v61
	v_cvt_f32_i32_e32 v52, v52
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(31)
	v_mov_b16_e64 v215.h, v215.l
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v215.l, 0
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v57, v173, v57
	v_cvt_f32_i32_e32 v53, v53
	v_mul_f32_e32 v58, v173, v58
	v_mul_f32_e32 v52, v211, v52
	v_cvt_f32_i32_e32 v50, v50
	v_mul_f32_e32 v57, v57, v215
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(27)
	v_mov_b16_e64 v215.h, v221.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v53, v212, v53
	v_cvt_f32_i32_e32 v51, v51
	v_mul_f32_e32 v50, v173, v50
	v_cvt_f32_i32_e32 v54, v54
	v_mul_f32_e32 v61, v58, v215
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(20)
	v_mov_b16_e64 v58.h, v220.l
	v_mov_b16_e64 v58.l, v215.l
	v_mov_b16_e64 v215.h, v219.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v41, v41
	v_mul_f32_e32 v51, v210, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v53, v53, v58 :: v_dual_mul_f32 v50, v50, v215
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v58.h, v218.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(16)
	v_mov_b16_e64 v215.h, v217.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v41, v212, v41 :: v_dual_mul_f32 v56, v211, v56
	v_mul_f32_e32 v52, v52, v58
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v58.h, v216.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v54, v173, v54 :: v_dual_mul_f32 v53, s54, v53
	v_cvt_f32_i32_e32 v55, v55
	v_mul_f32_e32 v42, v210, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v51, v51, v58 :: v_dual_mul_f32 v54, v54, v215
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v58.h, v214.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v55, v210, v55
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v52, s57, v52
	v_mul_f32_e32 v54, s43, v54
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v41, v41, v58
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v58.h, v89.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v53, 0xff800000, v53, s62
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v45, v211, v45
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v54, 0xff800000, v54, s59
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v46, v46
	v_mul_f32_e32 v56, v56, v58
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v58.h, v88.l
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v51, s52, v51
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v43, v43
	v_mul_f32_e32 v46, v212, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v88, s57, v56 :: v_dual_mul_f32 v55, v55, v58
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v58.h, v87.l
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v50, s43, v50 :: v_dual_mul_f32 v41, s54, v41
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v56, 0xff800000, v51, s0
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v87, s52, v55 :: v_dual_mul_f32 v42, v42, v58
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v55, 0xff800000, v52, s37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v58, 0xff800000, v50, s38
	v_cndmask_b32_e64 v237, 0xff800000, v41, s101
	v_cndmask_b32_e64 v51, 0xff800000, v87, s103
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v42, s52, v42
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v52, 0xff800000, v88, s87
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v41, v58, v56, v55
.Ltmp2:
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v215.h, v85.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v236, 0xff800000, v42, s96
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v42, v53, v54, v51
.Ltmp4:
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v43, v173, v43
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v33, v33
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v50, v52, v237, v236
.Ltmp6:
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v48, v48
	v_mul_f32_e32 v44, v210, v44
	v_mul_f32_e32 v34, v212, v34
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v41, v41, v42, v50
.Ltmp8:
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v42.h, v86.l
	v_mov_b16_e64 v42.l, v215.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v33, v211, v33
	v_mul_f32_e32 v35, v211, v35
	v_cvt_f32_i32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v43, v43, v215 :: v_dual_mul_f32 v42, v46, v42
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v46.h, v84.l
	v_mov_b16_e64 v46.l, v215.l
	v_mov_b16_e64 v215.h, v83.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v43, s43, v43 :: v_dual_mul_f32 v42, s54, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v45, v45, v46
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v46.h, v81.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v48, v210, v48
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v239, 0xff800000, v43, s88
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v47, v173, v47
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v234, 0xff800000, v42, s84
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v44, v44, v46
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v46.h, v82.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v42, v212, v60 :: v_dual_mul_f32 v47, v47, v215
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v44, s52, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v34, v34, v46
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v46.h, v79.l
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v47, s43, v47
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v238, 0xff800000, v44, s93
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v63, v63
	v_mul_f32_e32 v33, v33, v46
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v46.h, v78.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v233, 0xff800000, v47, s83
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v33, s57, v33 :: v_dual_mul_f32 v46, v48, v46
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v48.h, v80.l
	v_mov_b16_e64 v48.l, v215.l
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v45, s57, v45
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v230, 0xff800000, v33, s82
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v46, s52, v46
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v44, v212, v64
	v_dual_mul_f32 v35, v35, v48 :: v_dual_mul_f32 v34, s54, v34
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v235, 0xff800000, v45, s58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v232, 0xff800000, v46, s86
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v45, v211, v63 :: v_dual_mul_f32 v36, v173, v36
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v35, s57, v35
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v229, 0xff800000, v34, s100
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v33, v239, v238, v235
	v_max3_f32 v34, v234, v233, v232
.Ltmp10:
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v43, v210, v146
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v225, 0xff800000, v35, s98
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v215.h, v75.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v47, s43, v61
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v38, v38
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v35, v230, v229, v225
.Ltmp12:
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v40, v40
	v_mul_f32_e32 v46, v210, v62
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v47, 0xff800000, v47, s44
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v39, v39
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v33, v33, v34, v35
.Ltmp14:
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v34.h, v76.l
	v_mov_b16_e64 v34.l, v215.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v35, v211, v59 :: v_dual_mul_f32 v40, v212, v40
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 694 30                        ; attention.py:694:30
	v_readlane_b32 s2, v254, 17
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v36, v36, v215
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v34, v35, v34
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v35.h, v74.l
	v_mov_b16_e64 v35.l, v215.l
	v_mov_b16_e64 v215.h, v77.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v37, v210, v37 :: v_dual_mul_f32 v36, s43, v36
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v34, s57, v34 :: v_dual_mul_f32 v35, v42, v35
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v42.h, v72.l
	v_mov_b16_e64 v42.l, v215.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v49, v173, v49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v48, 0xff800000, v34, s104
	v_cndmask_b32_e64 v231, 0xff800000, v36, s81
	.loc	1 694 30                        ; attention.py:694:30
	s_mov_b32 s74, s50
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v42, v43, v42
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v43.h, v73.l
	v_mov_b16_e64 v43.l, v215.l
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v35, s54, v35
	.loc	1 694 30                        ; attention.py:694:30
	s_mov_b32 s75, s51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v38, v211, v38 :: v_dual_mul_f32 v43, v44, v43
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v44.h, v71.l
	v_mov_b16_e64 v44.l, v215.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v35, 0xff800000, v35, s85
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v43, s54, v43 :: v_dual_mul_f32 v44, v45, v44
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v45.h, v70.l
	v_mov_b16_e64 v45.l, v215.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v49, v49, v215
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v43, 0xff800000, v43, s47
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v44, s57, v44 :: v_dual_mul_f32 v45, v46, v45
	v_mul_f32_e32 v46, s43, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v42, s52, v42 :: v_dual_mul_f32 v49, s43, v49
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v44, 0xff800000, v44, s67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v45, s52, v45
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v46, 0xff800000, v46, s70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v42, 0xff800000, v42, vcc_hi
	v_cndmask_b32_e64 v59, 0xff800000, v49, s5
	v_cndmask_b32_e64 v45, 0xff800000, v45, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v46, v42
	v_max3_f32 v49, v44, v43, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v50, v35, v47, v45
	v_max3_f32 v34, v34, v48, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_max3_f32 v34, v34, v49, v41
.Ltmp16:
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v41.h, v69.l
	v_mov_b16_e64 v41.l, v215.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v39, v212, v39
	v_mul_f32_e32 v39, v39, v41
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v41.h, v67.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v37, v37, v41
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v41.h, v68.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v40, v40, v41
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v41.h, v66.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v40, s54, v40
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v38, v38, v41 :: v_dual_mul_f32 v39, s54, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v224, 0xff800000, v40, s97
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v38, s57, v38 :: v_dual_mul_f32 v37, s52, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v226, 0xff800000, v39, s63
	v_cndmask_b32_e64 v228, 0xff800000, v38, s80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v227, 0xff800000, v37, s64
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v37, v226, v224 :: v_dual_max_f32 v36, v231, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v36, v36, v228, v37
	v_max3_f32 v33, v34, v33, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v34, v33, s61, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v214, v65, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v46, v214
	v_sub_f32_e32 v40, v43, v214
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v43, s92, v197
	v_or_b32_e32 v46, s92, v200
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v40, v40
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v216, 0, v33, s70
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v33.h, v215.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v223, 0, v40, s47
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v40.h, v215.l
	v_mov_b16_e64 v33.l, v216.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v34, v42, v214
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s1, v216, v216
	v_mov_b16_e64 v40.l, v223.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v35, v214
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v33, 1, v33
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v40, 1, v40
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v33, v216, v33, 0x7fff
	v_add3_u32 v40, v223, v40, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v217, 0, v34, vcc_hi
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v34.h, v215.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v219, 0, v35, s85
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v35.h, v215.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v34.l, v217.h
	v_cmp_o_f32_e32 vcc_lo, v217, v217
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v217, v34, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v219, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v34, s61, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v36, v34, v208
	v_perm_b32 v34, v36, v34, v209
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v36, v48, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v218, 0, v36, s104
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v36.l, v219.h
	v_mov_b16_e64 v36.h, v215.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v35.l, v218.h
	v_cmp_o_f32_e64 s1, v218, v218
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v36, 1, v36
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v219, v36, 0x7fff
	v_add3_u32 v35, v218, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v37, v36, s61, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v37, v36, v208
	v_perm_b32 v36, v37, v36, v209
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v47, v214
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v47, s92, v201
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v220, 0, v37, s44
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v37.h, v215.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v37.l, v220.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v45, v214
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s1, v220, v220
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v45, s92, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v37, 1, v37
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v37, v220, v37, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v221, 0, v38, s4
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v38.h, v215.l
	.loc	1 693 30                        ; attention.py:693:30
	s_mul_i32 s4, s53, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v49, s4, v102, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v38.l, v221.h
	v_cmp_o_f32_e32 vcc_lo, v221, v221
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v74, s4, v104, 1
	v_add_lshl_u32 v66, s4, v103, 1
	v_add_lshl_u32 v81, s4, v105, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v221, v38, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s1
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v223, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v39, v38, s61, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_perm_b32 v37, v39, v38, v208
	v_perm_b32 v38, v39, v38, v209
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v44, v214
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v44, s92, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v222, 0, v39, s67
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v39.h, v215.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v39.l, v222.h
	v_cmp_o_f32_e64 s1, v222, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v222, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s1
	v_permlanex16_b32 v41, v40, s61, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v41, v40, v208
	v_perm_b32 v40, v41, v40, v209
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s92, v171
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s3, s91, v41
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v41, 2, v171
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s13, s71, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s92, v41
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s3, s91, v43
	v_cmp_gt_i32_e64 s6, s91, v41
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v41, 4, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s92, v41
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s8, s91, v41
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v41, 6, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s92, v41
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s10, s91, v41
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v41, 8, v171
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s10, s71, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s92, v41
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s23, s91, v41
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v41, 10, v171
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s23, s71, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s92, v41
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s24, s91, v41
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, 12, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v41, s92, v41
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s25, s91, v41
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s92, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s26, s91, v41
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, 16, v171
	v_or_b32_e32 v41, s92, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s27, s91, v41
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, 18, v171
	v_or_b32_e32 v41, s92, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s28, s91, v41
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, 20, v171
	v_or_b32_e32 v41, s92, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s29, s91, v41
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, 22, v171
	v_or_b32_e32 v41, s92, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s30, s91, v41
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, 24, v171
	v_or_b32_e32 v41, s92, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s22, s91, v41
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, 26, v171
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s22, s71, s22
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s92, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s21, s91, v41
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, 28, v171
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s21, s71, s21
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s92, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s20, s91, v41
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s92, v185
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s20, s71, s20
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s19, s91, v41
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v41, 32, v171
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s19, s71, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s92, v41
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v66, 0x80000000, v66, s19
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s18, s91, v41
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, 34, v171
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s18, s71, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s92, v41
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s17, s91, v41
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, 36, v171
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s71, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s92, v41
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s16, s91, v41
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, 38, v171
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s16, s71, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s92, v41
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s15, s91, v41
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s92, v190
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s15, s71, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s14, s91, v41
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v41, s92, v191
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s14, s71, s14
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s11, s91, v41
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v41, s92, v192
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s11, s71, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s9, s91, v41
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v41, s92, v193
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s9, s71, s9
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s12, s91, v41
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v41, s92, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s7, s91, v41
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v41, s92, v195
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s7, s71, s7
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s1, s91, v41
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v41, s92, v196
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s92, s92, 64
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s1, s71, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e32 vcc_lo, s91, v41
	v_add_nc_u32_e32 v41, s4, v0
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s71, vcc_lo
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_lshlrev_b32_e32 v42, 1, v41
	v_add_lshl_u32 v43, v41, s55, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s13
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s13, s71, s6
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s6, s91, v44
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_add_lshl_u32 v44, v41, s56, 1
	v_cndmask_b32_e64 v43, 0x80000000, v43, s13
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s13, s71, s8
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s8, s91, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v44, 0x80000000, v44, s13
	s_mul_i32 s13, s46, 6
	v_add_lshl_u32 v45, v41, s13, 1
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s13, s91, v46
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v46, v41, s2, 1
	v_readlane_b32 s2, v254, 18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v45, 0x80000000, v45, s10
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s10, s91, v47
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v46, 0x80000000, v46, s23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v50, v41, s2, 1
	v_readlane_b32 s2, v254, 19
	s_mul_i32 s23, s46, 10
	v_add_lshl_u32 v47, v41, s23, 1
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s23, s71, s24
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v67, v41, s2, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v47, 0x80000000, v47, s23
	s_mul_i32 s23, s46, 12
	v_cndmask_b32_e64 v67, 0x80000000, v67, s18
	s_mul_i32 s18, s46, 34
	v_add_lshl_u32 v48, v41, s23, 1
	v_add_lshl_u32 v68, v41, s18, 1
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s23, s71, s25
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v48, 0x80000000, v48, s23
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v68, 0x80000000, v68, s17
	s_mul_i32 s17, s46, 36
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s23, s71, s26
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v69, v41, s17, 1
	v_cndmask_b32_e64 v49, 0x80000000, v49, s23
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s23, s71, s27
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x7
	buffer_load_u16 v42, v42, s[72:75], 0 offen
	buffer_load_u16 v43, v43, s[72:75], 0 offen
	buffer_load_u16 v44, v44, s[72:75], 0 offen
	buffer_load_u16 v45, v45, s[72:75], 0 offen
	buffer_load_u16 v46, v46, s[72:75], 0 offen
	buffer_load_u16 v47, v47, s[72:75], 0 offen
	buffer_load_u16 v48, v48, s[72:75], 0 offen
	buffer_load_u16 v49, v49, s[72:75], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v50, s23
	v_cndmask_b32_e64 v69, 0x80000000, v69, s16
	s_mul_i32 s16, s46, 38
	s_mul_i32 s23, s46, 18
	v_add_lshl_u32 v70, v41, s16, 1
	v_add_lshl_u32 v57, v41, s23, 1
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s23, s71, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v70, 0x80000000, v70, s15
	s_mul_i32 s15, s46, 40
	v_cndmask_b32_e64 v57, 0x80000000, v57, s23
	v_add_lshl_u32 v71, v41, s15, 1
	s_mul_i32 s23, s46, 20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v60, v41, s23, 1
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s23, s71, s29
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v71, 0x80000000, v71, s14
	s_mul_i32 s14, s46, 42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v72, v41, s14, 1
	v_cndmask_b32_e64 v60, 0x80000000, v60, s23
	s_mul_i32 s23, s46, 22
	v_add_lshl_u32 v61, v41, s23, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v72, 0x80000000, v72, s11
	s_mul_i32 s11, s46, 44
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s23, s71, s30
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v73, v41, s11, 1
	v_cndmask_b32_e64 v61, 0x80000000, v61, s23
	s_mul_i32 s23, s46, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v62, v41, s23, 1
	v_cndmask_b32_e64 v73, 0x80000000, v73, s9
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s9, s71, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v74, 0x80000000, v74, s9
	s_mul_i32 s9, s46, 48
	v_cndmask_b32_e64 v62, 0x80000000, v62, s22
	v_add_lshl_u32 v75, v41, s9, 1
	s_mul_i32 s22, s46, 26
	s_clause 0x7
	buffer_load_u16 v67, v67, s[72:75], 0 offen
	buffer_load_u16 v68, v68, s[72:75], 0 offen
	buffer_load_u16 v69, v69, s[72:75], 0 offen
	buffer_load_u16 v70, v70, s[72:75], 0 offen
	buffer_load_u16 v71, v71, s[72:75], 0 offen
	buffer_load_u16 v72, v72, s[72:75], 0 offen
	buffer_load_u16 v73, v73, s[72:75], 0 offen
	buffer_load_u16 v74, v74, s[72:75], 0 offen
	v_add_lshl_u32 v63, v41, s22, 1
	v_cndmask_b32_e64 v75, 0x80000000, v75, s7
	s_mul_i32 s7, s46, 50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v76, v41, s7, 1
	v_cndmask_b32_e64 v63, 0x80000000, v63, s21
	s_mul_i32 s21, s46, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v64, v41, s21, 1
	v_cndmask_b32_e64 v76, 0x80000000, v76, s1
	s_mul_i32 s1, s46, 52
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_lshl_u32 v77, v41, s1, 1
	s_mul_i32 s1, s46, 54
	v_cndmask_b32_e64 v64, 0x80000000, v64, s20
	v_add_lshl_u32 v78, v41, s1, 1
	s_mul_i32 s1, s46, 56
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	v_add_lshl_u32 v79, v41, s1, 1
	s_mul_i32 s1, s46, 58
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s71, s3
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v80, v41, s1, 1
	s_mul_i32 s1, s46, 60
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s71, s6
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v41, v41, s1, 1
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s71, s8
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x7
	buffer_load_u16 v50, v50, s[72:75], 0 offen
	buffer_load_u16 v57, v57, s[72:75], 0 offen
	buffer_load_u16 v60, v60, s[72:75], 0 offen
	buffer_load_u16 v61, v61, s[72:75], 0 offen
	buffer_load_u16 v62, v62, s[72:75], 0 offen
	buffer_load_u16 v63, v63, s[72:75], 0 offen
	buffer_load_u16 v64, v64, s[72:75], 0 offen
	buffer_load_u16 v66, v66, s[72:75], 0 offen
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s71, s13
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s71, s10
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s92, s41
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	s_clause 0x7
	buffer_load_u16 v75, v75, s[72:75], 0 offen
	buffer_load_u16 v76, v76, s[72:75], 0 offen
	buffer_load_u16 v77, v77, s[72:75], 0 offen
	buffer_load_u16 v78, v78, s[72:75], 0 offen
	buffer_load_u16 v79, v79, s[72:75], 0 offen
	buffer_load_u16 v80, v80, s[72:75], 0 offen
	buffer_load_u16 v41, v41, s[72:75], 0 offen
	buffer_load_u16 v81, v81, s[72:75], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v65
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(31)
	ds_store_b16 v175, v42
	s_waitcnt vmcnt(30)
	ds_store_b16 v175, v43 offset:256
	s_waitcnt vmcnt(29)
	ds_store_b16 v175, v44 offset:512
	s_waitcnt vmcnt(28)
	ds_store_b16 v175, v45 offset:768
	s_waitcnt vmcnt(27)
	ds_store_b16 v175, v46 offset:1024
	s_waitcnt vmcnt(26)
	ds_store_b16 v175, v47 offset:1280
	s_waitcnt vmcnt(25)
	ds_store_b16 v175, v48 offset:1536
	s_waitcnt vmcnt(24)
	ds_store_b16 v175, v49 offset:1792
	s_waitcnt vmcnt(15)
	ds_store_b16 v175, v50 offset:2048
	s_waitcnt vmcnt(14)
	ds_store_b16 v175, v57 offset:2304
	s_waitcnt vmcnt(13)
	ds_store_b16 v175, v60 offset:2560
	s_waitcnt vmcnt(12)
	ds_store_b16 v175, v61 offset:2816
	s_waitcnt vmcnt(11)
	ds_store_b16 v175, v62 offset:3072
	s_waitcnt vmcnt(10)
	ds_store_b16 v175, v63 offset:3328
	s_waitcnt vmcnt(9)
	ds_store_b16 v175, v64 offset:3584
	s_waitcnt vmcnt(8)
	ds_store_b16 v175, v66 offset:3840
	ds_store_b16 v175, v67 offset:4096
	ds_store_b16 v175, v68 offset:4352
	ds_store_b16 v175, v69 offset:4608
	ds_store_b16 v175, v70 offset:4864
	ds_store_b16 v175, v71 offset:5120
	ds_store_b16 v175, v72 offset:5376
	ds_store_b16 v175, v73 offset:5632
	ds_store_b16 v175, v74 offset:5888
	s_waitcnt vmcnt(7)
	ds_store_b16 v175, v75 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v175, v76 offset:6400
	s_waitcnt vmcnt(5)
	ds_store_b16 v175, v77 offset:6656
	s_waitcnt vmcnt(4)
	ds_store_b16 v175, v78 offset:6912
	s_waitcnt vmcnt(3)
	ds_store_b16 v175, v79 offset:7168
	s_waitcnt vmcnt(2)
	ds_store_b16 v175, v80 offset:7424
	s_waitcnt vmcnt(1)
	ds_store_b16 v175, v41 offset:7680
	s_waitcnt vmcnt(0)
	ds_store_b16 v175, v81 offset:7936
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v41, v65, v214
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v43, v174 offset:608
	ds_load_u16_d16 v42, v174 offset:352
	ds_load_u16_d16 v60, v174
	ds_load_u16_d16 v62, v174 offset:512
	ds_load_u16_d16 v61, v174 offset:256
	ds_load_u16_d16 v63, v174 offset:768
	ds_load_u16_d16 v76, v174 offset:576
	ds_load_u16_d16 v77, v174 offset:832
	ds_load_u16_d16 v64, v174 offset:1024
	ds_load_u16_d16 v78, v174 offset:1088
	ds_load_u16_d16 v65, v174 offset:1280
	ds_load_u16_d16 v79, v174 offset:1344
	ds_load_u16_d16 v66, v174 offset:1536
	ds_load_u16_d16 v67, v174 offset:1792
	ds_load_u16_d16 v80, v174 offset:1600
	ds_load_u16_d16 v74, v174 offset:64
	ds_load_u16_d16 v75, v174 offset:320
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v61, v174 offset:384
	ds_load_u16_d16_hi v62, v174 offset:640
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v76, v174 offset:704
	ds_load_u16_d16_hi v63, v174 offset:896
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v77, v174 offset:960
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v64, v174 offset:1152
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v78, v174 offset:1216
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v65, v174 offset:1408
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v79, v174 offset:1472
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v66, v174 offset:1664
	ds_load_u16_d16 v81, v174 offset:1856
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v80, v174 offset:1728
	ds_load_u16_d16_hi v67, v174 offset:1920
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v44, v41
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v42, v174 offset:480
	ds_load_u16_d16 v41, v174 offset:96
	ds_load_u16_d16 v82, v174 offset:32
	ds_load_u16_d16 v83, v174 offset:288
	ds_load_u16_d16_hi v60, v174 offset:128
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v240, 0, v44, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v28, v28, v240
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(2)
	ds_load_u16_d16_hi v82, v174 offset:160
	ds_load_u16_d16_hi v74, v174 offset:192
	ds_load_u16_d16_hi v41, v174 offset:224
	ds_load_u16_d16 v84, v174 offset:544
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v83, v174 offset:416
	ds_load_u16_d16_hi v75, v174 offset:448
	ds_load_u16_d16 v44, v174 offset:864
	ds_load_u16_d16 v45, v174 offset:1120
	ds_load_u16_d16 v46, v174 offset:1376
	ds_load_u16_d16 v47, v174 offset:1632
	ds_load_u16_d16_hi v81, v174 offset:1984
	ds_load_u16_d16 v57, v174 offset:2048
	ds_load_u16_d16 v49, v174 offset:2112
	ds_load_u16_d16 v48, v174 offset:1888
	ds_load_u16_d16 v85, v174 offset:800
	ds_load_u16_d16 v86, v174 offset:1056
	ds_load_u16_d16 v87, v174 offset:1312
	ds_load_u16_d16 v88, v174 offset:1568
	ds_load_u16_d16 v89, v174 offset:1824
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v84, v174 offset:672
	ds_load_u16_d16_hi v43, v174 offset:736
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v240
	v_mul_f32_e32 v26, v26, v240
	v_mul_f32_e32 v27, v27, v240
	v_mul_f32_e32 v29, v29, v240
	v_mul_f32_e32 v30, v30, v240
	v_mul_f32_e32 v31, v31, v240
	v_mul_f32_e32 v32, v32, v240
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v85, v174 offset:928
	ds_load_u16_d16_hi v44, v174 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v86, v174 offset:1184
	ds_load_u16_d16_hi v45, v174 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v87, v174 offset:1440
	ds_load_u16_d16_hi v46, v174 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v88, v174 offset:1696
	ds_load_u16_d16_hi v47, v174 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v89, v174 offset:1952
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[60:67], v[33:40], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v48, v174 offset:2016
	ds_load_u16_d16 v50, v174 offset:2368
	ds_load_u16_d16_hi v49, v174 offset:2240
	ds_load_u16_d16 v65, v174 offset:2080
	ds_load_u16_d16 v73, v174 offset:2144
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v240
	v_mul_f32_e32 v18, v18, v240
	v_mul_f32_e32 v19, v19, v240
	v_mul_f32_e32 v20, v20, v240
	v_mul_f32_e32 v21, v21, v240
	v_mul_f32_e32 v22, v22, v240
	v_mul_f32_e32 v23, v23, v240
	v_mul_f32_e32 v24, v24, v240
	v_mul_f32_e32 v9, v9, v240
	v_mul_f32_e32 v10, v10, v240
	v_mul_f32_e32 v11, v11, v240
	v_mul_f32_e32 v12, v12, v240
	v_mul_f32_e32 v13, v13, v240
	v_mul_f32_e32 v14, v14, v240
	v_mul_f32_e32 v15, v15, v240
	v_mul_f32_e32 v16, v16, v240
	v_mul_f32_e32 v1, v1, v240
	v_mul_f32_e32 v2, v2, v240
	v_mul_f32_e32 v3, v3, v240
	v_mul_f32_e32 v4, v4, v240
	v_mul_f32_e32 v5, v5, v240
	v_mul_f32_e32 v6, v6, v240
	v_mul_f32_e32 v7, v7, v240
	v_mul_f32_e32 v8, v8, v240
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[82:89], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[74:81], v[33:40], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v66, v174 offset:2336
	ds_load_u16_d16 v67, v174 offset:2592
	ds_load_u16_d16 v68, v174 offset:2848
	ds_load_u16_d16 v69, v174 offset:3104
	ds_load_u16_d16 v70, v174 offset:3360
	ds_load_u16_d16 v71, v174 offset:3616
	ds_load_u16_d16 v72, v174 offset:3872
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v65, v174 offset:2208
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v73, v174 offset:2272
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[33:40], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v59, v214
	v_sub_f32_e32 v34, v58, v214
	v_sub_f32_e32 v35, v237, v214
	v_sub_f32_e32 v36, v236, v214
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v241, 0, v33, s5
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v242, 0, v34, s38
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v33.h, v215.l
	v_mov_b16_e64 v34.h, v215.l
	v_mov_b16_e64 v33.l, v241.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v34.l, v242.h
	v_cmp_o_f32_e32 vcc_lo, v242, v242
	v_cmp_o_f32_e64 s1, v241, v241
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v33, v241, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v242, v34, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	v_permlanex16_b32 v33, v34, s61, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v82, v33, v34, v208
	v_perm_b32 v83, v33, v34, v209
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v56, v214
	v_sub_f32_e32 v34, v55, v214
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v34, v34
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v243, 0, v33, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v244, 0, v34, s37
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v33.h, v215.l
	v_mov_b16_e64 v34.h, v215.l
	v_mov_b16_e64 v33.l, v243.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v34.l, v244.h
	v_cmp_o_f32_e32 vcc_lo, v244, v244
	v_cmp_o_f32_e64 s1, v243, v243
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v33, v243, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v244, v34, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	v_permlanex16_b32 v33, v34, s61, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v84, v33, v34, v208
	v_perm_b32 v85, v33, v34, v209
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v53, v214
	v_sub_f32_e32 v34, v54, v214
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v34, v34
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v245, 0, v33, s62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v246, 0, v34, s59
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v33.h, v215.l
	v_mov_b16_e64 v34.h, v215.l
	v_mov_b16_e64 v33.l, v245.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v34.l, v246.h
	v_cmp_o_f32_e32 vcc_lo, v246, v246
	v_cmp_o_f32_e64 s1, v245, v245
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v33, v245, v33, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v246, v34, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	v_permlanex16_b32 v33, v34, s61, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v86, v33, v34, v208
	v_perm_b32 v87, v33, v34, v209
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v51, v214
	v_sub_f32_e32 v34, v52, v214
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v59, v174 offset:2560
	ds_load_u16_d16 v51, v174 offset:2624
	ds_load_u16_d16 v60, v174 offset:2816
	ds_load_u16_d16 v52, v174 offset:2880
	ds_load_u16_d16 v61, v174 offset:3072
	ds_load_u16_d16 v53, v174 offset:3136
	ds_load_u16_d16 v62, v174 offset:3328
	ds_load_u16_d16 v54, v174 offset:3392
	ds_load_u16_d16 v63, v174 offset:3584
	ds_load_u16_d16 v55, v174 offset:3648
	ds_load_u16_d16 v64, v174 offset:3840
	ds_load_u16_d16 v58, v174 offset:2304
	ds_load_u16_d16_hi v57, v174 offset:2176
	ds_load_u16_d16_hi v50, v174 offset:2496
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v59, v174 offset:2688
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v51, v174 offset:2752
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v60, v174 offset:2944
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v52, v174 offset:3008
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v61, v174 offset:3200
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v53, v174 offset:3264
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v62, v174 offset:3456
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v54, v174 offset:3520
	ds_load_u16_d16 v56, v174 offset:3904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v63, v174 offset:3712
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v55, v174 offset:3776
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v64, v174 offset:3968
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v58, v174 offset:2432
	ds_load_u16_d16 v74, v174 offset:2400
	ds_load_u16_d16 v75, v174 offset:2656
	ds_load_u16_d16 v76, v174 offset:2912
	ds_load_u16_d16 v77, v174 offset:3168
	ds_load_u16_d16 v78, v174 offset:3424
	ds_load_u16_d16 v79, v174 offset:3680
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v247, 0, v33, s103
	v_cndmask_b32_e64 v248, 0, v34, s87
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v33.h, v215.l
	v_mov_b16_e64 v34.h, v215.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v33.l, v247.h
	v_mov_b16_e64 v34.l, v248.h
	v_cmp_o_f32_e32 vcc_lo, v248, v248
	v_cmp_o_f32_e64 s1, v247, v247
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v247, v33, 0x7fff
	v_add3_u32 v34, v248, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s61, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v88, v33, v34, v208
	v_perm_b32 v89, v33, v34, v209
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v56, v174 offset:4032
	ds_load_u16_d16 v42, v174 offset:4096
	ds_load_u16_d16 v33, v174 offset:4160
	ds_load_u16_d16 v80, v174 offset:3936
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[57:64], v[82:89], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v66, v174 offset:2464
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v74, v174 offset:2528
	ds_load_u16_d16_hi v67, v174 offset:2720
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v75, v174 offset:2784
	ds_load_u16_d16_hi v68, v174 offset:2976
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v76, v174 offset:3040
	ds_load_u16_d16_hi v69, v174 offset:3232
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v77, v174 offset:3296
	ds_load_u16_d16_hi v70, v174 offset:3488
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v78, v174 offset:3552
	ds_load_u16_d16_hi v71, v174 offset:3744
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v79, v174 offset:3808
	ds_load_u16_d16_hi v72, v174 offset:4000
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v80, v174 offset:4064
	ds_load_u16_d16 v34, v174 offset:4416
	ds_load_u16_d16_hi v33, v174 offset:4288
	ds_load_u16_d16 v81, v174 offset:4128
	ds_load_u16_d16 v57, v174 offset:4192
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[82:89], v[9:16]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[65:72], v[82:89], v[17:24]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v35, s101
	v_cndmask_b32_e64 v66, 0, v36, s96
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v35.h, v215.l
	v_mov_b16_e64 v36.h, v215.l
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[82:89], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v35.l, v65.h
	v_mov_b16_e32 v36.l, v66.h
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_cmp_o_f32_e64 s1, v65, v65
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v82, v174 offset:4384
	ds_load_u16_d16 v83, v174 offset:4640
	ds_load_u16_d16 v84, v174 offset:4896
	ds_load_u16_d16 v85, v174 offset:5152
	ds_load_u16_d16 v86, v174 offset:5408
	ds_load_u16_d16 v87, v174 offset:5664
	ds_load_u16_d16 v88, v174 offset:5920
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v81, v174 offset:4256
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v57, v174 offset:4320
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v35, 1, v35
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v65, v35, 0x7fff
	v_add3_u32 v36, v66, v36, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s1
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v36, s61, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v73, v35, v36, v208
	v_perm_b32 v74, v35, v36, v209
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v239, v214
	v_sub_f32_e32 v36, v238, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v35, s88
	v_cndmask_b32_e64 v68, 0, v36, s93
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v35.h, v215.l
	v_mov_b16_e64 v36.h, v215.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v35.l, v67.h
	v_mov_b16_e32 v36.l, v68.h
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_cmp_o_f32_e64 s1, v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v35, 1, v35
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v67, v35, 0x7fff
	v_add3_u32 v36, v68, v36, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s1
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v36, s61, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v75, v35, v36, v208
	v_perm_b32 v76, v35, v36, v209
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v235, v214
	v_sub_f32_e32 v36, v234, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v35, s58
	v_cndmask_b32_e64 v70, 0, v36, s84
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v35.h, v215.l
	v_mov_b16_e64 v36.h, v215.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v35.l, v69.h
	v_mov_b16_e32 v36.l, v70.h
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_cmp_o_f32_e64 s1, v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v35, 1, v35
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v69, v35, 0x7fff
	v_add3_u32 v36, v70, v36, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s1
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v36, s61, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v77, v35, v36, v208
	v_perm_b32 v78, v35, v36, v209
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v233, v214
	v_sub_f32_e32 v36, v232, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v35, s83
	v_cndmask_b32_e64 v72, 0, v36, s86
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v35.h, v215.l
	v_mov_b16_e64 v36.h, v215.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v35.l, v71.h
	v_mov_b16_e32 v36.l, v72.h
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_cmp_o_f32_e64 s1, v71, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v35, 1, v35
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v71, v35, 0x7fff
	v_add3_u32 v36, v72, v36, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s1
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v36, s61, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v79, v35, v36, v208
	v_perm_b32 v80, v35, v36, v209
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v44, v174 offset:4608
	ds_load_u16_d16 v35, v174 offset:4672
	ds_load_u16_d16 v45, v174 offset:4864
	ds_load_u16_d16 v36, v174 offset:4928
	ds_load_u16_d16 v46, v174 offset:5120
	ds_load_u16_d16 v37, v174 offset:5184
	ds_load_u16_d16 v47, v174 offset:5376
	ds_load_u16_d16 v38, v174 offset:5440
	ds_load_u16_d16 v48, v174 offset:5632
	ds_load_u16_d16 v39, v174 offset:5696
	ds_load_u16_d16 v49, v174 offset:5888
	ds_load_u16_d16 v43, v174 offset:4352
	ds_load_u16_d16_hi v42, v174 offset:4224
	ds_load_u16_d16_hi v34, v174 offset:4544
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v44, v174 offset:4736
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v35, v174 offset:4800
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v45, v174 offset:4992
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v36, v174 offset:5056
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v46, v174 offset:5248
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v37, v174 offset:5312
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v47, v174 offset:5504
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v38, v174 offset:5568
	ds_load_u16_d16 v40, v174 offset:5952
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v48, v174 offset:5760
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v39, v174 offset:5824
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v49, v174 offset:6016
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v43, v174 offset:4480
	ds_load_u16_d16 v58, v174 offset:4448
	ds_load_u16_d16 v59, v174 offset:4704
	ds_load_u16_d16 v60, v174 offset:4960
	ds_load_u16_d16 v61, v174 offset:5216
	ds_load_u16_d16 v62, v174 offset:5472
	ds_load_u16_d16 v63, v174 offset:5728
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v40, v174 offset:6080
	ds_load_u16_d16 v50, v174 offset:6144
	ds_load_u16_d16 v41, v174 offset:6208
	ds_load_u16_d16 v64, v174 offset:5984
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[42:49], v[73:80], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v82, v174 offset:4512
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v58, v174 offset:4576
	ds_load_u16_d16_hi v83, v174 offset:4768
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v59, v174 offset:4832
	ds_load_u16_d16_hi v84, v174 offset:5024
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v60, v174 offset:5088
	ds_load_u16_d16_hi v85, v174 offset:5280
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v61, v174 offset:5344
	ds_load_u16_d16_hi v86, v174 offset:5536
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v62, v174 offset:5600
	ds_load_u16_d16_hi v87, v174 offset:5792
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v63, v174 offset:5856
	ds_load_u16_d16_hi v88, v174 offset:6048
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v64, v174 offset:6112
	ds_load_u16_d16 v42, v174 offset:6464
	ds_load_u16_d16_hi v41, v174 offset:6336
	ds_load_u16_d16 v49, v174 offset:6176
	ds_load_u16_d16 v232, v174 offset:6240
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[73:80], v[9:16]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v230, v214
	v_sub_f32_e32 v34, v229, v214
	v_sub_f32_e32 v36, v231, v214
	v_sub_f32_e32 v38, v228, v214
	v_sub_f32_e32 v40, v224, v214
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v40, v40
	.loc	1 700 23 is_stmt 1              ; attention.py:700:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[81:88], v[73:80], v[17:24]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[57:64], v[73:80], v[1:8]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v58, 0, v33, s82
	v_cndmask_b32_e64 v59, 0, v34, s100
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v33.h, v215.l
	v_mov_b16_e64 v34.h, v215.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v61, 0, v36, s81
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v33.l, v58.h
	v_mov_b16_e32 v34.l, v59.h
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_cmp_o_f32_e64 s1, v58, v58
	v_mov_b16_e32 v36.l, v61.h
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	v_mov_b16_e64 v36.h, v215.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v63, 0, v38, s80
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v38.h, v215.l
	v_add3_u32 v33, v58, v33, 0x7fff
	v_add3_u32 v34, v59, v34, 0x7fff
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e32 v38.l, v63.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v73, 0, v40, s97
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	v_add3_u32 v36, v61, v36, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_and_b32_e32 v38, 1, v38
	v_mov_b16_e64 v40.h, v215.l
	v_permlanex16_b32 v35, v34, s61, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v40.l, v73.h
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	v_add3_u32 v38, v63, v38, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	v_perm_b32 v33, v35, v34, v208
	v_perm_b32 v34, v35, v34, v209
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v35, v225, v214 :: v_dual_and_b32 v40, 1, v40
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v40, v73, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v60, 0, v35, s98
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v35.h, v215.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v35.l, v60.h
	v_cmp_o_f32_e64 s1, v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v60, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s1
	v_permlanex16_b32 v37, v36, s61, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v37, v36, v208
	v_perm_b32 v36, v37, v36, v209
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v227, v214
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v62, 0, v37, s64
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v37.h, v215.l
	v_mov_b16_e32 v37.l, v62.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v62, v62
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v62, v37, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v39, v38, s61, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v39, v38, v208
	v_perm_b32 v38, v39, v38, v209
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v226, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v64, 0, v39, s63
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v39.h, v215.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v39.l, v64.h
	v_cmp_o_f32_e64 s1, v64, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v64, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s1
	v_permlanex16_b32 v43, v40, s61, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v43, v40, v208
	v_perm_b32 v40, v43, v40, v209
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v52, v174 offset:6656
	ds_load_u16_d16 v43, v174 offset:6720
	ds_load_u16_d16 v53, v174 offset:6912
	ds_load_u16_d16 v44, v174 offset:6976
	ds_load_u16_d16 v54, v174 offset:7168
	ds_load_u16_d16 v45, v174 offset:7232
	ds_load_u16_d16 v55, v174 offset:7424
	ds_load_u16_d16 v46, v174 offset:7488
	ds_load_u16_d16 v56, v174 offset:7680
	ds_load_u16_d16 v47, v174 offset:7744
	ds_load_u16_d16 v57, v174 offset:7936
	ds_load_u16_d16 v51, v174 offset:6400
	ds_load_u16_d16_hi v50, v174 offset:6272
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v42, v174 offset:6592
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v52, v174 offset:6784
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v43, v174 offset:6848
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v53, v174 offset:7040
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v44, v174 offset:7104
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v54, v174 offset:7296
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v45, v174 offset:7360
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v55, v174 offset:7552
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v46, v174 offset:7616
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v56, v174 offset:7808
	ds_load_u16_d16 v48, v174 offset:8000
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v47, v174 offset:7872
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v57, v174 offset:8064
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v51, v174 offset:6528
	ds_load_u16_d16 v233, v174 offset:6496
	ds_load_u16_d16 v234, v174 offset:6752
	ds_load_u16_d16 v235, v174 offset:7008
	ds_load_u16_d16 v236, v174 offset:7264
	ds_load_u16_d16 v237, v174 offset:7520
	ds_load_u16_d16 v238, v174 offset:7776
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v48, v174 offset:8128
	ds_load_u16_d16 v239, v174 offset:8032
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[50:57], v[33:40], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v50, v174 offset:6432
	ds_load_u16_d16 v51, v174 offset:6688
	ds_load_u16_d16 v52, v174 offset:6944
	ds_load_u16_d16 v53, v174 offset:7200
	ds_load_u16_d16 v54, v174 offset:7456
	ds_load_u16_d16 v55, v174 offset:7712
	ds_load_u16_d16 v56, v174 offset:7968
	ds_load_u16_d16_hi v49, v174 offset:6304
	ds_load_u16_d16_hi v232, v174 offset:6368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v50, v174 offset:6560
	ds_load_u16_d16_hi v233, v174 offset:6624
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v51, v174 offset:6816
	ds_load_u16_d16_hi v234, v174 offset:6880
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v52, v174 offset:7072
	ds_load_u16_d16_hi v235, v174 offset:7136
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v53, v174 offset:7328
	ds_load_u16_d16_hi v236, v174 offset:7392
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v54, v174 offset:7584
	ds_load_u16_d16_hi v237, v174 offset:7648
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v55, v174 offset:7840
	ds_load_u16_d16_hi v238, v174 offset:7904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v56, v174 offset:8096
	ds_load_u16_d16_hi v239, v174 offset:8160
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[33:40], v[9:16]
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v42, v58, v59
	v_add_f32_e32 v44, v62, v63
.Ltmp21:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[49:56], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[232:239], v[33:40], v[1:8]
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v33, v216, v217 :: v_dual_add_f32 v34, v218, v219
	v_dual_add_f32 v35, v220, v221 :: v_dual_add_f32 v36, v222, v223
	v_dual_add_f32 v37, v241, v242 :: v_dual_add_f32 v38, v243, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v33, v33, v34
	v_dual_add_f32 v39, v67, v68 :: v_dual_add_f32 v40, v69, v70
	v_add_f32_e32 v34, v35, v36
	v_add_f32_e32 v36, v245, v246
	v_add_f32_e32 v35, v37, v38
	v_dual_add_f32 v37, v247, v248 :: v_dual_add_f32 v38, v65, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v33, v33, v34
	v_dual_mov_b32 v65, v214 :: v_dual_add_f32 v36, v36, v37
	v_add_f32_e32 v43, v60, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v37, v38, v39 :: v_dual_add_f32 v34, v35, v36
	v_add_f32_e32 v39, v42, v43
	v_add_f32_e32 v45, v64, v73
	v_add_f32_e32 v41, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v33, v33, v34 :: v_dual_add_f32 v38, v40, v41
	v_dual_add_f32 v40, v44, v45 :: v_dual_add_f32 v35, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v36, v39, v40
	v_add_f32_e32 v34, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v33, v33, v34
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v34, v33, s61, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp25:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v33, v213, v240
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v213, v33
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s92, v147
	.loc	1 633 32                        ; attention.py:633:32
	v_readlane_b32 s0, v254, 20
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v222, s92, v136
	v_or_b32_e32 v226, s92, v145
	v_or_b32_e32 v230, s92, v143
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e32 vcc_lo, s91, v33
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s92, v148
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s53, s92, s0
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v225, s92, v142
	.loc	1 633 32                        ; attention.py:633:32
	s_mul_i32 s4, s53, s39
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s60, vcc_lo
	.loc	1 636 73 is_stmt 0              ; attention.py:636:73
	v_cmp_gt_i32_e64 s1, s91, v33
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v33, s92, v149
	.loc	1 633 32                        ; attention.py:633:32
	v_add_nc_u32_e32 v34, s4, v163
	v_add_nc_u32_e32 v35, s4, v164
	v_add_nc_u32_e32 v36, s4, v91
	v_add_nc_u32_e32 v37, s4, v165
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s3, s91, v33
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s92, v150
	.loc	1 633 32                        ; attention.py:633:32
	v_add_nc_u32_e32 v38, s4, v92
	v_add_nc_u32_e32 v39, s4, v93
	v_add_nc_u32_e32 v40, s4, v94
	v_add_nc_u32_e32 v41, s4, v166
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s6, s91, v33
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s92, v151
	.loc	1 633 32                        ; attention.py:633:32
	v_add_nc_u32_e32 v42, s4, v95
	v_add_nc_u32_e32 v43, s4, v96
	v_add_nc_u32_e32 v44, s4, v98
	v_add_nc_u32_e32 v45, s4, v97
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s7, s91, v33
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s92, v152
	.loc	1 633 32                        ; attention.py:633:32
	v_add_nc_u32_e32 v46, s4, v99
	v_add_nc_u32_e32 v47, s4, v100
	v_add_nc_u32_e32 v48, s4, v101
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v227, s92, v141
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s8, s91, v33
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s92, v153
	v_or_b32_e32 v231, s92, v140
	v_or_b32_e32 v229, s92, v139
	v_or_b32_e32 v232, s92, v138
	v_or_b32_e32 v223, s92, v135
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s9, s91, v33
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s92, v154
	v_or_b32_e32 v224, s92, v134
	v_or_b32_e32 v228, s92, v133
	v_or_b32_e32 v233, s92, v131
	v_or_b32_e32 v236, s92, v130
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s10, s91, v33
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s92, v155
	v_or_b32_e32 v234, s92, v129
	v_or_b32_e32 v242, s92, v132
	v_or_b32_e32 v235, s92, v127
	v_or_b32_e32 v237, s92, v126
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s11, s91, v33
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s92, v156
	v_or_b32_e32 v238, s92, v125
	v_or_b32_e32 v239, s92, v124
	v_or_b32_e32 v240, s92, v123
	v_or_b32_e32 v241, s92, v122
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s12, s91, v33
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s92, v157
	v_or_b32_e32 v243, s92, v121
	v_or_b32_e32 v244, s92, v120
	v_or_b32_e32 v245, s92, v117
	v_or_b32_e32 v246, s92, v118
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s13, s91, v33
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s92, v158
	v_or_b32_e32 v247, s92, v116
	v_or_b32_e32 v248, s92, v115
	v_or_b32_e32 v251, s92, v128
	v_or_b32_e32 v252, s92, v137
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s14, s91, v33
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s92, v159
	v_or_b32_e32 v249, s92, v119
	v_or_b32_e32 v253, s92, v144
	v_or_b32_e32 v250, s92, v114
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s20, s91, v232
	v_cmp_gt_i32_e64 s15, s91, v33
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s92, v160
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s26, s91, v242
	v_cmp_gt_i32_e64 s24, s91, v235
	v_cmp_gt_i32_e64 s25, s91, v237
	v_cmp_gt_i32_e64 s27, s91, v238
	v_cmp_gt_i32_e64 s16, s91, v33
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s92, v161
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s28, s91, v239
	v_cmp_gt_i32_e64 s29, s91, v240
	v_cmp_gt_i32_e64 s19, s91, v241
	v_cmp_gt_i32_e64 s21, s91, v243
	v_cmp_gt_i32_e64 s17, s91, v33
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v33, s92, v162
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s23, s91, v244
	v_cmp_gt_i32_e64 s22, s91, v245
	v_cmp_gt_i32_e64 s30, s91, v251
	v_cmp_gt_i32_e64 s31, s91, v252
	v_cmp_gt_i32_e64 s18, s91, v33
	.loc	1 633 32                        ; attention.py:633:32
	v_add_nc_u32_e32 v33, s4, v90
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s33, s91, v249
	v_cmp_gt_i32_e64 s34, s91, v253
	v_cmp_gt_i32_e64 s35, s91, v250
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s47, s94, s20
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s60, s1
	.loc	1 636 73 is_stmt 0              ; attention.py:636:73
	v_cmp_gt_i32_e64 s1, s91, v226
	.loc	1 634 32 is_stmt 1              ; attention.py:634:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s60, s3
	.loc	1 636 73 is_stmt 0              ; attention.py:636:73
	v_cmp_gt_i32_e64 s3, s91, v223
	.loc	1 634 32 is_stmt 1              ; attention.py:634:32
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s60, s6
	.loc	1 636 73 is_stmt 0              ; attention.py:636:73
	v_cmp_gt_i32_e64 s6, s91, v230
	.loc	1 634 32 is_stmt 1              ; attention.py:634:32
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s60, s7
	.loc	1 636 73 is_stmt 0              ; attention.py:636:73
	v_cmp_gt_i32_e64 s7, s91, v247
	.loc	1 634 32 is_stmt 1              ; attention.py:634:32
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s60, s8
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s70, s94, s34
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s60, s9
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 vcc_hi, s94, s1
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s60, s10
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s104, s94, s6
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s60, s11
	.loc	1 634 32                        ; attention.py:634:32
	s_clause 0x5
	buffer_load_u8 v33, v33, s[76:79], 0 offen
	buffer_load_u8 v34, v34, s[76:79], 0 offen
	buffer_load_u8 v35, v35, s[76:79], 0 offen
	buffer_load_u8 v37, v37, s[76:79], 0 offen
	buffer_load_u8 v38, v38, s[76:79], 0 offen
	buffer_load_u8 v39, v39, s[76:79], 0 offen
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s60, s12
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s5, s94, s31
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s60, s13
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s0, s94, s3
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s60, s15
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s59, s94, s26
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s60, s14
	.loc	1 639 33                        ; attention.py:639:33
	v_readlane_b32 s8, v254, 9
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s60, s16
	.loc	1 639 33                        ; attention.py:639:33
	v_readlane_b32 s15, v254, 16
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s60, s17
	.loc	1 634 32                        ; attention.py:634:32
	s_clause 0x3
	buffer_load_u8 v41, v41, s[76:79], 0 offen
	buffer_load_u8 v44, v44, s[76:79], 0 offen
	buffer_load_u8 v42, v42, s[76:79], 0 offen
	buffer_load_u8 v46, v46, s[76:79], 0 offen
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s60, s18
	.loc	1 639 33                        ; attention.py:639:33
	v_readlane_b32 s9, v254, 10
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x5
	buffer_load_u8 v43, v43, s[76:79], 0 offen
	buffer_load_u8 v47, v47, s[76:79], 0 offen
	buffer_load_u8 v40, v40, s[76:79], 0 offen
	buffer_load_u8 v36, v36, s[76:79], 0 offen
	buffer_load_u8 v48, v48, s[76:79], 0 offen
	buffer_load_u8 v45, v45, s[76:79], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e32 vcc_lo, s91, v222
	.loc	1 639 33                        ; attention.py:639:33
	v_readlane_b32 s10, v254, 11
	v_readlane_b32 s11, v254, 12
	v_readlane_b32 s12, v254, 13
	v_readlane_b32 s13, v254, 14
	v_readlane_b32 s14, v254, 15
	v_mov_b32_e32 v73, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v69, s11 :: v_dual_mov_b32 v70, s12
	v_dual_mov_b32 v71, s13 :: v_dual_mov_b32 v72, s14
	v_dual_mov_b32 v68, s10 :: v_dual_mov_b32 v67, s9
	v_mov_b32_e32 v66, s8
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s9, s91, v225
	v_cmp_gt_i32_e64 s12, s91, v227
	v_cmp_gt_i32_e64 s14, s91, v231
	v_cmp_gt_i32_e64 s16, s91, v229
	v_cmp_gt_i32_e64 s8, s91, v224
	v_cmp_gt_i32_e64 s11, s91, v228
	v_cmp_gt_i32_e64 s13, s91, v233
	v_cmp_gt_i32_e64 s15, s91, v236
	v_cmp_gt_i32_e64 s18, s91, v234
	v_cmp_gt_i32_e64 s17, s91, v246
	v_cmp_gt_i32_e64 s10, s91, v248
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s85, s94, s9
	s_and_b32 s44, s94, s12
	s_and_b32 s4, s94, s14
	s_and_b32 s67, s94, s16
	s_and_b32 s38, s94, vcc_lo
	s_and_b32 s37, s94, s8
	s_and_b32 s62, s94, s11
	s_and_b32 s103, s94, s13
	s_and_b32 s87, s94, s15
	s_and_b32 s101, s94, s18
	s_and_b32 s96, s94, s30
	s_and_b32 s88, s94, s24
	s_and_b32 s93, s94, s25
	s_and_b32 s58, s94, s27
	s_and_b32 s84, s94, s28
	s_and_b32 s83, s94, s29
	s_and_b32 s86, s94, s19
	s_and_b32 s82, s94, s21
	s_and_b32 s100, s94, s23
	s_and_b32 s98, s94, s33
	s_and_b32 s81, s94, s22
	s_and_b32 s64, s94, s17
	s_and_b32 s80, s94, s7
	s_and_b32 s63, s94, s10
	s_and_b32 s97, s94, s35
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(15)
	ds_store_b8 v167, v33
	s_waitcnt vmcnt(12)
	ds_store_b8 v167, v37 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v167, v41 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v167, v44 offset:1536
	ds_store_b8 v168, v34
	ds_store_b8 v168, v38 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v168, v42 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v168, v46 offset:1536
	ds_store_b8 v169, v35
	ds_store_b8 v169, v39 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v169, v43 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v169, v47 offset:1536
	s_waitcnt vmcnt(2)
	ds_store_b8 v170, v36
	ds_store_b8 v170, v40 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v170, v45 offset:1024
	ds_store_b8 v170, v48 offset:1536
	v_add_nc_u32_e32 v37, 0, v204
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[33:36], v37 offset1:1
	ds_load_2addr_stride64_b64 v[74:77], v37 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[33:34], v[106:107], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[35:36], v[106:107], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[74:75], v[106:107], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[76:77], v[106:107], v[66:73] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[66:69], v205 offset1:1
	ds_load_2addr_stride64_b64 v[70:73], v205 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[66:67], v[108:109], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[68:69], v[108:109], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[70:71], v[108:109], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[72:73], v[108:109], v[33:40] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[66:69], v206 offset1:1
	ds_load_2addr_stride64_b64 v[70:73], v206 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[66:67], v[110:111], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[68:69], v[110:111], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[70:71], v[110:111], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[72:73], v[110:111], v[33:40] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[66:69], v207 offset1:1
	ds_load_2addr_stride64_b64 v[70:73], v207 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[66:67], v[112:113], v[57:64] neg_lo:[1,1,0]
	.loc	1 650 25                        ; attention.py:650:25
	v_add_lshl_u32 v66, s53, v144, 1
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[49:56], v[68:69], v[112:113], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[70:71], v[112:113], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[72:73], v[112:113], v[33:40] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v68, s53, v114, 1
	v_add_nc_u32_e32 v67, 4, v66
	v_add_nc_u32_e32 v69, 8, v66
	v_add_nc_u32_e32 v70, 12, v66
	v_add_nc_u32_e32 v71, 16, v66
	v_add_nc_u32_e32 v72, 20, v66
	v_add_nc_u32_e32 v74, 24, v66
	v_add_nc_u32_e32 v76, 28, v66
	v_add_nc_u32_e32 v78, 36, v66
	v_add_nc_u32_e32 v79, 40, v66
	v_add_nc_u32_e32 v81, 44, v66
	v_add_nc_u32_e32 v83, 48, v66
	v_add_nc_u32_e32 v84, 56, v66
	v_add_nc_u32_e32 v85, 60, v66
	v_add_nc_u32_e32 v86, 64, v66
	v_add_nc_u32_e32 v87, 52, v66
	v_add_nc_u32_e32 v88, 0x48, v66
	v_add_nc_u32_e32 v89, 0x4c, v66
	v_add_nc_u32_e32 v178, 0x50, v66
	v_add_nc_u32_e32 v179, 0x54, v66
	v_add_nc_u32_e32 v180, 0x58, v66
	v_add_nc_u32_e32 v181, 0x5c, v66
	v_add_nc_u32_e32 v182, 0x60, v66
	v_add_nc_u32_e32 v184, 0x64, v66
	v_add_nc_u32_e32 v186, 0x6c, v66
	v_add_nc_u32_e32 v187, 0x70, v66
	v_add_nc_u32_e32 v188, 0x74, v66
	v_add_nc_u32_e32 v189, 0x78, v66
	v_add_nc_u32_e32 v146, 0x44, v66
	v_add_nc_u32_e32 v80, 32, v66
	v_add_nc_u32_e32 v214, 0x68, v66
	v_cndmask_b32_e64 v66, 0x80000000, v66, s34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s35
	v_cndmask_b32_e64 v67, 0x80000000, v67, s1
	v_cndmask_b32_e64 v69, 0x80000000, v69, s6
	v_cndmask_b32_e64 v70, 0x80000000, v70, s9
	v_cndmask_b32_e64 v71, 0x80000000, v71, s12
	v_cndmask_b32_e64 v73, 0x80000000, v72, s14
	v_cndmask_b32_e64 v75, 0x80000000, v74, s16
	v_cndmask_b32_e64 v77, 0x80000000, v76, s20
	v_cndmask_b32_e64 v80, 0x80000000, v80, s31
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	v_cndmask_b32_e64 v79, 0x80000000, v79, s3
	v_cndmask_b32_e64 v82, 0x80000000, v81, s8
	v_cndmask_b32_e64 v83, 0x80000000, v83, s11
	v_cndmask_b32_e64 v81, 0x80000000, v87, s26
	v_cndmask_b32_e64 v84, 0x80000000, v84, s13
	v_cndmask_b32_e64 v85, 0x80000000, v85, s15
	v_cndmask_b32_e64 v86, 0x80000000, v86, s18
	v_cndmask_b32_e64 v87, 0x80000000, v146, s30
	v_cndmask_b32_e64 v146, 0x80000000, v88, s24
	v_cndmask_b32_e64 v176, 0x80000000, v89, s25
	v_cndmask_b32_e64 v178, 0x80000000, v178, s27
	v_cndmask_b32_e64 v179, 0x80000000, v179, s28
	v_cndmask_b32_e64 v180, 0x80000000, v180, s29
	v_cndmask_b32_e64 v181, 0x80000000, v181, s19
	v_cndmask_b32_e64 v183, 0x80000000, v182, s21
	v_cndmask_b32_e64 v184, 0x80000000, v184, s23
	v_cndmask_b32_e64 v182, 0x80000000, v214, s33
	v_cndmask_b32_e64 v186, 0x80000000, v186, s22
	v_cndmask_b32_e64 v187, 0x80000000, v187, s17
	v_cndmask_b32_e64 v188, 0x80000000, v188, s7
	v_cndmask_b32_e64 v189, 0x80000000, v189, s10
	.loc	1 667 17                        ; attention.py:667:17
	s_and_b32 vcc_lo, exec_lo, s42
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e32 vcc_lo, v253, v172
	v_cmp_le_i32_e64 s1, v226, v172
	v_cmp_le_i32_e64 s3, v230, v172
	v_cmp_le_i32_e64 s6, v225, v172
	v_cmp_le_i32_e64 s12, v222, v172
	v_cmp_le_i32_e64 s14, v224, v172
	v_cmp_le_i32_e64 s7, v227, v172
	v_cmp_le_i32_e64 s8, v231, v172
	.loc	1 668 21 is_stmt 0              ; attention.py:668:21
	s_and_b32 s36, vcc_lo, s70
	s_and_b32 s1, s1, vcc_hi
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s9, v229, v172
	v_cmp_le_i32_e64 s10, v232, v172
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s3, s3, s104
	s_and_b32 s6, s6, s85
	s_and_b32 s12, s12, s38
	s_and_b32 s14, s14, s37
	s_mov_b32 s69, s37
	s_and_not1_b32 s37, s70, exec_lo
	s_and_b32 s36, s36, exec_lo
	s_mov_b32 s2, s38
	s_and_not1_b32 s38, vcc_hi, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s11, v252, v172
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s7, s7, s44
	s_and_b32 s8, s8, s4
	s_or_b32 s70, s37, s36
	s_or_b32 vcc_hi, s38, s1
	s_and_not1_b32 s1, s104, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s36, s85, exec_lo
	s_and_b32 s6, s6, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s13, v223, v172
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s9, s9, s67
	s_and_b32 s10, s10, s47
	s_or_b32 s104, s1, s3
	s_or_b32 s85, s36, s6
	s_and_not1_b32 s1, s44, exec_lo
	s_and_b32 s3, s7, exec_lo
	s_and_not1_b32 s4, s4, exec_lo
	s_and_b32 s6, s8, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s15, v228, v172
	v_cmp_le_i32_e64 s16, v242, v172
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s11, s11, s5
	s_or_b32 s44, s1, s3
	s_or_b32 s4, s4, s6
	s_and_not1_b32 s1, s67, exec_lo
	s_and_b32 s3, s9, exec_lo
	s_and_not1_b32 s6, s47, exec_lo
	s_and_b32 s7, s10, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s17, v233, v172
	v_cmp_le_i32_e64 s18, v236, v172
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s13, s13, s0
	s_or_b32 s67, s1, s3
	s_or_b32 s47, s6, s7
	s_and_not1_b32 s1, s5, exec_lo
	s_and_b32 s3, s11, exec_lo
	s_and_not1_b32 s6, s2, exec_lo
	s_and_b32 s7, s12, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s19, v234, v172
	v_cmp_le_i32_e64 s20, v251, v172
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s15, s15, s62
	s_and_b32 s16, s16, s59
	s_or_b32 s5, s1, s3
	s_or_b32 s38, s6, s7
	s_and_not1_b32 s1, s0, exec_lo
	s_and_b32 s3, s13, exec_lo
	s_and_not1_b32 s6, s69, exec_lo
	s_and_b32 s7, s14, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s21, v235, v172
	v_cmp_le_i32_e64 s22, v237, v172
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s17, s17, s103
	s_and_b32 s18, s18, s87
	s_or_b32 s0, s1, s3
	s_or_b32 s37, s6, s7
	s_and_not1_b32 s1, s62, exec_lo
	s_and_b32 s3, s15, exec_lo
	s_and_not1_b32 s6, s59, exec_lo
	s_and_b32 s7, s16, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s23, v238, v172
	v_cmp_le_i32_e64 s24, v239, v172
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s19, s19, s101
	s_and_b32 s20, s20, s96
	s_or_b32 s62, s1, s3
	s_or_b32 s59, s6, s7
	s_and_not1_b32 s1, s103, exec_lo
	s_and_b32 s3, s17, exec_lo
	s_and_not1_b32 s6, s87, exec_lo
	s_and_b32 s7, s18, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s25, v240, v172
	v_cmp_le_i32_e64 s26, v241, v172
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s21, s21, s88
	s_and_b32 s22, s22, s93
	s_or_b32 s103, s1, s3
	s_or_b32 s87, s6, s7
	s_and_not1_b32 s1, s101, exec_lo
	s_and_b32 s3, s19, exec_lo
	s_and_not1_b32 s6, s96, exec_lo
	s_and_b32 s7, s20, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s27, v243, v172
	v_cmp_le_i32_e64 s28, v244, v172
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s23, s23, s58
	s_and_b32 s24, s24, s84
	s_or_b32 s101, s1, s3
	s_or_b32 s96, s6, s7
	s_and_not1_b32 s1, s88, exec_lo
	s_and_b32 s3, s21, exec_lo
	s_and_not1_b32 s6, s93, exec_lo
	s_and_b32 s7, s22, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s29, v249, v172
	v_cmp_le_i32_e64 s30, v245, v172
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s25, s25, s83
	s_and_b32 s26, s26, s86
	s_or_b32 s88, s1, s3
	s_or_b32 s93, s6, s7
	s_and_not1_b32 s1, s58, exec_lo
	s_and_b32 s3, s23, exec_lo
	s_and_not1_b32 s6, s84, exec_lo
	s_and_b32 s7, s24, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s31, v246, v172
	v_cmp_le_i32_e64 s33, v247, v172
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s27, s27, s82
	s_and_b32 s28, s28, s100
	s_or_b32 s58, s1, s3
	s_or_b32 s84, s6, s7
	s_and_not1_b32 s1, s83, exec_lo
	s_and_b32 s3, s25, exec_lo
	s_and_not1_b32 s6, s86, exec_lo
	s_and_b32 s7, s26, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s34, v248, v172
	v_cmp_le_i32_e64 s35, v250, v172
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s29, s29, s98
	s_and_b32 s30, s30, s81
	s_or_b32 s83, s1, s3
	s_or_b32 s86, s6, s7
	s_and_not1_b32 s1, s82, exec_lo
	s_and_b32 s3, s27, exec_lo
	s_and_not1_b32 s6, s100, exec_lo
	s_and_b32 s7, s28, exec_lo
	s_and_b32 s31, s31, s64
	s_and_b32 s33, s33, s80
	s_or_b32 s82, s1, s3
	s_or_b32 s100, s6, s7
	s_and_not1_b32 s1, s98, exec_lo
	s_and_b32 s3, s29, exec_lo
	s_and_not1_b32 s6, s81, exec_lo
	s_and_b32 s7, s30, exec_lo
	s_and_b32 s34, s34, s63
	s_and_b32 s35, s35, s97
	s_or_b32 s98, s1, s3
	s_or_b32 s81, s6, s7
	s_and_not1_b32 s1, s64, exec_lo
	s_and_b32 s3, s31, exec_lo
	s_and_not1_b32 s6, s80, exec_lo
	s_and_b32 s7, s33, exec_lo
	s_or_b32 s64, s1, s3
	s_or_b32 s80, s6, s7
	s_and_not1_b32 s1, s63, exec_lo
	s_and_b32 s3, s34, exec_lo
	s_and_not1_b32 s6, s97, exec_lo
	s_and_b32 s7, s35, exec_lo
	s_or_b32 s63, s1, s3
	s_or_b32 s97, s6, s7
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention.py:0
	s_clause 0x1f
	buffer_load_u16 v215, v66, s[48:51], 0 offen
	buffer_load_u16 v72, v67, s[48:51], 0 offen
	buffer_load_u16 v76, v69, s[48:51], 0 offen
	buffer_load_u16 v74, v70, s[48:51], 0 offen
	buffer_load_u16 v221, v71, s[48:51], 0 offen
	buffer_load_u16 v70, v73, s[48:51], 0 offen
	buffer_load_u16 v71, v75, s[48:51], 0 offen
	buffer_load_u16 v73, v77, s[48:51], 0 offen
	buffer_load_u16 v219, v78, s[48:51], 0 offen
	buffer_load_u16 v216, v79, s[48:51], 0 offen
	buffer_load_u16 v218, v82, s[48:51], 0 offen
	buffer_load_u16 v220, v83, s[48:51], 0 offen
	buffer_load_u16 v88, v84, s[48:51], 0 offen
	buffer_load_u16 v89, v85, s[48:51], 0 offen
	buffer_load_u16 v214, v86, s[48:51], 0 offen
	buffer_load_u16 v217, v81, s[48:51], 0 offen
	buffer_load_u16 v85, v146, s[48:51], 0 offen
	buffer_load_u16 v81, v176, s[48:51], 0 offen
	buffer_load_u16 v84, v178, s[48:51], 0 offen
	buffer_load_u16 v86, v179, s[48:51], 0 offen
	buffer_load_u16 v83, v180, s[48:51], 0 offen
	buffer_load_u16 v78, v181, s[48:51], 0 offen
	buffer_load_u16 v79, v183, s[48:51], 0 offen
	buffer_load_u16 v82, v184, s[48:51], 0 offen
	buffer_load_u16 v75, v186, s[48:51], 0 offen
	buffer_load_u16 v67, v187, s[48:51], 0 offen
	buffer_load_u16 v66, v188, s[48:51], 0 offen
	buffer_load_u16 v69, v189, s[48:51], 0 offen
	buffer_load_u16 v87, v87, s[48:51], 0 offen
	buffer_load_u16 v77, v80, s[48:51], 0 offen
	buffer_load_u16 v68, v68, s[48:51], 0 offen
	buffer_load_u16 v80, v182, s[48:51], 0 offen
	.loc	1 669 17 is_stmt 1              ; attention.py:669:17
	v_readlane_b32 s1, v254, 0
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s2, v252, v202
	s_mov_b32 s66, s0
	s_mov_b32 s0, s70
	s_mov_b64 s[68:69], s[76:77]
	s_mov_b32 s75, s37
	v_writelane_b32 v254, s2, 24
	v_cmp_ge_i32_e64 s2, v251, v202
	s_mov_b64 s[70:71], s[78:79]
	v_cmp_ge_i32_e32 vcc_lo, v253, v202
	v_cmp_ge_i32_e64 s6, v225, v202
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s36, v253, v203
	.loc	1 670 30                        ; attention.py:670:30
	v_writelane_b32 v254, s2, 25
	s_mov_b32 s95, s39
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s39, v225, v203
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s33, v247, v202
	v_cmp_ge_i32_e64 s35, v250, v202
	v_writelane_b32 v254, s53, 26
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s36, vcc_lo, s36
	s_and_b32 s39, s6, s39
	.loc	1 671 30 is_stmt 0              ; attention.py:671:30
	v_cmp_le_i32_e64 s6, v247, v203
	v_cmp_le_i32_e32 vcc_lo, v250, v203
	v_writelane_b32 v254, s48, 27
	v_cmp_le_i32_e64 s11, v252, v203
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v226, v202
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s6, s33, s6
	s_and_b32 s33, s35, vcc_lo
	v_writelane_b32 v254, s49, 28
	.loc	1 671 30 is_stmt 0              ; attention.py:671:30
	v_cmp_le_i32_e64 s37, v226, v203
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s3, v230, v202
	s_mov_b32 s53, s38
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s38, v230, v203
	v_writelane_b32 v254, s50, 29
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s7, v227, v202
	v_cmp_ge_i32_e64 s8, v231, v202
	v_cmp_ge_i32_e64 s24, v239, v202
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s40, v227, v203
	v_writelane_b32 v254, s51, 30
	s_mov_b32 s90, s101
	s_mov_b32 s101, s41
	v_cmp_le_i32_e64 s41, v231, v203
	s_mov_b32 s34, s57
	v_writelane_b32 v254, s68, 31
	v_writelane_b32 v255, s69, 0
	v_cmp_le_i32_e64 s20, v251, v203
	v_cmp_le_i32_e64 s57, v239, v203
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s37
	v_readlane_b32 s35, v254, 24
	v_writelane_b32 v255, s70, 1
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s9, v229, v202
	v_cmp_ge_i32_e64 s10, v232, v202
	v_cmp_ge_i32_e64 s13, v223, v202
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s11, s35, s11
	v_writelane_b32 v255, s71, 2
	v_readlane_b32 s35, v254, 25
	s_mov_b32 s65, s42
	.loc	1 671 30 is_stmt 0              ; attention.py:671:30
	v_cmp_le_i32_e64 s42, v229, v203
	s_mov_b32 s102, s43
	v_writelane_b32 v255, s72, 3
	v_cmp_le_i32_e64 s43, v232, v203
	v_cmp_le_i32_e64 s46, v223, v203
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s38, s3, s38
	s_and_b32 s36, s36, s0
	v_writelane_b32 v255, s73, 4
	s_and_b32 s1, s1, vcc_hi
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s12, v222, v202
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s45, v222, v203
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s37, s38, s104
	v_writelane_b32 v255, s74, 5
	s_and_b32 s7, s7, s40
	s_and_b32 s8, s8, s41
	s_and_b32 s24, s24, s57
	s_and_b32 s20, s35, s20
	v_writelane_b32 v255, s75, 6
	s_mov_b32 s57, s34
	s_and_not1_b32 s34, s0, exec_lo
	s_and_b32 s35, s36, exec_lo
	s_and_not1_b32 s36, vcc_hi, exec_lo
	v_writelane_b32 v255, s72, 7
	s_and_b32 s1, s1, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s14, v224, v202
	s_mov_b32 s91, s47
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s47, v224, v203
	v_writelane_b32 v255, s73, 8
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s10, s10, s43
	s_and_b32 s9, s9, s42
	s_and_b32 s7, s7, s44
	s_and_b32 s8, s8, s4
	s_and_b32 s13, s13, s46
	s_or_b32 s46, s34, s35
	s_or_b32 vcc_hi, s36, s1
	s_and_not1_b32 s1, s104, exec_lo
	s_and_b32 s34, s37, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s15, v228, v202
	v_cmp_ge_i32_e64 s16, v242, v202
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s48, v228, v203
	v_cmp_le_i32_e64 s49, v242, v203
	v_writelane_b32 v255, s74, 9
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s9, s9, s67
	s_and_b32 s10, s10, s91
	s_and_b32 s12, s12, s45
	s_or_b32 s104, s1, s34
	s_and_not1_b32 s1, s44, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_not1_b32 s4, s4, exec_lo
	s_and_b32 s8, s8, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s17, v233, v202
	v_cmp_ge_i32_e64 s18, v236, v202
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s50, v233, v203
	v_cmp_le_i32_e64 s51, v236, v203
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s14, s14, s47
	s_and_b32 s12, s12, s53
	s_and_b32 s11, s11, s5
	s_or_b32 s44, s1, s7
	s_or_b32 s4, s4, s8
	s_and_not1_b32 s1, s67, exec_lo
	s_and_b32 s7, s9, exec_lo
	s_and_not1_b32 s8, s91, exec_lo
	s_and_b32 s9, s10, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s19, v234, v202
	s_mov_b32 s69, s93
	s_mov_b32 s93, s52
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s52, v234, v203
	v_writelane_b32 v255, s75, 10
	s_mov_b32 s72, s59
	s_mov_b32 s73, s62
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s38, s39, s85
	s_and_b32 s13, s13, s66
	s_and_b32 s15, s15, s48
	s_and_b32 s14, s14, s75
	s_and_b32 s16, s16, s49
	s_or_b32 s67, s1, s7
	s_or_b32 s47, s8, s9
	s_and_not1_b32 s1, s5, exec_lo
	s_and_b32 s7, s11, exec_lo
	s_and_not1_b32 s8, s53, exec_lo
	s_and_b32 s9, s12, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s21, v235, v202
	v_cmp_ge_i32_e64 s22, v237, v202
	v_cmp_ge_i32_e64 s26, v241, v202
	v_cmp_ge_i32_e64 s29, v249, v202
	s_mov_b32 s71, s86
	s_mov_b32 s86, s54
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s54, v235, v203
	s_mov_b32 s70, s84
	s_mov_b32 s84, s55
	v_cmp_le_i32_e64 s55, v237, v203
	v_cmp_le_i32_e64 s59, v241, v203
	v_cmp_le_i32_e64 s62, v249, v203
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s15, s15, s73
	s_and_b32 s18, s18, s51
	s_and_b32 s17, s17, s50
	s_and_b32 s16, s16, s72
	s_and_b32 s36, s38, exec_lo
	s_or_b32 s5, s1, s7
	s_or_b32 s38, s8, s9
	s_and_not1_b32 s1, s66, exec_lo
	s_and_b32 s7, s13, exec_lo
	s_and_not1_b32 s8, s75, exec_lo
	s_and_b32 s9, s14, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s23, v238, v202
	s_mov_b32 s74, s56
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s56, v238, v203
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s19, s19, s52
	s_and_b32 s17, s17, s103
	s_and_b32 s18, s18, s87
	s_or_b32 s0, s1, s7
	s_or_b32 s37, s8, s9
	s_and_not1_b32 s1, s73, exec_lo
	s_and_b32 s7, s15, exec_lo
	s_and_not1_b32 s8, s72, exec_lo
	s_and_b32 s9, s16, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s25, v240, v202
	s_mov_b32 s94, s58
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s58, v240, v203
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s19, s19, s90
	s_and_b32 s21, s21, s54
	s_and_b32 s22, s22, s55
	s_and_b32 s26, s26, s59
	s_and_b32 s29, s29, s62
	s_and_b32 s20, s20, s96
	s_or_b32 s62, s1, s7
	s_or_b32 s59, s8, s9
	s_and_not1_b32 s1, s103, exec_lo
	s_and_b32 s7, s17, exec_lo
	s_and_not1_b32 s8, s87, exec_lo
	s_and_b32 s9, s18, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s27, v243, v202
	v_cmp_ge_i32_e64 s28, v244, v202
	v_cmp_ge_i32_e64 s30, v245, v202
	v_cmp_ge_i32_e64 s31, v246, v202
	s_mov_b32 s68, s60
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s60, v243, v203
	v_cmp_le_i32_e64 s61, v244, v203
	s_mov_b32 s2, s63
	v_cmp_le_i32_e64 s63, v245, v203
	s_mov_b32 s77, s64
	v_cmp_le_i32_e64 s64, v246, v203
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s23, s23, s56
	s_and_b32 s21, s21, s88
	s_and_b32 s22, s22, s69
	s_or_b32 s103, s1, s7
	s_or_b32 s87, s8, s9
	s_and_not1_b32 s1, s90, exec_lo
	s_and_b32 s7, s19, exec_lo
	s_and_not1_b32 s8, s96, exec_lo
	s_and_b32 s9, s20, exec_lo
	s_mov_b32 s41, s101
	s_and_b32 s23, s23, s94
	s_and_b32 s24, s24, s70
	s_and_b32 s25, s25, s58
	s_or_b32 s101, s1, s7
	s_or_b32 s96, s8, s9
	s_and_not1_b32 s1, s88, exec_lo
	s_and_b32 s7, s21, exec_lo
	s_and_not1_b32 s8, s69, exec_lo
	s_and_b32 s9, s22, exec_lo
	v_readlane_b32 s88, v254, 1
	s_mov_b32 s76, s100
	s_mov_b32 s100, s83
	s_mov_b32 s52, s93
	s_and_b32 s28, s28, s61
	s_and_b32 s27, s27, s60
	s_and_b32 s25, s25, s83
	s_and_b32 s26, s26, s71
	s_and_b32 s30, s30, s63
	s_and_b32 s31, s31, s64
	s_or_b32 s88, s1, s7
	s_or_b32 s93, s8, s9
	s_and_not1_b32 s1, s94, exec_lo
	s_and_b32 s7, s23, exec_lo
	s_and_not1_b32 s8, s70, exec_lo
	s_and_b32 s9, s24, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s99, v248, v202
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v248, v203
	s_mov_b32 s42, s65
	s_mov_b32 s55, s84
	s_mov_b32 s60, s68
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s27, s27, s82
	s_mov_b32 s68, s82
	s_and_b32 s28, s28, s76
	s_mov_b32 s65, s76
	s_and_b32 s30, s30, s81
	s_mov_b32 s64, s81
	s_and_b32 s31, s31, s77
	s_mov_b32 s40, s77
	s_and_b32 s6, s6, s80
	s_mov_b32 s63, s80
	v_readlane_b32 s76, v254, 31
	s_or_b32 s58, s1, s7
	s_or_b32 s84, s8, s9
	s_and_not1_b32 s1, s100, exec_lo
	s_and_b32 s7, s25, exec_lo
	s_and_not1_b32 s8, s71, exec_lo
	s_and_b32 s9, s26, exec_lo
	v_readlane_b32 s83, v255, 6
	s_mov_b32 s54, s86
	s_and_b32 s29, s29, s98
	s_or_b32 s83, s1, s7
	s_or_b32 s86, s8, s9
	s_and_not1_b32 s1, s68, exec_lo
	s_and_b32 s7, s27, exec_lo
	s_and_not1_b32 s8, s65, exec_lo
	s_and_b32 s9, s28, exec_lo
	v_readlane_b32 s82, v255, 5
	s_and_b32 s3, s99, s3
	s_or_b32 s82, s1, s7
	s_or_b32 s100, s8, s9
	s_and_not1_b32 s1, s98, exec_lo
	s_and_b32 s7, s29, exec_lo
	s_and_not1_b32 s8, s64, exec_lo
	s_and_b32 s9, s30, exec_lo
	v_readlane_b32 s81, v255, 4
	s_mov_b32 s56, s74
	s_and_b32 s3, s3, s2
	s_and_b32 s33, s33, s97
	v_readlane_b32 s48, v254, 27
	v_readlane_b32 s72, v255, 7
	s_or_b32 s98, s1, s7
	s_or_b32 s81, s8, s9
	s_and_not1_b32 s1, s40, exec_lo
	s_and_b32 s7, s31, exec_lo
	s_and_not1_b32 s8, s63, exec_lo
	s_and_b32 s6, s6, exec_lo
	v_readlane_b32 s77, v255, 0
	v_readlane_b32 s78, v255, 1
	v_readlane_b32 s79, v255, 2
	v_readlane_b32 s80, v255, 3
	v_readlane_b32 s53, v254, 26
	v_readlane_b32 s91, v254, 4
	v_readlane_b32 s49, v254, 28
	v_readlane_b32 s50, v254, 29
	v_readlane_b32 s51, v254, 30
	v_readlane_b32 s73, v255, 8
	s_mov_b32 s70, s46
	v_readlane_b32 s46, v254, 23
	v_readlane_b32 s94, v254, 22
	v_readlane_b32 s71, v254, 21
	s_and_not1_b32 s35, s85, exec_lo
	s_or_b32 s64, s1, s7
	s_or_b32 s80, s8, s6
	s_and_not1_b32 s1, s2, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s6, s97, exec_lo
	s_and_b32 s7, s33, exec_lo
	s_mov_b32 s39, s95
	s_mov_b32 s43, s102
	s_mov_b32 s61, 0x76543210
	s_or_b32 s85, s35, s36
	s_or_b32 s63, s1, s3
	s_or_b32 s97, s6, s7
	v_readlane_b32 s89, v254, 2
	v_readlane_b32 s90, v254, 3
	v_readlane_b32 s74, v255, 9
	v_readlane_b32 s75, v255, 10
	s_branch .LBB0_6
.LBB0_11:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	scratch_load_b32 v54, off, off          ; 4-byte Folded Reload
	v_readlane_b32 s36, v254, 5
	v_readlane_b32 s37, v254, 6
	v_readlane_b32 s38, v254, 7
	v_readlane_b32 s39, v254, 8
.LBB0_12:                               ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_div_scale_f32 v0, null, v33, v33, v25
	v_div_scale_f32 v34, null, v33, v33, v26
	v_div_scale_f32 v35, null, v33, v33, v27
	v_rcp_f32_e32 v36, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v25, v33, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v33, v26
	v_div_scale_f32 v43, null, v33, v33, v28
	v_div_scale_f32 v49, s3, v28, v33, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 848 17                        ; attention.py:848:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s37, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v44, -v35, v38, 1.0
	s_mov_b32 s39, 0x31027000
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_rcp_f32_e32 v42, v43
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v41, s1, v27, v33, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s6, s46, v141
	v_cmp_gt_i32_e64 s7, s46, v140
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v43, v42, 1.0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s8, s46, v139
	v_cmp_gt_i32_e64 s9, s46, v138
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v33, v33, v29
	v_fmac_f32_e32 v42, v50, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v0, v44, v39
	v_fma_f32 v34, -v34, v45, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v33, v33, v30
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v36, v49, v42
	v_div_fmas_f32 v34, v34, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v33, v25
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v25, v34, v33, v26
	v_div_scale_f32 v34, s4, v29, v33, v29
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v33, v33, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v33, v33, v31
	v_fma_f32 v51, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v48, v45
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v33
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s10, s46, v137
	v_cmp_gt_i32_e64 s11, s46, v136
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v46, v51, v38
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s12, s46, v135
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s13, s46, v134
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v26, -v35, v46, v41
	v_mul_f32_e32 v41, v34, v39
	v_fma_f32 v35, -v40, v44, 1.0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s14, s46, v133
	v_cmp_gt_i32_e64 s15, s46, v132
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v26, v26, v38, v46
	v_fma_f32 v38, -v43, v36, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s1, v30, v33, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v26, v26, v33, v27
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s4
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s16, s46, v131
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_div_fixup_f32 v27, v36, v33, v28
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v33, v33, v17
	v_div_scale_f32 v36, s3, v31, v33, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v47, v41, v34
	v_rcp_f32_e32 v49, v38
	v_fmac_f32_e32 v44, v35, v44
	v_rcp_f32_e32 v35, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s17, s46, v130
	v_cmp_gt_i32_e64 s18, s46, v129
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v42, v43, v44
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s19, s46, v128
	v_cmp_gt_i32_e64 s20, s46, v127
	v_cmp_gt_i32_e64 s21, s46, v126
	v_cmp_gt_i32_e64 s22, s46, v125
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v28, -v40, v42, v43
	v_fma_f32 v46, -v37, v35, 1.0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s23, s46, v124
	v_cmp_gt_i32_e64 s24, s46, v123
	v_cmp_gt_i32_e64 s25, s46, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v42, v28, v44 :: v_dual_fmac_f32 v35, v46, v35
	v_fma_f32 v46, -v45, v48, 1.0
	v_div_fmas_f32 v28, v34, v39, v41
	v_fma_f32 v41, -v38, v49, 1.0
	v_fma_f32 v34, -v40, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v47, v36, v35 :: v_dual_fmac_f32 v48, v46, v48
	v_div_scale_f32 v46, s5, v32, v33, v32
	v_div_scale_f32 v43, null, v33, v33, v18
	v_fma_f32 v39, -v37, v47, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v17, v33, v17
	v_div_fixup_f32 v28, v28, v33, v29
	v_div_fixup_f32 v29, v34, v33, v30
	v_fma_f32 v30, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v33, v33, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v30, v30, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v33, v33, v20
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v18, v33, v18
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v30, v30, v33, v31
	v_div_fixup_f32 v31, v35, v33, v32
	v_fma_f32 v32, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s4, v19, v33, v19
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v33, v33, v21
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v32, v32, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v20, v33, v20
	v_div_scale_f32 v47, null, v33, v33, v22
	v_div_fixup_f32 v17, v32, v33, v17
	v_fma_f32 v32, -v43, v42, v44
	v_fma_f32 v43, -v37, v34, v38
	v_mul_f32_e32 v44, v41, v40
	v_rcp_f32_e32 v48, v47
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v35, 1.0
	v_div_fmas_f32 v32, v32, v39, v42
	v_fmac_f32_e32 v34, v43, v36
	v_fma_f32 v39, -v45, v44, v41
	v_div_scale_f32 v42, s3, v21, v33, v21
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v18, v32, v33, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v32, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v33, v33, v23
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s5, v22, v33, v22
	v_div_fmas_f32 v32, v32, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v33, v33, v24
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v19, v32, v33, v19
	v_div_fixup_f32 v20, v34, v33, v20
	v_fma_f32 v32, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v23, v33, v23
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v33, v33, v9
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v24, v33, v24
	v_div_scale_f32 v46, null, v33, v33, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v22, v35, v33, v22
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v33, v33, v11
	v_div_fixup_f32 v21, v32, v33, v21
	v_fma_f32 v32, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v46, v35, 1.0
	v_fmac_f32_e32 v44, v32, v36
	v_div_fmas_f32 v34, v34, v41, v37
	v_div_scale_f32 v41, s1, v10, v33, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v37, -v45, v44, v40
	v_div_scale_f32 v32, s4, v9, v33, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v33, v33, v12
	v_dual_mul_f32 v49, v41, v35 :: v_dual_mul_f32 v40, v32, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s5, v11, v33, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v32
	v_div_fixup_f32 v23, v34, v33, v23
	v_div_fixup_f32 v24, v36, v33, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v33, v33, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v32, -v38, v40, v32
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v33, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v33, v33, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v33, v13
	v_div_fixup_f32 v9, v32, v33, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v33, v10
	v_mul_f32_e32 v32, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v33, v11
	v_fma_f32 v43, -v37, v32, v41
	v_div_scale_f32 v38, null, v33, v33, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v33, v14
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v32, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v33, v12
	v_fma_f32 v36, -v37, v32, v41
	v_div_scale_f32 v43, null, v33, v33, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v32, v36, v34, v32
	v_div_scale_f32 v34, null, v33, v33, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v33, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v33, v33, v2
	v_div_fixup_f32 v13, v32, v33, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s3, v16, v33, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v33, v33, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v32, v45
	v_div_scale_f32 v48, s4, v1, v33, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v32
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v33, v2
	v_div_fixup_f32 v14, v35, v33, v14
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v43, v42, v32
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v33, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v33, v33, v4
	v_div_fmas_f32 v32, v32, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v33, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v16, v32, v33, v16
	v_div_fixup_f32 v1, v34, v33, v1
	v_div_scale_f32 v34, null, v33, v33, v5
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v33, v33, v8
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v32, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v2, v37, v33, v2
	v_div_fmas_f32 v32, v32, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v33, v33, v6
	v_div_scale_f32 v37, null, v33, v33, v7
	v_div_scale_f32 v38, vcc_lo, v4, v33, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v32, v33, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v32, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v36, v32, v36
	v_div_scale_f32 v32, s1, v5, v33, v5
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v49, v32, v36 :: v_dual_fmac_f32 v46, v50, v46
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v33, v6
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v33, v7
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v32
	v_div_scale_f32 v50, s5, v8, v33, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	v_fmac_f32_e32 v49, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fma_f32 v47, -v37, v52, v48
	v_fma_f32 v32, -v34, v49, v32
	v_fma_f32 v34, -v44, v53, v50
	v_div_fmas_f32 v38, v38, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v51, v40, v39 :: v_dual_fmac_f32 v52, v47, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v53, v34, v46
	v_div_fmas_f32 v32, v32, v36, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v44, v53, v50
	v_div_fixup_f32 v5, v32, v33, v5
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v32, v54, s46
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s46, v144
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v36, v46, v53
	v_div_fixup_f32 v4, v38, v33, v4
	v_div_fixup_f32 v6, v35, v33, v6
	v_div_fixup_f32 v7, v34, v33, v7
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s46, v145
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v36, v33, v8
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v33, v32, v144, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s4, s46, v143
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v34, v32, v145, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s94, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v35, v32, v143, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s94, s3
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s5, s46, v142
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s94, s4
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v0, v33, s[36:39], 0 offen
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	v_add_lshl_u32 v0, v32, v142, 2
	s_clause 0x1
	buffer_store_b32 v25, v34, s[36:39], 0 offen
	buffer_store_b32 v26, v35, s[36:39], 0 offen
	v_add_lshl_u32 v25, v32, v141, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s5
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v26, v32, v140, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s6
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v33, v32, v139, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s7
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v27, v0, s[36:39], 0 offen
	buffer_store_b32 v28, v25, s[36:39], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s8
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v0, v32, v138, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	v_add_lshl_u32 v25, v32, v137, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s9
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v29, v26, s[36:39], 0 offen
	buffer_store_b32 v30, v33, s[36:39], 0 offen
	v_add_lshl_u32 v26, v32, v136, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s10
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v27, v32, v135, 2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s11
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s12
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	s_clause 0x1
	buffer_store_b32 v31, v0, s[36:39], 0 offen
	buffer_store_b32 v17, v25, s[36:39], 0 offen
	v_add_lshl_u32 v0, v32, v134, 2
	v_add_lshl_u32 v17, v32, v133, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s13
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v18, v26, s[36:39], 0 offen
	buffer_store_b32 v19, v27, s[36:39], 0 offen
	v_add_lshl_u32 v18, v32, v132, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s14
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v19, v32, v131, 2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s15
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s16
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v20, v0, s[36:39], 0 offen
	buffer_store_b32 v21, v17, s[36:39], 0 offen
	v_add_lshl_u32 v0, v32, v130, 2
	v_add_lshl_u32 v17, v32, v129, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s17
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v22, v18, s[36:39], 0 offen
	buffer_store_b32 v23, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v32, v128, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s18
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v19, v32, v127, 2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s19
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s20
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v24, v0, s[36:39], 0 offen
	buffer_store_b32 v9, v17, s[36:39], 0 offen
	v_add_lshl_u32 v0, v32, v126, 2
	v_add_lshl_u32 v9, v32, v125, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s21
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v10, v18, s[36:39], 0 offen
	buffer_store_b32 v11, v19, s[36:39], 0 offen
	v_add_lshl_u32 v10, v32, v124, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s22
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v11, v32, v123, 2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s23
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s24
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s26, s46, v121
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_clause 0x1
	buffer_store_b32 v12, v0, s[36:39], 0 offen
	buffer_store_b32 v13, v9, s[36:39], 0 offen
	v_add_lshl_u32 v0, v32, v122, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s27, s46, v120
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v9, v32, v121, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s25
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s28, s46, v119
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v14, v10, s[36:39], 0 offen
	buffer_store_b32 v15, v11, s[36:39], 0 offen
	v_add_lshl_u32 v10, v32, v120, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s26
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v11, v32, v119, 2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s27
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s28
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s29, s46, v117
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s30, s46, v118
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v16, v0, s[36:39], 0 offen
	buffer_store_b32 v1, v9, s[36:39], 0 offen
	v_add_lshl_u32 v0, v32, v117, 2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s0, s46, v116
	v_cmp_gt_i32_e32 vcc_lo, s46, v115
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v1, v32, v118, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s46, v114
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v2, v10, s[36:39], 0 offen
	buffer_store_b32 v3, v11, s[36:39], 0 offen
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s29
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v2, v32, v116, 2
	v_add_lshl_u32 v3, v32, v115, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s94, s30
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v9, v32, v114, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s0, s94, s0
	s_and_b32 vcc_lo, s94, vcc_lo
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s94, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[36:39], 0 offen
	buffer_store_b32 v5, v1, s[36:39], 0 offen
	buffer_store_b32 v6, v2, s[36:39], 0 offen
	buffer_store_b32 v7, v3, s[36:39], 0 offen
	buffer_store_b32 v8, v9, s[36:39], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 8
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.private_seg_size, 8
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21452
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 8
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
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
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	687                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	691                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
.Ldebug_ranges2:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           1
        .value_kind:     by_value
      - .offset:         129
        .size:           1
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 8
    .sgpr_count:     107
    .sgpr_spill_count: 43
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 1
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
