	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s14, s[0:1], 0x80
	s_load_b32 s61, s[0:1], 0x5c
.Ltmp0:
	.loc	1 598 79 prologue_end           ; attention.py:598:79
	v_and_b32_e32 v4, 7, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x78
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s51, s2, 6
	.loc	1 598 79                        ; attention.py:598:79
	v_lshlrev_b32_e32 v1, 3, v4
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s2, s3, 11
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, s51, v2
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s50, s51, s2
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 571 21                        ; attention.py:571:21
	v_lshlrev_b32_e32 v97, 4, v0
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[89:90], null, s61, v2, v[1:2]
	s_mul_i32 s8, s61, s50
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s2, s61, v1
	.loc	1 598 26                        ; attention.py:598:26
	s_lshl_b32 s9, s61, 5
	s_mul_i32 s10, s61, 48
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 598 26                        ; attention.py:598:26
	v_add_nc_u32_e32 v3, s8, v89
	v_lshl_add_u32 v95, s61, 4, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v5, 1, v3
	v_add_lshl_u32 v6, v95, s8, 1
	v_add_lshl_u32 v7, v3, s9, 1
	v_add_lshl_u32 v3, v3, s10, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	v_cndmask_b32_e32 v9, 0x80000000, v6, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v13, 0x80000000, v7, vcc_lo
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	buffer_load_b128 v[13:16], v13, s[4:7], 0 offen
	buffer_load_b128 v[17:20], v3, s[4:7], 0 offen
	v_lshlrev_b32_e32 v3, 1, v0
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s51, s13
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s6, s51, s12
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s4, s14
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s6, s6, s14
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s4, 64
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v21, 0x70, v3
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s5, s5, 0x800
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s6, s6, 0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s5, s5, 31
	v_and_b32_e32 v96, 30, v3
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v21, v97, v21
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s7, s5, 31
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s62, s6, 0x7fffffe0
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s7, s7, 27
	s_mov_b32 s4, 0
	s_add_i32 s63, s5, s7
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v98, 0, v21
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s63, s63, 31
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v98, v[5:8]
	s_waitcnt vmcnt(2)
	ds_store_b128 v98, v[9:12] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v98, v[13:16] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v98, v[17:20] offset:6144
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s62, s63
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_and_b32_e32 v33, 30, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x38
	s_load_b32 s60, s[0:1], 0x60
	v_and_b32_e32 v92, 15, v0
	v_and_b32_e32 v94, 0x60, v0
	v_lshrrev_b32_e32 v93, 4, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_38
; %bb.4:                                ; %.lr.ph
	.loc	1 566 23 is_stmt 1              ; attention.py:566:23
	s_ashr_i32 s4, s3, 31
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s8, s4, 28
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v4, 4, v4
	s_add_i32 s15, s3, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, s51, v5
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s8, s15, -16
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v12, 1, v0
	s_sub_i32 s3, s3, s8
	s_clause 0x2
	s_load_b128 s[8:11], s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[38:39], s[0:1], 0x30
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s0, s3, 0x10007
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s1, s15, 4
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v16, 0x5410 :: v_dual_add_nc_u32 v7, s14, v6
	.loc	1 656 32                        ; attention.py:656:32
	s_lshl_b32 s14, s1, 14
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v6
	v_dual_mov_b32 v13, 0x6420 :: v_dual_lshlrev_b32 v6, 7, v92
	v_dual_mov_b32 v14, 0x7531 :: v_dual_and_b32 v99, 16, v97
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v8, 6, v94
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v15, 16, v0
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v115, s12, v7
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v116, s13, v7
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v100, 1, v99
	.loc	1 676 27                        ; attention.py:676:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s3, s10, s3
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s1, s9, s1
	v_mul_lo_u32 v5, s11, v5
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s66, s3, s1
	v_cmp_eq_u32_e64 s1, 0, v12
	v_cmp_eq_u32_e64 s3, 0, v15
	v_mov_b32_e32 v15, 0x7632
	.loc	1 599 26                        ; attention.py:599:26
	v_or3_b32 v7, v6, v8, v4
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v101, 2, v99
	v_cndmask_b32_e64 v13, 0x7531, v13, s1
	v_cndmask_b32_e64 v14, 0x6420, v14, s1
	v_or_b32_e32 v102, 3, v99
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v8, 0x70, v7, 0
	v_xad_u32 v10, 0x50, v7, 0
	v_lshl_or_b32 v13, v13, 8, v13
	v_lshl_or_b32 v14, v14, 8, v14
	v_xad_u32 v9, 0x60, v7, 0
	v_xad_u32 v11, v7, 64, 0
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v103, 4, v99
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v13, 0x750031, v13
	v_or_b32_e32 v104, 5, v99
	v_or_b32_e32 v105, 6, v99
	v_or_b32_e32 v106, 7, v99
	v_or_b32_e32 v107, 8, v99
	v_or_b32_e32 v108, 9, v99
	v_or_b32_e32 v109, 10, v99
	v_or_b32_e32 v110, 11, v99
	v_or_b32_e32 v111, 12, v99
	v_or_b32_e32 v112, 13, v99
	v_or_b32_e32 v113, 14, v99
	v_or_b32_e32 v114, 15, v99
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[37:40], v8
	ds_load_b128 v[33:36], v9
	v_xad_u32 v8, v7, 48, 0
	ds_load_b128 v[45:48], v10
	ds_load_b128 v[41:44], v11
	v_xad_u32 v10, v7, 16, 0
	v_lshl_or_b32 v13, v13, 4, v13
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v14, 0x750031, v14
	v_cndmask_b32_e64 v16, 0x1054, v16, s3
	v_cndmask_b32_e64 v15, 0x3276, v15, s3
	v_xad_u32 v9, v7, 32, 0
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v7, 0, v7
	ds_load_b128 v[53:56], v8
	ds_load_b128 v[49:52], v9
	ds_load_b128 v[61:64], v10
	ds_load_b128 v[57:60], v7
	v_dual_mov_b32 v151, 0xff800000 :: v_dual_add_nc_u32 v118, v5, v100
	v_dual_mov_b32 v152, 0xff800000 :: v_dual_add_nc_u32 v119, v5, v101
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_add_nc_u32 v120, v5, v102
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v121, v5, v103
	v_add_nc_u32_e32 v122, v5, v104
	v_add_nc_u32_e32 v123, v5, v105
	v_add_nc_u32_e32 v124, v5, v106
	v_add_nc_u32_e32 v125, v5, v107
	v_add_nc_u32_e32 v126, v5, v108
	v_add_nc_u32_e32 v127, v5, v109
	v_add_nc_u32_e32 v128, v5, v110
	v_add_nc_u32_e32 v129, v5, v111
	v_add_nc_u32_e32 v130, v5, v112
	v_add_nc_u32_e32 v131, v5, v113
	v_add_nc_u32_e32 v132, v5, v114
	v_add_nc_u32_e32 v133, v5, v99
	v_dual_mov_b32 v17, v25 :: v_dual_and_b32 v134, 0x7050301, v13
	v_lshl_or_b32 v5, v14, 4, v14
	v_lshl_or_b32 v13, v16, 8, v16
	v_lshl_or_b32 v14, v15, 8, v15
	v_or_b32_e32 v117, v4, v6
	v_and_or_b32 v15, v93, 1, v96
	v_dual_mov_b32 v19, v25 :: v_dual_lshlrev_b32 v12, 6, v12
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v135, 0x7050301, v5
	v_dual_mov_b32 v18, v25 :: v_dual_and_b32 v5, 0x540054, v13
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v13, 0x760076, v14
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s0, s0, 0x80000
	v_xor_b32_e32 v4, 16, v117
	v_xor_b32_e32 v6, 32, v117
	v_xor_b32_e32 v7, 48, v117
	v_xor_b32_e32 v8, 64, v117
	v_xor_b32_e32 v9, 0x50, v117
	v_xor_b32_e32 v10, 0x60, v117
	v_xor_b32_e32 v11, 0x70, v117
	v_dual_mov_b32 v21, v25 :: v_dual_lshlrev_b32 v136, 2, v15
	v_and_or_b32 v137, v3, 60, v12
	v_lshl_or_b32 v3, v5, 4, v5
	v_lshl_or_b32 v5, v13, 4, v13
	s_sext_i32_i16 s0, s0
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[90:91], null, s60, v2, v[1:2]
	.loc	1 656 32                        ; attention.py:656:32
	s_lshl_b32 s0, s0, 10
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v91, 0x5040504, v3
	s_and_b32 s64, s0, 0xfffff800
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s60, v1
	v_dual_mov_b32 v23, v25 :: v_dual_and_b32 v138, 0x7060706, v5
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v139, 0, v4
	v_add_nc_u32_e32 v140, 0, v6
	v_add_nc_u32_e32 v141, 0, v7
	v_add_nc_u32_e32 v142, 0, v8
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v143, 0, v9
	v_dual_mov_b32 v13, v25 :: v_dual_add_nc_u32 v144, 0, v10
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v145, 0, v11
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
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
	v_xor_b32_e32 v146, 4, v136
	v_xor_b32_e32 v147, 64, v137
	v_lshl_add_u32 v148, v92, 1, 0
	v_mov_b32_e32 v150, v25
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s65, s8, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s8, s11, s51
	.loc	1 599 26                        ; attention.py:599:26
	s_mov_b32 s40, 0
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 656 32                        ; attention.py:656:32
	s_add_i32 s64, s64, s14
	s_add_i32 s66, s66, s8
	s_lshl_b32 s67, s60, 4
	s_and_b32 s57, s7, 0xffff
	s_mov_b32 s52, s4
	s_mov_b32 s53, s5
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s68, 0x76543210
	s_mov_b32 s56, s6
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 32 is_stmt 0                ; attention.py:0:32
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_waitcnt vmcnt(0)
	v_and_b16 v86.l, 0xff, v86.l
	v_and_b16 v86.h, 0xff, v86.h
	v_and_b16 v82.l, 0xff, v82.l
	v_and_b16 v81.l, 0xff, v81.l
	v_and_b16 v85.l, 0xff, v85.l
	v_and_b16 v84.l, 0xff, v84.l
	v_and_b16 v83.l, 0xff, v83.l
	v_and_b16 v81.h, 0xff, v81.h
	v_and_b16 v82.h, 0xff, v82.h
	v_cmp_ne_u16_e64 s7, 0, v82.l
	v_cmp_ne_u16_e64 s13, 0, v86.h
	v_cmp_ne_u16_e64 s16, 0, v86.l
	v_and_b16 v88.h, 0xff, v88.h
	v_and_b16 v83.h, 0xff, v83.h
	v_and_b16 v88.l, 0xff, v88.l
	v_cmp_ne_u16_e64 s5, 0, v81.l
	v_and_b16 v87.l, 0xff, v87.l
	v_and_b16 v85.h, 0xff, v85.h
	v_and_b16 v84.h, 0xff, v84.h
	v_cmp_ne_u16_e64 s4, 0, v81.h
	v_cmp_ne_u16_e64 s6, 0, v82.h
	v_cmp_ne_u16_e64 s17, 0, v83.l
	v_cmp_ne_u16_e64 s21, 0, v84.l
	v_cmp_ne_u16_e64 s11, 0, v85.l
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	s_and_b32 s15, s15, s7
	s_and_b32 s13, s31, s13
	s_and_b32 s16, s33, s16
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v87.h, 0xff, v87.h
	v_cmp_ne_u16_e64 s14, 0, v83.h
	v_cmp_ne_u16_e64 s26, 0, v88.h
	v_cmp_ne_u16_e64 s27, 0, v88.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v81, 0, 1, s15
	v_cndmask_b32_e64 v88, 0, 1, s13
	v_cndmask_b32_e64 v83, 0, 1, s16
	s_and_b32 s10, s10, s5
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s19, 0, v84.h
	v_cmp_ne_u16_e64 s9, 0, v85.h
	v_cmp_ne_u16_e64 s25, 0, v87.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s8, s8, s4
	s_and_b32 s12, s12, s6
	s_and_b32 s11, s30, s11
	s_and_b32 s20, s20, s17
	s_and_b32 s24, s24, s21
	v_cndmask_b32_e64 v82, 0, 1, s10
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s23, 0, v87.h
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v85, 0, 1, s8
	v_cndmask_b32_e64 v84, 0, 1, s12
	v_cndmask_b32_e64 v87, 0, 1, s11
	v_cndmask_b32_e64 v154, 0, 1, s20
	v_cndmask_b32_e64 v156, 0, 1, s24
	v_lshlrev_b16 v81.l, 8, v81.l
	v_lshlrev_b16 v82.h, 8, v83.l
	v_mov_b16_e32 v83.l, v88.l
	s_and_b32 s9, s29, s9
	s_and_b32 s18, s18, s14
	s_and_b32 s22, s22, s19
	s_and_b32 s21, s35, s25
	s_and_b32 s25, s37, s27
	v_cndmask_b32_e64 v86, 0, 1, s9
	v_cndmask_b32_e64 v153, 0, 1, s18
	v_cndmask_b32_e64 v155, 0, 1, s22
	v_cndmask_b32_e64 v160, 0, 1, s25
	v_lshlrev_b16 v81.h, 8, v82.l
	v_mov_b16_e32 v82.l, v85.l
	v_mov_b16_e32 v85.l, v87.l
	v_or_b16 v87.h, v84.l, v81.l
	v_mov_b16_e64 v81.l, v156.l
	v_or_b16 v88.h, v83.l, v82.h
	v_mov_b16_e64 v83.l, v154.l
	s_and_b32 s19, s34, s23
	s_and_b32 s23, s36, s26
	v_or_b16 v87.l, v82.l, v81.h
	v_cndmask_b32_e64 v159, 0, 1, s23
	v_lshlrev_b16 v81.h, 8, v85.l
	v_mov_b16_e32 v82.l, v86.l
	v_lshlrev_b16 v81.l, 8, v81.l
	v_mov_b16_e64 v84.l, v160.l
	v_mov_b16_e64 v85.l, v155.l
	v_lshlrev_b16 v82.h, 8, v83.l
	v_mov_b16_e64 v83.l, v153.l
	v_or_b16 v88.l, v82.l, v81.h
	v_lshlrev_b16 v83.h, 8, v84.l
	v_mov_b16_e64 v84.l, v159.l
	v_or_b16 v81.h, v85.l, v81.l
	v_or_b16 v81.l, v83.l, v82.h
	v_cndmask_b32_e64 v158, 0, 1, s21
	v_cndmask_b32_e64 v157, 0, 1, s19
	v_or_b16 v82.h, v84.l, v83.h
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_mul_f32_e32 v71, s65, v71
	.loc	1 681 25                        ; attention.py:681:25
	v_perm_b32 v83, v81, v87, v134
	v_perm_b32 v81, v81, v87, v135
	v_mov_b16_e64 v86.l, v158.l
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v85, s65, v72 :: v_dual_mul_f32 v72, s65, v73
	.loc	1 681 25                        ; attention.py:681:25
	ds_bpermute_b32 v83, v136, v83
	ds_bpermute_b32 v81, v146, v81
	v_lshlrev_b16 v84.h, 8, v86.l
	v_mov_b16_e64 v86.l, v157.l
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v73, s65, v74 :: v_dual_mul_f32 v74, s65, v77
	v_dual_mul_f32 v65, s65, v65 :: v_dual_mul_f32 v66, s65, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 681 25                        ; attention.py:681:25
	v_or_b16 v82.l, v86.l, v84.h
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v86, s65, v75 :: v_dual_mul_f32 v75, s65, v78
	v_mul_f32_e32 v80, s65, v80
	v_mul_f32_e32 v87, s65, v76
	.loc	1 681 25                        ; attention.py:681:25
	v_perm_b32 v84, v82, v88, v134
	v_perm_b32 v82, v82, v88, v135
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v88, s65, v79 :: v_dual_mul_f32 v69, s65, v69
	v_mul_f32_e32 v70, s65, v70
	.loc	1 681 25                        ; attention.py:681:25
	ds_bpermute_b32 v84, v136, v84
	ds_bpermute_b32 v82, v146, v82
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v149, v149, v149
	.loc	1 681 25                        ; attention.py:681:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v153, v81, v83, s3
	v_cndmask_b32_e64 v81, v83, v81, s3
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v67, s65, v67 :: v_dual_mul_f32 v68, s65, v68
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s37, 0xff800000, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v77, 1, v153
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s62, s62, 32
	.loc	1 681 25                        ; attention.py:681:25
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s62, s63
	.loc	1 681 25                        ; attention.py:681:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s26, 1, v77
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v157, 0xff800000, v65, s26
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v83, 1, v81
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v154, v82, v84, s3
	v_cndmask_b32_e64 v76, v84, v82, s3
	v_and_b32_e32 v84, 0x100, v81
	v_cmp_eq_u32_e64 s6, 1, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v79, 1, v154
	v_and_b32_e32 v82, 0x100, v154
	v_and_b32_e32 v155, 1, v76
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v83, 0xff800000, v72, s6
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v156, 0x100, v76
	v_cmp_eq_u32_e64 s14, 1, v79
	v_cmp_eq_u32_e64 s17, 0, v82
	v_cmp_eq_u32_e64 s7, 0, v84
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v72, v157, v83, s3
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u32_e64 s5, 1, v155
	v_cmp_eq_u32_e64 s4, 0, v156
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v69, 0xff800000, v69, s14
	v_cndmask_b32_e64 v82, v70, 0xff800000, s17
	ds_bpermute_b32 v160, v147, v72
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v78, 0x100, v153
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v84, v73, 0xff800000, s7
	v_cndmask_b32_e64 v155, 0xff800000, v74, s5
	v_cndmask_b32_e64 v156, v75, 0xff800000, s4
	v_cndmask_b32_e64 v70, v83, v157, s3
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u32_e64 s27, 0, v78
	v_and_b32_e32 v164, 0x10000, v76
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v75, v155, v69, s3
	v_cndmask_b32_e64 v77, v156, v82, s3
	v_cndmask_b32_e64 v78, v82, v156, s3
	v_cndmask_b32_e64 v158, v66, 0xff800000, s27
	v_mad_u64_u32 v[65:66], null, s28, s60, v[90:91]
	ds_bpermute_b32 v159, v137, v70
	ds_bpermute_b32 v162, v137, v75
	v_cndmask_b32_e64 v73, v84, v158, s3
	v_cndmask_b32_e64 v74, v158, v84, s3
	ds_bpermute_b32 v163, v137, v77
	ds_bpermute_b32 v165, v147, v78
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v72, 1, v65
	v_add_lshl_u32 v65, v65, s67, 1
	.loc	1 686 26                        ; attention.py:686:26
	ds_bpermute_b32 v70, v137, v73
	ds_bpermute_b32 v161, v147, v74
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v166, 0x1000000, v76
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v72, 0x80000000, v72, s0
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	s_clause 0x1
	buffer_load_b128 v[72:75], v72, s[56:59], 0 offen
	buffer_load_b128 v[76:79], v65, s[56:59], 0 offen
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v66, v69, v155, s3
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v65, 0x10000, v81
	v_cmp_eq_u32_e64 s28, 0, v164
	v_and_b32_e32 v164, 0x10000, v154
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v175, v160, v159, s1
	ds_bpermute_b32 v66, v147, v66
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u32_e64 s30, 0, v65
	v_and_b32_e32 v65, 0x10000, v153
	v_cmp_eq_u32_e64 s29, 0, v166
	v_cmp_eq_u32_e64 s31, 0, v164
	v_and_b32_e32 v153, 0x1000000, v153
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v86, v86, 0xff800000, s30
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u32_e64 s35, 0, v65
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v80, v80, 0xff800000, s29
	v_cndmask_b32_e64 v88, v88, 0xff800000, s28
	v_cndmask_b32_e64 v71, v71, 0xff800000, s31
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u32_e64 s36, 0, v153
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v164, v67, 0xff800000, s35
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v81, 0x1000000, v81
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v170, v161, v70, s1
	v_cndmask_b32_e64 v65, v71, v88, s3
	v_cndmask_b32_e64 v68, v68, 0xff800000, s36
	v_cndmask_b32_e64 v166, v86, v164, s3
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u32_e64 s34, 0, v81
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v167, v164, v86, s3
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v171, v66, v162, s1
	v_cndmask_b32_e64 v162, v162, v66, s1
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v159, v159
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v159, v159, v160, s1
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v154, 0x1000000, v154
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v81, v87, 0xff800000, s34
	v_cndmask_b32_e64 v87, v88, v71, s3
	ds_bpermute_b32 v153, v137, v166
	ds_bpermute_b32 v166, v147, v167
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u32_e64 s33, 0, v154
	.loc	1 686 26                        ; attention.py:686:26
	ds_bpermute_b32 v167, v147, v65
	ds_bpermute_b32 v87, v137, v87
	v_cndmask_b32_e64 v65, v81, v68, s3
	v_cndmask_b32_e64 v168, v68, v81, s3
	v_cndmask_b32_e64 v85, v85, 0xff800000, s33
	v_cndmask_b32_e64 v161, v70, v161, s1
	v_cndmask_b32_e64 v172, v165, v163, s1
	ds_bpermute_b32 v169, v137, v65
	ds_bpermute_b32 v168, v147, v168
	v_cndmask_b32_e64 v154, v80, v85, s3
	v_cndmask_b32_e64 v67, v85, v80, s3
	v_cndmask_b32_e64 v163, v163, v165, s1
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v160, v160
.Ltmp4:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	.loc	1 686 26                        ; attention.py:686:26
	ds_bpermute_b32 v154, v137, v154
	ds_bpermute_b32 v67, v147, v67
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v70, v162, v172, v163
	v_max_f32_e32 v65, v66, v65
.Ltmp6:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v173, v166, v153, s1
	v_cndmask_b32_e64 v153, v153, v166, s1
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v166, v68, v69, v82
.Ltmp8:
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v66, v161, v173, v153
	v_max3_f32 v65, v65, v170, v66
	v_max3_f32 v66, v155, v156, v88
.Ltmp10:
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v165, v67, v154, s1
	v_cndmask_b32_e64 v154, v154, v67, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v67, v87, v167, v165
	v_max3_f32 v67, v70, v67, v154
	v_max3_f32 v70, v169, v168, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max3_f32 v65, v65, v70, v67
	v_max3_f32 v67, v84, v86, v81
	v_max_f32_e32 v70, v157, v158
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v174, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v66, v67, v66, v80
	v_max3_f32 v67, v71, v85, v83
	v_max3_f32 v70, v70, v164, v166
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v174, v174 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v66, v70, v67, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v67, v174, v174
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v70, v66, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v65, v67
.Ltmp18:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v65, v152, v152
	v_max3_f32 v66, v151, v66, v70
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v70.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v149, v149, v67
	v_dual_max_f32 v65, v65, v67 :: v_dual_sub_f32 v166, v151, v66
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v157, v157, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_sub_f32_e32 v159, v159, v149
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v174, v152, v65
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v161, v161, v149 :: v_dual_sub_f32 v84, v84, v66
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v166, v166
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v153, v153, v149 :: v_dual_sub_f32 v86, v86, v66
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v160, v174
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v174, v167, v87, s1
	v_cndmask_b32_e64 v87, v87, v167, s1
	v_cndmask_b32_e64 v167, v168, v169, s1
	v_cndmask_b32_e64 v168, v169, v168, s1
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v169, v171, v149 :: v_dual_sub_f32 v88, v88, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v151, 0, v166, s37
	v_cmp_neq_f32_e64 s37, 0xff800000, v152
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v152, v175, v149 :: v_dual_sub_f32 v69, v69, v66
	v_dual_sub_f32 v166, v173, v149 :: v_dual_sub_f32 v83, v83, v66
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v67, 0, v160, s37
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v160, v170, v149 :: v_dual_sub_f32 v71, v71, v66
	v_dual_sub_f32 v167, v167, v149 :: v_dual_sub_f32 v156, v156, v66
	v_dual_sub_f32 v168, v168, v149 :: v_dual_sub_f32 v85, v85, v66
	v_dual_sub_f32 v162, v162, v149 :: v_dual_sub_f32 v81, v81, v66
	v_dual_sub_f32 v170, v172, v149 :: v_dual_sub_f32 v155, v155, v66
	v_dual_sub_f32 v163, v163, v149 :: v_dual_sub_f32 v80, v80, v66
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v152, v152
	v_exp_f32_e32 v159, v159
	v_exp_f32_e32 v160, v160
	v_exp_f32_e32 v161, v161
	v_exp_f32_e32 v166, v166
	v_exp_f32_e32 v153, v153
	v_exp_f32_e32 v167, v167
	v_exp_f32_e32 v168, v168
	v_exp_f32_e32 v169, v169
	v_exp_f32_e32 v162, v162
	v_exp_f32_e32 v170, v170
	v_exp_f32_e32 v163, v163
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v68, v68, v66
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v173, v69
	v_exp_f32_e32 v69, v71
	v_exp_f32_e32 v71, v85
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v85, 0, v159, s10
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v172, v68
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v152, s8
	v_cndmask_b32_e64 v152, 0, v160, s12
	v_cndmask_b32_e64 v159, 0, v161, s15
	v_cndmask_b32_e64 v160, 0, v166, s18
	v_cndmask_b32_e64 v153, 0, v153, s20
	v_cndmask_b32_e64 v161, 0, v167, s22
	v_cndmask_b32_e64 v166, 0, v168, s24
	v_cndmask_b32_e64 v167, 0, v169, s9
	v_cndmask_b32_e64 v162, 0, v162, s11
	v_cndmask_b32_e64 v168, 0, v170, s13
	v_cndmask_b32_e64 v163, 0, v163, s16
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v171, v174, v149
	v_sub_f32_e32 v154, v154, v149
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v68, v68, v85
	v_add_f32_e32 v85, v152, v159
	v_dual_add_f32 v152, v160, v153 :: v_dual_add_f32 v159, v167, v162
	v_dual_add_f32 v153, v161, v166 :: v_dual_add_f32 v160, v168, v163
.Ltmp20:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v165, v165, v149
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v154, v154
.Ltmp21:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v68, v68, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v85, v152, v153 :: v_dual_mul_f32 v26, v26, v151
	v_add_f32_e32 v152, v159, v160
.Ltmp22:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v165, v165
	v_exp_f32_e32 v171, v171
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v158, v158, v66
.Ltmp23:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v68, v68, v85
.Ltmp24:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v157, v157
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v154, 0, v154, s25
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v164, v164, v66
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v158, v158
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v82, v82, v66 :: v_dual_mul_f32 v25, v25, v151
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v165, 0, v165, s23
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v87, v87, v149
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v169, 0, v171, s19
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v164, v164
	v_exp_f32_e32 v82, v82
.Ltmp25:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v154, v165, v154
.Ltmp26:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v87, v87
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v153, v172, 0, s36
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_mul_f32_e32 v30, v30, v151
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v84, v84
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v31, v31, v151
	v_mul_f32_e32 v32, v32, v151
	v_mul_f32_e32 v17, v17, v151
	v_mul_f32_e32 v18, v18, v151
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v82, v82, 0, s17
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v19, v19, v151
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v87, 0, v87, s21
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v20, v20, v151
	v_mul_f32_e32 v21, v21, v151
	v_mul_f32_e32 v22, v22, v151
	v_mul_f32_e32 v23, v23, v151
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v87, v169, v87
.Ltmp28:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v24, v24, v151
	v_mul_f32_e32 v10, v10, v151
	v_mul_f32_e32 v12, v12, v151
	v_mul_f32_e32 v13, v13, v151
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v87, v87, v154
.Ltmp30:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v154, v69, 0, s31
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v14, v14, v151
	v_mul_f32_e32 v15, v15, v151
	v_mul_f32_e32 v16, v16, v151
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v85, v152, v87
.Ltmp32:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v87, v155
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v155, v71, 0, s33
	v_cndmask_b32_e64 v71, v158, 0, s27
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v152, v156
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v156, 0, v157, s26
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v157.h, v70.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v70.l, v71.h
	v_cmp_o_f32_e64 s8, v71, v71
	v_mov_b16_e64 v157.l, v156.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v28, v28, v151
	v_mul_f32_e32 v2, v2, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v158, 1, v70
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v68, v68, v85
.Ltmp34:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v85, v164, 0, s35
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v157, 1, v157
	v_mov_b16_e64 v70.l, v153.h
	v_add3_u32 v158, v71, v158, 0x7fff
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v69, v68
.Ltmp36:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v27, v27, v151
	v_mul_f32_e32 v3, v3, v151
	v_mul_f32_e32 v4, v4, v151
	v_mul_f32_e32 v5, v5, v151
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v9, v9, v151
	v_mul_f32_e32 v6, v6, v151
	v_mul_f32_e32 v7, v7, v151
	v_mul_f32_e32 v8, v8, v151
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v68, v68, v69
.Ltmp40:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v71, v156, v157, 0x7fff
	v_cndmask_b16 v157.h, 0x7fff, v158.h, s8
	v_cmp_o_f32_e64 s8, v156, v156
	v_and_b32_e32 v156, 1, v70
	v_mov_b16_e32 v70.l, v82.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v29, v29, v151
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v68, v150, v67
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v11, v11, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v151.l, v85.h
	v_mov_b16_e64 v151.h, v70.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v83, v83
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v157.l, 0x7fff, v71.h, s8
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v158, 0, v173, s14
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s8, v153, v153
	v_and_b32_e32 v71, 1, v151
	v_add3_u32 v151, v153, v156, 0x7fff
	v_and_b32_e32 v156, 1, v70
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v81, v81
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v153.l, v158.h
	v_mov_b16_e64 v153.h, v70.h
	v_add3_u32 v71, v85, v71, 0x7fff
	v_cndmask_b16 v162.h, 0x7fff, v151.h, s8
	v_cmp_o_f32_e64 s8, v85, v85
	v_add3_u32 v151, v82, v156, 0x7fff
	v_cmp_o_f32_e64 s9, v82, v82
	v_mov_b16_e64 v82.l, v154.h
	v_mov_b16_e32 v82.h, v70.h
	v_mov_b16_e64 v70.l, v155.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v84, v84, 0, s7
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v86, v86
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v85, 1, v153
	v_cndmask_b16 v162.l, 0x7fff, v71.h, s8
	v_cndmask_b16 v71.h, 0x7fff, v151.h, s9
	v_and_b32_e32 v82, 1, v82
	v_and_b32_e32 v151, 1, v70
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v83, 0, v83, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v70.l, v84.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v81, v81, 0, s34
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v85, v158, v85, 0x7fff
	v_cmp_o_f32_e64 s7, v158, v158
	v_add3_u32 v82, v154, v82, 0x7fff
	v_add3_u32 v151, v155, v151, 0x7fff
	v_cmp_o_f32_e64 s6, v155, v155
	v_mov_b16_e64 v153.l, v83.h
	v_cmp_o_f32_e64 s8, v154, v154
	v_and_b32_e32 v154, 1, v70
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v86, v86, 0, s30
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v71.l, 0x7fff, v85.h, s7
	v_cndmask_b16 v174.h, 0x7fff, v151.h, s6
	v_and_b32_e32 v85, 1, v153
	v_cndmask_b16 v174.l, 0x7fff, v82.h, s8
	v_add3_u32 v82, v84, v154, 0x7fff
	v_mov_b16_e32 v70.l, v81.h
	v_cmp_o_f32_e64 s6, v84, v84
	v_add3_u32 v84, v83, v85, 0x7fff
	v_mov_b16_e32 v85.l, v86.h
	v_mov_b16_e32 v85.h, v70.h
	v_and_b32_e32 v151, 1, v70
	v_cndmask_b16 v208.h, 0x7fff, v82.h, s6
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v87, s5
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s6, v83, v83
	v_and_b32_e32 v83, 1, v85
	v_add3_u32 v85, v81, v151, 0x7fff
	v_cmp_o_f32_e64 s5, v81, v81
	v_mov_b16_e32 v81.l, v82.h
	v_mov_b16_e32 v81.h, v70.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v88, v88
	v_exp_f32_e32 v80, v80
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v87, v152, 0, s4
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v83, v86, v83, 0x7fff
	v_and_b32_e32 v81, 1, v81
	v_cmp_o_f32_e64 s4, v86, v86
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v86, 0, v97
	s_waitcnt vmcnt(1)
	ds_store_b128 v86, v[72:75]
	s_waitcnt vmcnt(0)
	ds_store_b128 v86, v[76:79] offset:2048
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v81, v82, v81, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v74, v148 offset:512
	ds_load_u16_d16 v81, v148 offset:288
	ds_load_u16_d16 v153, v148 offset:608
	ds_load_u16_d16 v152, v148 offset:352
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v88, v88, 0, s28
	v_cndmask_b32_e64 v80, v80, 0, s29
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v70.l, v87.h
	v_cndmask_b16 v208.l, 0x7fff, v84.h, s6
	v_mov_b16_e32 v84.h, v70.h
	v_mov_b16_e32 v84.l, v88.h
	v_cndmask_b16 v210.h, 0x7fff, v85.h, s5
	v_and_b32_e32 v85, 1, v70
	v_mov_b16_e32 v70.l, v80.h
	v_cmp_o_f32_e64 s7, v80, v80
	v_and_b32_e32 v84, 1, v84
	v_cmp_o_f32_e64 s5, v87, v87
	v_add3_u32 v72, v87, v85, 0x7fff
	v_and_b32_e32 v70, 1, v70
	v_cmp_o_f32_e64 s6, v82, v82
	v_add3_u32 v73, v88, v84, 0x7fff
	v_cmp_o_f32_e64 s8, v88, v88
	v_permlanex16_b32 v75, v157, s68, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v70, v80, v70, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v72, v148
	ds_load_u16_d16 v80, v148 offset:32
	ds_load_u16_d16 v161, v148 offset:576
	ds_load_u16_d16 v73, v148 offset:256
	ds_load_u16_d16 v159, v148 offset:64
	ds_load_u16_d16 v160, v148 offset:320
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v152, v148 offset:480
	ds_load_u16_d16 v151, v148 offset:96
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v76, v162, s68, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(7)
	v_cndmask_b16 v88.h, 0x7fff, v72.h, s5
	v_cndmask_b16 v88.l, 0x7fff, v81.h, s6
	s_waitcnt lgkmcnt(4)
	v_cndmask_b16 v70.l, 0x7fff, v73.h, s8
	v_perm_b32 v167, v75, v157, v91
	v_perm_b32 v168, v75, v157, v138
	v_perm_b32 v169, v76, v162, v91
	v_perm_b32 v170, v76, v162, v138
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v75, v148 offset:768
	ds_load_u16_d16 v162, v148 offset:832
	ds_load_u16_d16_hi v161, v148 offset:704
	ds_load_u16_d16 v82, v148 offset:544
	ds_load_u16_d16_hi v72, v148 offset:128
	ds_load_u16_d16_hi v80, v148 offset:160
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v159, v148 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v148 offset:224
	ds_load_u16_d16_hi v74, v148 offset:640
	ds_load_u16_d16_hi v73, v148 offset:384
	ds_load_u16_d16_hi v81, v148 offset:416
	ds_load_u16_d16_hi v160, v148 offset:448
	ds_load_u16_d16 v163, v148 offset:1088
	ds_load_u16_d16 v164, v148 offset:1344
	ds_load_u16_d16 v165, v148 offset:1600
	ds_load_u16_d16 v166, v148 offset:1856
	ds_load_u16_d16 v175, v148 offset:2112
	ds_load_u16_d16 v177, v148 offset:2624
	ds_load_u16_d16 v178, v148 offset:2880
	ds_load_u16_d16 v179, v148 offset:3136
	ds_load_u16_d16 v180, v148 offset:3392
	ds_load_u16_d16 v181, v148 offset:3648
	ds_load_u16_d16 v182, v148 offset:3904
	ds_load_u16_d16 v76, v148 offset:1024
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v75, v148 offset:896
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v82, v148 offset:672
	ds_load_u16_d16 v83, v148 offset:800
	ds_load_u16_d16_hi v162, v148 offset:960
	ds_load_u16_d16 v154, v148 offset:864
	ds_load_u16_d16_hi v153, v148 offset:736
	ds_load_u16_d16 v77, v148 offset:1280
	ds_load_u16_d16 v84, v148 offset:1056
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v163, v148 offset:1216
	ds_load_u16_d16 v155, v148 offset:1120
	ds_load_u16_d16 v78, v148 offset:1536
	ds_load_u16_d16 v85, v148 offset:1312
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v164, v148 offset:1472
	ds_load_u16_d16 v156, v148 offset:1376
	ds_load_u16_d16 v79, v148 offset:1792
	ds_load_u16_d16 v86, v148 offset:1568
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v165, v148 offset:1728
	ds_load_u16_d16 v157, v148 offset:1632
	ds_load_u16_d16 v183, v148 offset:2048
	ds_load_u16_d16 v87, v148 offset:1824
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v166, v148 offset:1984
	ds_load_u16_d16 v158, v148 offset:1888
	ds_load_u16_d16 v184, v148 offset:2304
	ds_load_u16_d16 v191, v148 offset:2080
	ds_load_u16_d16 v176, v148 offset:2368
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v175, v148 offset:2240
	ds_load_u16_d16 v199, v148 offset:2144
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v76, v148 offset:1152
	.loc	1 700 30                        ; attention.py:700:30
	s_waitcnt lgkmcnt(25)
	v_cndmask_b16 v210.l, 0x7fff, v83.h, s4
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v83, v148 offset:928
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v154, v148 offset:992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v77, v148 offset:1408
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v84, v148 offset:1184
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v155, v148 offset:1248
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v78, v148 offset:1664
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v85, v148 offset:1440
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v156, v148 offset:1504
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v79, v148 offset:1920
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v86, v148 offset:1696
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v157, v148 offset:1760
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v183, v148 offset:2176
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v87, v148 offset:1952
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v158, v148 offset:2016
	ds_load_u16_d16 v185, v148 offset:2560
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v184, v148 offset:2432
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v191, v148 offset:2208
	ds_load_u16_d16 v192, v148 offset:2336
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v176, v148 offset:2496
	ds_load_u16_d16 v200, v148 offset:2400
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v199, v148 offset:2272
	ds_load_u16_d16 v186, v148 offset:2816
	ds_load_u16_d16 v193, v148 offset:2592
	ds_load_u16_d16_hi v177, v148 offset:2752
	ds_load_u16_d16 v201, v148 offset:2656
	ds_load_u16_d16 v187, v148 offset:3072
	ds_load_u16_d16 v194, v148 offset:2848
	ds_load_u16_d16_hi v178, v148 offset:3008
	ds_load_u16_d16 v202, v148 offset:2912
	ds_load_u16_d16 v188, v148 offset:3328
	ds_load_u16_d16 v195, v148 offset:3104
	ds_load_u16_d16_hi v179, v148 offset:3264
	ds_load_u16_d16 v203, v148 offset:3168
	ds_load_u16_d16 v189, v148 offset:3584
	ds_load_u16_d16 v196, v148 offset:3360
	ds_load_u16_d16_hi v180, v148 offset:3520
	ds_load_u16_d16 v204, v148 offset:3424
	ds_load_u16_d16 v190, v148 offset:3840
	ds_load_u16_d16 v197, v148 offset:3616
	ds_load_u16_d16_hi v181, v148 offset:3776
	ds_load_u16_d16 v205, v148 offset:3680
	ds_load_u16_d16 v198, v148 offset:3872
	ds_load_u16_d16_hi v182, v148 offset:4032
	ds_load_u16_d16 v206, v148 offset:3936
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v185, v148 offset:2688
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v192, v148 offset:2464
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v200, v148 offset:2528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v186, v148 offset:2944
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v193, v148 offset:2720
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v201, v148 offset:2784
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v187, v148 offset:3200
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v194, v148 offset:2976
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v202, v148 offset:3040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v188, v148 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v195, v148 offset:3232
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v203, v148 offset:3296
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v189, v148 offset:3712
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v196, v148 offset:3488
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v204, v148 offset:3552
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v190, v148 offset:3968
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v197, v148 offset:3744
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v205, v148 offset:3808
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v198, v148 offset:4000
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s7
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v206, v148 offset:4064
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v172, v71, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v207, v174, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v209, v208, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v211, v210, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v212, v88, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v214, v70, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v171, v172, v71, v91
	v_perm_b32 v172, v172, v71, v138
	v_perm_b32 v173, v207, v174, v91
	v_perm_b32 v174, v207, v174, v138
	v_perm_b32 v207, v209, v208, v91
	v_perm_b32 v208, v209, v208, v138
	v_perm_b32 v209, v211, v210, v91
	v_perm_b32 v210, v211, v210, v138
	v_perm_b32 v211, v212, v88, v91
	v_perm_b32 v212, v212, v88, v138
	v_perm_b32 v213, v214, v70, v91
	v_perm_b32 v214, v214, v70, v138
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[72:79], v[167:174], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[80:87], v[167:174], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[151:158], v[167:174], v[1:8]
	v_dual_mov_b32 v151, v66 :: v_dual_mov_b32 v150, v68
	v_mov_b32_e32 v152, v65
	v_wmma_f32_16x16x16_bf16 v[9:16], v[159:166], v[167:174], v[9:16]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[183:190], v[207:214], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[191:198], v[207:214], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[199:206], v[207:214], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[175:182], v[207:214], v[9:16]
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cbranch_scc0 .LBB0_39
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s28, s64, s62
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v192, s47 :: v_dual_add_nc_u32 v81, 0, v117
	.loc	1 657 32                        ; attention.py:657:32
	s_mul_i32 s4, s28, s61
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v191, s46 :: v_dual_mov_b32 v190, s45
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v65, s4, v89, 1
	v_add_lshl_u32 v66, s4, v95, 1
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v189, s44 :: v_dual_mov_b32 v188, s43
	v_dual_mov_b32 v187, s42 :: v_dual_mov_b32 v186, s41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e64 v65, 0x80000000, v65, s2
	v_cndmask_b32_e64 v69, 0x80000000, v66, s2
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[52:55], 0 offen
	buffer_load_b128 v[69:72], v69, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 663 30                        ; attention.py:663:30
	v_mov_b32_e32 v185, s40
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s6, s66, s62
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v98, v[65:68]
	s_waitcnt vmcnt(0)
	ds_store_b128 v98, v[69:72] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v139
	ds_load_b128 v[73:76], v81
	ds_load_b128 v[81:84], v81 offset:2048
	ds_load_b128 v[85:88], v139 offset:2048
	ds_load_b128 v[153:156], v140
	ds_load_b128 v[161:164], v140 offset:2048
	ds_load_b128 v[157:160], v141
	ds_load_b128 v[165:168], v141 offset:2048
	ds_load_b128 v[169:172], v142
	ds_load_b128 v[177:180], v142 offset:2048
	ds_load_b128 v[173:176], v143
	ds_load_b128 v[181:184], v143 offset:2048
	ds_load_b128 v[193:196], v144
	ds_load_b128 v[201:204], v144 offset:2048
	ds_load_b128 v[197:200], v145
	ds_load_b128 v[205:208], v145 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[73:80], v[57:64], v[185:192]
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[81:88], v[57:64], v[185:192]
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v81, s62, v99
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[153:160], v[49:56], v[65:72]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[161:168], v[49:56], v[73:80]
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v81, v115
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v81, v116
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[169:176], v[41:48], v[65:72]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[177:184], v[41:48], v[73:80]
	v_mov_b16_e32 v81.l, 0
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s4, s4, s5
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[193:200], v[33:40], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[201:208], v[33:40], v[73:80]
	v_mov_b16_e32 v81.h, v81.l
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s5, s8
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v82, s6, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v83, 31, v82
	v_add_co_u32 v82, s4, s38, v82
	v_add_co_ci_u32_e64 v83, null, s39, v83, s4
	.loc	1 681 34                        ; attention.py:681:34
	global_load_d16_hi_u8 v81, v[82:83], off
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v82, s62, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v82, v115
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v82, v116
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s4, s4, s5
	s_and_b32 s10, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s5, s10
	s_cbranch_execz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v82, s6, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v83, 31, v82
	v_add_co_u32 v82, s4, s38, v82
	v_add_co_ci_u32_e64 v83, null, s39, v83, s4
	global_load_d16_u8 v81, v[82:83], off
.LBB0_10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v83, s62, v101
	v_mov_b16_e32 v82.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v83, v115
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v83, v116
	v_mov_b16_e32 v82.h, v82.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, vcc_lo, s4
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s5, s12
	s_cbranch_execz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v83, s6, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v84, 31, v83
	v_add_co_u32 v83, s4, s38, v83
	v_add_co_ci_u32_e64 v84, null, s39, v84, s4
	global_load_d16_hi_u8 v82, v[83:84], off
.LBB0_12:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v83, s62, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v83, v115
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v83, v116
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s4, s4, s5
	s_and_b32 s15, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s5, s15
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v83, s6, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v84, 31, v83
	v_add_co_u32 v83, s4, s38, v83
	v_add_co_ci_u32_e64 v84, null, s39, v84, s4
	global_load_d16_u8 v82, v[83:84], off
.LBB0_14:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v84, s62, v103
	v_mov_b16_e32 v83.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v84, v115
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v84, v116
	v_mov_b16_e32 v83.h, v83.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s18, vcc_lo, s4
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s5, s18
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v84, s6, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v85, 31, v84
	v_add_co_u32 v84, s4, s38, v84
	v_add_co_ci_u32_e64 v85, null, s39, v85, s4
	global_load_d16_hi_u8 v83, v[84:85], off
.LBB0_16:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v84, s62, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v84, v115
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v84, v116
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s4, s4, s5
	s_and_b32 s20, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s5, s20
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v84, s6, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v85, 31, v84
	v_add_co_u32 v84, s4, s38, v84
	v_add_co_ci_u32_e64 v85, null, s39, v85, s4
	global_load_d16_u8 v83, v[84:85], off
.LBB0_18:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v85, s62, v105
	v_mov_b16_e32 v84.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v85, v115
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v85, v116
	v_mov_b16_e32 v84.h, v84.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, vcc_lo, s4
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s5, s22
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v85, s6, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v86, 31, v85
	v_add_co_u32 v85, s4, s38, v85
	v_add_co_ci_u32_e64 v86, null, s39, v86, s4
	global_load_d16_hi_u8 v84, v[85:86], off
.LBB0_20:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v85, s62, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v85, v115
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v85, v116
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s4, s4, s5
	s_and_b32 s24, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s5, s24
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v85, s6, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v86, 31, v85
	v_add_co_u32 v85, s4, s38, v85
	v_add_co_ci_u32_e64 v86, null, s39, v86, s4
	global_load_d16_u8 v84, v[85:86], off
.LBB0_22:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v86, s62, v107
	v_mov_b16_e32 v85.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v86, v115
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v86, v116
	v_mov_b16_e32 v85.h, v85.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s29, vcc_lo, s4
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s5, s29
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v86, s6, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v87, 31, v86
	v_add_co_u32 v86, s4, s38, v86
	v_add_co_ci_u32_e64 v87, null, s39, v87, s4
	global_load_d16_hi_u8 v85, v[86:87], off
.LBB0_24:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v86, s62, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v86, v115
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v86, v116
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s4, s4, s5
	s_and_b32 s30, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s5, s30
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v86, s6, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v87, 31, v86
	v_add_co_u32 v86, s4, s38, v86
	v_add_co_ci_u32_e64 v87, null, s39, v87, s4
	global_load_d16_u8 v85, v[86:87], off
.LBB0_26:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v87, s62, v109
	v_mov_b16_e32 v86.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v87, v115
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v87, v116
	v_mov_b16_e32 v86.h, v86.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s31, vcc_lo, s4
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s5, s31
	s_cbranch_execz .LBB0_28
; %bb.27:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v87, s6, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v88, 31, v87
	v_add_co_u32 v87, s4, s38, v87
	v_add_co_ci_u32_e64 v88, null, s39, v88, s4
	global_load_d16_hi_u8 v86, v[87:88], off
.LBB0_28:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v87, s62, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v87, v115
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v87, v116
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s4, s4, s5
	s_and_b32 s33, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s5, s33
	s_cbranch_execz .LBB0_30
; %bb.29:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v87, s6, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v88, 31, v87
	v_add_co_u32 v87, s4, s38, v87
	v_add_co_ci_u32_e64 v88, null, s39, v88, s4
	global_load_d16_u8 v86, v[87:88], off
.LBB0_30:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v88, s62, v111
	v_mov_b16_e32 v87.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v88, v115
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v88, v116
	v_mov_b16_e32 v87.h, v87.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s34, vcc_lo, s4
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s5, s34
	s_cbranch_execz .LBB0_32
; %bb.31:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v88, s6, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v154, 31, v88
	v_add_co_u32 v153, s4, s38, v88
	v_add_co_ci_u32_e64 v154, null, s39, v154, s4
	global_load_d16_hi_u8 v87, v[153:154], off
.LBB0_32:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v88, s62, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v88, v115
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v88, v116
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s4, s4, s5
	s_and_b32 s35, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s5, s35
	s_cbranch_execz .LBB0_34
; %bb.33:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v88, s6, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v154, 31, v88
	v_add_co_u32 v153, s4, s38, v88
	v_add_co_ci_u32_e64 v154, null, s39, v154, s4
	global_load_d16_u8 v87, v[153:154], off
.LBB0_34:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v153, s62, v113
	v_mov_b16_e32 v88.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v153, v115
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v153, v116
	v_mov_b16_e32 v88.h, v88.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s36, vcc_lo, s4
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s5, s36
	s_cbranch_execz .LBB0_36
; %bb.35:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v153, s6, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v154, 31, v153
	v_add_co_u32 v153, s4, s38, v153
	v_add_co_ci_u32_e64 v154, null, s39, v154, s4
	global_load_d16_hi_u8 v88, v[153:154], off
.LBB0_36:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v153, s62, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v153, v115
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v153, v116
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s4, s4, s5
	s_and_b32 s37, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s5, s37
	s_cbranch_execz .LBB0_5
; %bb.37:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v153, s6, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v154, 31, v153
	v_add_co_u32 v153, s4, s38, v153
	v_add_co_ci_u32_e64 v154, null, s39, v154, s4
	global_load_d16_u8 v88, v[153:154], off
	s_branch .LBB0_5
.LBB0_38:
	.loc	1 0 34                          ; attention.py:0:34
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v7, v8
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
	s_branch .LBB0_40
.LBB0_39:                               ; %._crit_edge.loopexit
	v_mov_b32_e32 v33, v96
.LBB0_40:                               ; %._crit_edge
	.loc	1 598 79 is_stmt 1              ; attention.py:598:79
	v_bfe_u32 v36, v0, 4, 1
	.loc	1 848 17                        ; attention.py:848:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s49, s49, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 629 13                        ; attention.py:629:13
	v_or_b32_e32 v0, v33, v36
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v33, 48, v36
	v_or_b32_e32 v34, 32, v36
	v_or_b32_e32 v35, 16, v36
	.loc	1 629 13                        ; attention.py:629:13
	v_lshlrev_b32_e32 v0, 2, v0
	ds_bpermute_b32 v38, v0, v68
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v0, 1, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v37, v0, v92
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v0, 62, v93
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v39, s51, v37
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v37, s50, v37
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 0x800, v39
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v37, s60, v37
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, null, v38, v38, v25
	v_div_scale_f32 v41, null, v38, v38, v26
	v_div_scale_f32 v43, null, v38, v38, v27
	v_div_scale_f32 v45, null, v38, v38, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v39
	v_div_scale_f32 v47, null, v38, v38, v29
	v_rcp_f32_e32 v52, v41
	v_rcp_f32_e32 v53, v43
	v_rcp_f32_e32 v54, v45
	v_div_scale_f32 v49, null, v38, v38, v30
	v_rcp_f32_e32 v55, v47
	v_div_scale_f32 v40, vcc_lo, v25, v38, v25
	v_fma_f32 v60, -v39, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v56, v49
	v_fma_f32 v61, -v41, v52, 1.0
	v_fma_f32 v62, -v43, v53, 1.0
	v_fma_f32 v63, -v45, v54, 1.0
	v_fmac_f32_e32 v51, v60, v51
	v_div_scale_f32 v42, s1, v26, v38, v26
	v_div_scale_f32 v44, s2, v27, v38, v27
	v_div_scale_f32 v46, s3, v28, v38, v28
	v_fma_f32 v64, -v47, v55, 1.0
	v_dual_fmac_f32 v52, v61, v52 :: v_dual_fmac_f32 v53, v62, v53
	v_fmac_f32_e32 v54, v63, v54
	v_mul_f32_e32 v60, v40, v51
	v_fma_f32 v65, -v49, v56, 1.0
	v_fmac_f32_e32 v55, v64, v55
	v_dual_mul_f32 v61, v42, v52 :: v_dual_mul_f32 v62, v44, v53
	v_mul_f32_e32 v63, v46, v54
	v_fma_f32 v64, -v39, v60, v40
	v_div_scale_f32 v48, s4, v29, v38, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v43, v62, v44
	v_fma_f32 v67, -v45, v63, v46
	v_fmac_f32_e32 v56, v65, v56
	v_fma_f32 v65, -v41, v61, v42
	v_fmac_f32_e32 v60, v64, v51
	v_div_scale_f32 v50, null, v38, v38, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v68, v48, v55 :: v_dual_fmac_f32 v61, v65, v52
	v_fmac_f32_e32 v62, v66, v53
	v_fma_f32 v39, -v39, v60, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v59, v50
	v_fmac_f32_e32 v63, v67, v54
	v_fma_f32 v40, -v41, v61, v42
	v_fma_f32 v41, -v43, v62, v44
	v_div_fmas_f32 v39, v39, v51, v60
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v58, null, v38, v38, v32
	v_fma_f32 v42, -v45, v63, v46
	v_div_fmas_f32 v40, v40, v52, v61
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v57, s5, v30, v38, v30
	v_div_fmas_f32 v41, v41, v53, v62
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v39, v38, v25
	v_div_fmas_f32 v39, v42, v54, v63
	v_fma_f32 v42, -v50, v59, 1.0
	v_rcp_f32_e32 v43, v58
	v_div_fixup_f32 v26, v40, v38, v26
	v_mul_f32_e32 v40, v57, v56
	v_fma_f32 v64, -v47, v68, v48
	v_fmac_f32_e32 v59, v42, v59
	v_div_scale_f32 v42, null, v38, v38, v17
	v_div_fixup_f32 v27, v41, v38, v27
	v_div_fixup_f32 v28, v39, v38, v28
	v_fma_f32 v39, -v49, v40, v57
	v_div_scale_f32 v41, s2, v31, v38, v31
	v_fma_f32 v44, -v58, v43, 1.0
	v_rcp_f32_e32 v46, v42
	v_fmac_f32_e32 v68, v64, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v40, v39, v56 :: v_dual_mul_f32 v39, v41, v59
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s3, v32, v38, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v68, v48
	v_fma_f32 v47, -v49, v40, v57
	v_fma_f32 v48, -v50, v39, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v42, v46, 1.0
	v_mul_f32_e32 v49, v44, v43
	v_div_scale_f32 v52, null, v38, v38, v18
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v39, v48, v59
	v_div_fmas_f32 v45, v45, v55, v68
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v46, v51, v46
	v_div_fmas_f32 v40, v47, v56, v40
	v_rcp_f32_e32 v47, v52
	v_fma_f32 v48, -v58, v49, v44
	v_div_scale_f32 v51, s4, v17, v38, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v40, v38, v30
	v_fma_f32 v40, -v50, v39, v41
	v_fmac_f32_e32 v49, v48, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v41, v51, v46
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v29, v45, v38, v29
	v_fma_f32 v45, -v52, v47, 1.0
	v_div_fmas_f32 v39, v40, v59, v39
	v_fma_f32 v40, -v58, v49, v44
	v_fma_f32 v44, -v42, v41, v51
	v_div_scale_f32 v48, null, v38, v38, v19
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v50, s2, v18, v38, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v44, v46
	v_rcp_f32_e32 v45, v48
	v_div_scale_f32 v53, null, v38, v38, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v50, v47
	v_div_fixup_f32 v31, v39, v38, v31
	v_fma_f32 v39, -v42, v41, v51
	v_div_scale_f32 v51, null, v38, v38, v21
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s3, v19, v38, v19
	v_div_fmas_f32 v40, v40, v43, v49
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v43, v53
	v_div_fmas_f32 v39, v39, v46, v41
	v_rcp_f32_e32 v41, v51
	v_fma_f32 v49, -v48, v45, 1.0
	v_div_fixup_f32 v32, v40, v38, v32
	v_fma_f32 v40, -v52, v44, v50
	v_div_fixup_f32 v17, v39, v38, v17
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v46, s4, v20, v38, v20
	v_fma_f32 v49, -v53, v43, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v55, -v51, v41, 1.0
	v_fmac_f32_e32 v44, v40, v47
	v_mul_f32_e32 v40, v42, v45
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v38
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_add_lshl_u32 v0, v37, v0, 2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v55, v41
	v_fmac_f32_e32 v43, v49, v43
	v_div_scale_f32 v49, null, v38, v38, v22
	v_fma_f32 v39, -v52, v44, v50
	v_fma_f32 v50, -v48, v40, v42
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v54, v49
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v40, v50, v45
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	v_cndmask_b32_e64 v29, 0, v29, s1
	v_cndmask_b32_e64 v30, 0, v30, s1
	v_cndmask_b32_e64 v31, 0, v31, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v50, -v49, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v54, v50, v54
	v_div_fmas_f32 v39, v39, v47, v44
	v_div_scale_f32 v47, s2, v21, v38, v21
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v18, v39, v38, v18
	v_fma_f32 v39, -v48, v40, v42
	v_mul_f32_e32 v42, v47, v41
	v_mul_f32_e32 v52, v46, v43
	v_div_scale_f32 v48, null, v38, v38, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v45, v40
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v44, -v53, v52, v46
	v_fma_f32 v45, -v51, v42, v47
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v19, v39, v38, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v44, v43
	v_div_scale_f32 v44, s5, v22, v38, v22
	v_fmac_f32_e32 v42, v45, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v40, -v53, v52, v46
	v_div_scale_f32 v53, null, v38, v38, v24
	v_rcp_f32_e32 v46, v48
	v_fma_f32 v39, -v51, v42, v47
	v_div_fmas_f32 v40, v40, v43, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v43, v53
	v_mul_f32_e32 v50, v44, v54
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v51, null, v38, v38, v10
	v_div_fmas_f32 v39, v39, v41, v42
	v_fma_f32 v45, -v49, v50, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v48, v46, 1.0
	v_div_fixup_f32 v20, v40, v38, v20
	v_div_scale_f32 v40, s3, v23, v38, v23
	v_fmac_f32_e32 v50, v45, v54
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v45, -v53, v43, 1.0
	v_div_fixup_f32 v21, v39, v38, v21
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v41, -v49, v50, v44
	v_div_scale_f32 v44, null, v38, v38, v9
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s2, v24, v38, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v47, v44
	v_fmac_f32_e32 v46, v52, v46
	v_div_fmas_f32 v41, v41, v54, v50
	v_div_scale_f32 v54, null, v38, v38, v12
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v40, v46
	v_div_fixup_f32 v22, v41, v38, v22
	v_rcp_f32_e32 v41, v51
	v_rcp_f32_e32 v56, v54
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v49, -v48, v42, v40
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v42, v49, v46
	v_fma_f32 v49, -v44, v47, 1.0
	v_fma_f32 v52, -v51, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v48, v42, v40
	v_div_scale_f32 v48, null, v38, v38, v11
	v_fmac_f32_e32 v47, v49, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v52, v41
	v_div_fmas_f32 v40, v40, v46, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v49, v48
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v46, s3, v10, v38, v10
	v_div_fixup_f32 v23, v40, v38, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v55, v46, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v52, -v48, v49, 1.0
	v_dual_mul_f32 v50, v45, v43 :: v_dual_fmac_f32 v49, v52, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v53, v50, v45
	v_div_scale_f32 v52, s5, v11, v38, v11
	v_fmac_f32_e32 v50, v39, v43
	v_div_scale_f32 v39, s4, v9, v38, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v53, v50, v45
	v_mul_f32_e32 v45, v39, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v43, v50
	v_fma_f32 v53, -v44, v45, v39
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v43, -v51, v55, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v24, v42, v38, v24
	v_fmac_f32_e32 v45, v53, v47
	v_fma_f32 v42, -v54, v56, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v43, v41
	v_div_scale_f32 v43, null, v38, v38, v13
	v_fma_f32 v39, -v44, v45, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v42, v56
	v_div_scale_f32 v42, s2, v12, v38, v12
	v_fma_f32 v44, -v51, v55, v46
	v_div_fmas_f32 v39, v39, v47, v45
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v45, v42, v56 :: v_dual_mul_f32 v50, v52, v49
	v_div_fmas_f32 v41, v44, v41, v55
	v_div_scale_f32 v46, null, v38, v38, v14
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v40, -v48, v50, v52
	v_div_fixup_f32 v9, v39, v38, v9
	v_div_fixup_f32 v10, v41, v38, v10
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v50, v40, v49
	v_rcp_f32_e32 v40, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v44, -v48, v50, v52
	v_rcp_f32_e32 v48, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v44, v44, v49, v50
	v_fma_f32 v47, -v43, v40, 1.0
	v_fma_f32 v49, -v54, v45, v42
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v44, v38, v11
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s3, v13, v38, v13
	v_fmac_f32_e32 v45, v49, v56
	v_div_scale_f32 v44, null, v38, v38, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v47, v40
	v_fma_f32 v41, -v46, v48, 1.0
	v_fma_f32 v42, -v54, v45, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v49, -v43, v39, v47
	v_fmac_f32_e32 v48, v41, v48
	v_div_scale_f32 v41, s4, v14, v38, v14
	v_div_fmas_f32 v42, v42, v56, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v49, v40
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v38, v38, v16
	v_div_fixup_f32 v12, v42, v38, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v42, -v43, v39, v47
	v_fma_f32 v47, -v44, v50, 1.0
	v_mul_f32_e32 v45, v41, v48
	v_rcp_f32_e32 v51, v49
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v39, v42, v40, v39
	v_div_scale_f32 v40, null, v38, v38, v1
	v_fmac_f32_e32 v50, v47, v50
	v_fma_f32 v43, -v46, v45, v41
	v_div_scale_f32 v42, s2, v15, v38, v15
	v_div_fixup_f32 v13, v39, v38, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v49, v51, 1.0
	v_fmac_f32_e32 v45, v43, v48
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v47, null, v38, v38, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v39, v51
	v_fma_f32 v41, -v46, v45, v41
	v_mul_f32_e32 v46, v42, v50
	v_div_scale_f32 v39, s3, v16, v38, v16
	v_rcp_f32_e32 v53, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v40, v43, 1.0
	v_div_scale_f32 v54, s4, v1, v38, v1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v52, null, v38, v38, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v47, v53, 1.0
	v_mul_f32_e32 v57, v54, v43
	v_div_fmas_f32 v41, v41, v48, v45
	v_fma_f32 v45, -v44, v46, v42
	v_mul_f32_e32 v48, v39, v51
	v_fmac_f32_e32 v53, v55, v53
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v14, v41, v38, v14
	v_fmac_f32_e32 v46, v45, v50
	v_fma_f32 v45, -v49, v48, v39
	v_rcp_f32_e32 v56, v52
	v_div_scale_f32 v55, s5, v2, v38, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v44, v46, v42
	v_fmac_f32_e32 v48, v45, v51
	v_fma_f32 v42, -v40, v57, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v44, v55, v53
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v41, v41, v50, v46
	v_fma_f32 v39, -v49, v48, v39
	v_div_scale_f32 v46, null, v38, v38, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v45, -v52, v56, 1.0
	v_div_fmas_f32 v39, v39, v51, v48
	v_rcp_f32_e32 v48, v46
	v_fmac_f32_e32 v57, v42, v43
	v_fma_f32 v42, -v47, v44, v55
	v_fmac_f32_e32 v56, v45, v56
	v_div_scale_f32 v45, s2, v3, v38, v3
	v_div_fixup_f32 v15, v41, v38, v15
	v_fma_f32 v40, -v40, v57, v54
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v39, v38, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v46, v48, 1.0
	v_div_scale_f32 v50, null, v38, v38, v8
	v_div_fmas_f32 v40, v40, v43, v57
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v48, v41, v48
	v_fmac_f32_e32 v44, v42, v53
	v_mul_f32_e32 v42, v45, v56
	v_div_scale_f32 v41, null, v38, v38, v6
	v_div_fixup_f32 v1, v40, v38, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v47, v44, v55
	v_fma_f32 v47, -v52, v42, v45
	v_div_scale_f32 v40, null, v38, v38, v5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v43, v43, v53, v44
	v_fmac_f32_e32 v42, v47, v56
	s_mov_b32 vcc_lo, s2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v2, v43, v38, v2
	v_fma_f32 v39, -v52, v42, v45
	v_rcp_f32_e32 v45, v41
	v_div_scale_f32 v43, null, v38, v38, v7
	v_rcp_f32_e32 v52, v50
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v47, v43
	v_fma_f32 v51, -v41, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v51, v45
	v_div_fmas_f32 v39, v39, v56, v42
	v_rcp_f32_e32 v42, v40
	v_div_scale_f32 v44, vcc_lo, v4, v38, v4
	v_div_scale_f32 v51, s3, v6, v38, v6
	v_div_fixup_f32 v3, v39, v38, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v43, v47, 1.0
	v_fma_f32 v56, -v50, v52, 1.0
	v_mul_f32_e32 v57, v51, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v40, v42, 1.0
	v_mul_f32_e32 v49, v44, v48
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v54, s4, v7, v38, v7
	v_fmac_f32_e32 v42, v39, v42
	v_div_scale_f32 v39, s2, v5, v38, v5
	v_fma_f32 v53, -v46, v49, v44
	v_fmac_f32_e32 v52, v56, v52
	v_div_scale_f32 v56, s5, v8, v38, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, v39, v42
	v_dual_fmac_f32 v49, v53, v48 :: v_dual_mul_f32 v58, v54, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v59, v56, v52
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v53, -v40, v55, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v46, v49, v44
	v_fma_f32 v46, -v41, v57, v51
	v_fmac_f32_e32 v55, v53, v42
	v_fma_f32 v53, -v43, v58, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v57, v46, v45
	v_div_fmas_f32 v44, v44, v48, v49
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v39, -v40, v55, v39
	v_fma_f32 v40, -v50, v59, v56
	v_fmac_f32_e32 v58, v53, v47
	v_fma_f32 v41, -v41, v57, v51
	v_div_fixup_f32 v4, v44, v38, v4
	v_div_fmas_f32 v39, v39, v42, v55
	v_fmac_f32_e32 v59, v40, v52
	v_fma_f32 v40, -v43, v58, v54
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v41, v41, v45, v57
	v_fma_f32 v42, -v50, v59, v56
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v39, v38, v5
	v_div_fmas_f32 v40, v40, v47, v58
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v41, v38, v6
	v_div_fmas_f32 v42, v42, v52, v59
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s60, v36
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v40, v38, v7
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v42, v38, v8
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_add_lshl_u32 v38, v37, v36, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s2, s60, v34
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v39, 16, v38
	v_add_nc_u32_e32 v36, 8, v38
	v_cndmask_b32_e32 v40, 0x80000000, v38, vcc_lo
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s60, v35
	v_cmp_gt_i32_e64 s3, s60, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	s_clause 0x2
	buffer_store_b32 v25, v40, s[48:51], 0 offen
	buffer_store_b32 v26, v36, s[48:51], 0 offen
	buffer_store_b32 v27, v39, s[48:51], 0 offen
	v_add_nc_u32_e32 v39, 56, v38
	v_add_nc_u32_e32 v36, 48, v38
	v_add_nc_u32_e32 v25, 24, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_add_nc_u32 v27, 40, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_add_nc_u32 v26, 32, v38
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	s_clause 0x4
	buffer_store_b32 v28, v25, s[48:51], 0 offen
	buffer_store_b32 v29, v26, s[48:51], 0 offen
	buffer_store_b32 v30, v27, s[48:51], 0 offen
	buffer_store_b32 v31, v36, s[48:51], 0 offen
	buffer_store_b32 v32, v39, s[48:51], 0 offen
	v_add_lshl_u32 v25, v37, v35, 2
	v_add_nc_u32_e32 v26, 0x48, v38
	v_add_nc_u32_e32 v27, 0x50, v38
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v28, 0x58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_nc_u32_e32 v29, 0x60, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[48:51], 0 offen
	buffer_store_b32 v18, v26, s[48:51], 0 offen
	buffer_store_b32 v19, v27, s[48:51], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v38
	v_add_nc_u32_e32 v19, 0x70, v38
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[48:51], 0 offen
	v_add_nc_u32_e32 v20, 0x78, v38
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	buffer_store_b32 v21, v17, s[48:51], 0 offen
	v_add_lshl_u32 v17, v37, v34, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v22, v18, s[48:51], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v38
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[48:51], 0 offen
	buffer_store_b32 v24, v20, s[48:51], 0 offen
	buffer_store_b32 v9, v17, s[48:51], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v38
	v_add_nc_u32_e32 v20, 0xa8, v38
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v38
	v_add_nc_u32_e32 v19, 0xa0, v38
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[48:51], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v11, v9, s[48:51], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v38
	s_clause 0x2
	buffer_store_b32 v12, v10, s[48:51], 0 offen
	buffer_store_b32 v13, v17, s[48:51], 0 offen
	buffer_store_b32 v14, v18, s[48:51], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v38
	v_add_lshl_u32 v11, v37, v33, 2
	v_add_nc_u32_e32 v12, 0xc8, v38
	v_add_nc_u32_e32 v13, 0xd0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_cndmask_b32 v13, 0x80000000, v13
	s_clause 0x4
	buffer_store_b32 v15, v9, s[48:51], 0 offen
	buffer_store_b32 v16, v10, s[48:51], 0 offen
	buffer_store_b32 v1, v11, s[48:51], 0 offen
	buffer_store_b32 v2, v12, s[48:51], 0 offen
	buffer_store_b32 v3, v13, s[48:51], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v38
	v_add_nc_u32_e32 v2, 0xe0, v38
	v_add_nc_u32_e32 v3, 0xe8, v38
	v_add_nc_u32_e32 v9, 0xf0, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[48:51], 0 offen
	buffer_store_b32 v5, v2, s[48:51], 0 offen
	buffer_store_b32 v6, v3, s[48:51], 0 offen
	buffer_store_b32 v7, v9, s[48:51], 0 offen
	buffer_store_b32 v8, v0, s[48:51], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp41:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 215
		.amdhsa_next_free_sgpr 69
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_vgpr, 215
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.numbered_sgpr, 69
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12444
; TotalNumSgprs: 71
; NumVgprs: 215
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 71
; NumVGPRsForWavesPerEU: 215
; Occupancy: 7
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
	.quad	.Ltmp18-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     71
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     215
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
