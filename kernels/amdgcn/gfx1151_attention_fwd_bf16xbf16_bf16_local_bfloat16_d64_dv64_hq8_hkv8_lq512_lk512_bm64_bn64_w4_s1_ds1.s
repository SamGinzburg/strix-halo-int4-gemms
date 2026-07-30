	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s5, s[0:1], 0x80
	s_load_b32 s82, s[0:1], 0x5c
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_and_b32_e32 v33, 7, v0
	v_lshrrev_b32_e32 v65, 3, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s71, s2, 6
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s83, s3, 9
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x0
	s_load_b64 s[6:7], s[0:1], 0x78
	.loc	1 570 31                        ; attention.py:570:31
	v_lshlrev_b32_e32 v169, 3, v33
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v34, s71, v65
	.loc	1 598 26 is_stmt 1              ; attention.py:598:26
	s_add_i32 s69, s71, s83
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v67, 15, v0
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s68, 0x200, v34
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v66, 1, v0
	v_lshlrev_b32_e32 v214, 4, v0
	v_lshlrev_b32_e32 v70, 2, v0
	v_lshlrev_b32_e32 v71, 3, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v17, 0x70, v66
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[170:171], null, s82, v65, v[169:170]
	s_mul_i32 s2, s82, s69
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s4, s82, v169
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v17, v214, v17
	s_and_b32 s9, s9, 0xffff
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v181, s82, 4, v170
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v1, v170, s2, 1
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s68, s4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[171:172], null, s82, 48, v[170:171]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v2, v181, s2, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 598 26                        ; attention.py:598:26
	v_lshl_add_u32 v182, s82, 5, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 599 26                        ; attention.py:599:26
	v_dual_cndmask_b32 v5, 0x80000000, v2 :: v_dual_add_nc_u32 v186, 0, v17
	v_add_lshl_u32 v4, v171, s2, 1
	v_add_lshl_u32 v3, v182, s2, 1
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s71, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_add_i32 s2, s2, s5
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v13, 0x80000000, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v9, 0x80000000, v3, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[8:11], 0 offen
	buffer_load_b128 v[5:8], v5, s[8:11], 0 offen
	buffer_load_b128 v[9:12], v9, s[8:11], 0 offen
	buffer_load_b128 v[13:16], v13, s[8:11], 0 offen
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 64
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s9, s71, s6
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s2, s2, 0x200
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s9, s9, s5
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 63
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s9, s9, 0
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s10, s2, 31
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s96, s9, 0x7fffffc0
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s10, s10, 26
	s_mov_b32 s8, 0
	s_add_i32 s97, s2, s10
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v186, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v186, v[5:8] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v186, v[9:12] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v186, v[13:16] offset:6144
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s97, s97, 63
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt lgkmcnt(0)
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s96, s97
	.loc	1 599 26                        ; attention.py:599:26
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v35, 3, v67
	v_lshlrev_b32_e32 v36, 2, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr36
.LBB0_3:                                ; %Flow432
	s_clause 0x1
	s_load_b64 s[80:81], s[0:1], 0x38
	s_load_b32 s70, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v69, 0x60, v0
	v_and_b32_e32 v68, 16, v0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_cmp_eq_u32_e64 s2, 0, v68
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
	v_mov_b32_e32 v175, v8
	v_mov_b32_e32 v173, v8
	v_mov_b32_e32 v174, v8
	v_mov_b32_e32 v172, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v1, 16, v34
	v_or_b32_e32 v2, 32, v34
	v_or_b32_e32 v3, 48, v34
	s_clause 0x2
	s_load_b128 s[12:15], s[0:1], 0x64
	s_load_b128 s[8:11], s[0:1], 0x8
	s_load_b64 s[84:85], s[0:1], 0x30
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v4, s5, v34
	v_add_nc_u32_e32 v1, s5, v1
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v2, s5, v2
	v_add_nc_u32_e32 v3, s5, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v194, s6, v4
	v_subrev_nc_u32_e32 v195, s6, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v196, s6, v2
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v199, s7, v1
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v200, s7, v2
	v_dual_mov_b32 v32, v25 :: v_dual_lshlrev_b32 v1, 7, v67
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v2, 6, v69
	v_mov_b32_e32 v26, v25
	v_subrev_nc_u32_e32 v197, s6, v3
	v_dual_mov_b32 v30, v25 :: v_dual_add_nc_u32 v201, s7, v3
	v_dual_mov_b32 v18, v25 :: v_dual_lshlrev_b32 v3, 4, v33
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v198, s7, v4
	v_mov_b32_e32 v17, v25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 599 26                        ; attention.py:599:26
	v_or3_b32 v2, v1, v2, v3
	v_or_b32_e32 v202, v3, v1
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s15, v65
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v8, 1, v169
	v_or_b32_e32 v9, 2, v169
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v6, 0x50, v2, 0
	v_xad_u32 v4, 0x70, v2, 0
	v_xad_u32 v7, v2, 64, 0
	v_xad_u32 v5, 0x60, v2, 0
	ds_load_b128 v[45:48], v6
	ds_load_b128 v[41:44], v7
	v_xad_u32 v6, v2, 16, 0
	ds_load_b128 v[37:40], v4
	ds_load_b128 v[33:36], v5
	v_xad_u32 v4, v2, 48, 0
	v_xad_u32 v5, v2, 32, 0
	v_add_nc_u32_e32 v2, 0, v2
	ds_load_b128 v[61:64], v6
	ds_load_b128 v[57:60], v2
	v_lshl_add_u32 v6, s15, 4, v1
	v_lshl_add_u32 v7, s15, 5, v1
	v_mad_u64_u32 v[2:3], null, s15, 48, v[1:2]
	v_dual_mov_b32 v184, 0xff800000 :: v_dual_add_nc_u32 v203, v1, v169
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v1, v6, v169
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v10, 3, v169
	v_mov_b32_e32 v22, v25
	v_or_b32_e32 v11, 4, v169
	.loc	1 629 13                        ; attention.py:629:13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off
	scratch_store_b32 off, v71, off offset:44
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v1, v6, v8
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v13, 5, v169
	v_or_b32_e32 v14, 6, v169
	v_or_b32_e32 v15, 7, v169
	.loc	1 629 13                        ; attention.py:629:13
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v1, v6, v9
	v_dual_mov_b32 v174, v25 :: v_dual_add_nc_u32 v217, v2, v169
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v218, v2, v8
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v6, v10
	v_dual_mov_b32 v188, 0xff800000 :: v_dual_add_nc_u32 v219, v2, v9
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v220, v2, v10
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v6, v11
	v_dual_mov_b32 v192, 0xff800000 :: v_dual_add_nc_u32 v221, v2, v11
	v_add_nc_u32_e32 v222, v2, v13
	v_add_nc_u32_e32 v223, v2, v14
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v6, v13
	v_add_nc_u32_e32 v224, v2, v15
	v_lshlrev_b32_e32 v2, 9, v0
	v_dual_mov_b32 v190, 0xff800000 :: v_dual_and_b32 v3, 28, v0
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v6, v14
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[53:56], v4
	ds_load_b128 v[49:52], v5
	v_xor_b32_e32 v5, 32, v202
	v_dual_mov_b32 v172, v25 :: v_dual_add_nc_u32 v215, v7, v10
	.loc	1 629 13                        ; attention.py:629:13
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v6, v15
	v_lshlrev_b32_e32 v6, 5, v0
	v_lshlrev_b32_e32 v10, 5, v68
	v_dual_mov_b32 v187, 0xff800000 :: v_dual_add_nc_u32 v228, v7, v13
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v7, v169
	v_add_nc_u32_e32 v231, v7, v15
	v_mov_b32_e32 v13, v25
	v_dual_mov_b32 v15, v25 :: v_dual_add_nc_u32 v216, v7, v11
	v_mov_b32_e32 v19, v25
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v7, v8
	v_lshlrev_b32_e32 v8, 2, v69
	v_bfe_i32 v11, v0, 0, 1
	v_add_nc_u32_e32 v235, 0, v5
	v_xor_b32_e32 v5, 0x60, v202
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v7, v9
	v_and_b32_e32 v9, 0x1b8, v70
	v_bfe_i32 v12, v0, 5, 1
	v_add_nc_u32_e32 v239, 0, v5
	v_mov_b32_e32 v173, v25
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_and_b32_e32 v1, 1, v0
	v_dual_mov_b32 v175, v25 :: v_dual_add_nc_u32 v230, v7, v14
	v_mov_b32_e32 v189, 0xff800000
	v_xor_b32_e32 v7, 0x70, v202
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v1, 6, v1
	v_mov_b32_e32 v113, 0xff800000
	v_xor_b32_e32 v4, 16, v202
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_add_nc_u32_e32 v240, 0, v7
	v_and_or_b32 v1, 0x1c00, v2, v1
	v_and_b32_e32 v2, 0x60, v6
	v_lshl_or_b32 v6, v3, 7, v8
	v_bfe_i32 v8, v0, 2, 1
	v_mov_b32_e32 v7, v25
	v_or3_b32 v225, v1, v10, v9
	v_lshlrev_b32_e32 v9, 6, v68
	v_lshlrev_b32_e32 v10, 3, v0
	v_and_b32_e32 v1, 0x2040, v8
	v_and_b32_e32 v8, 8, v0
	v_or3_b32 v226, v6, v2, v3
	v_xor_b32_e32 v5, 56, v225
	v_and_b32_e32 v10, 0x310, v10
	v_and_or_b32 v1, 0x1020, v11, v1
	v_lshl_or_b32 v8, v8, 4, v9
	v_bfe_i32 v3, v0, 3, 1
	v_and_b32_e32 v6, 0x2040, v12
	v_add_nc_u32_e32 v248, 0, v5
	v_xor_b32_e32 v5, 16, v226
	v_or3_b32 v227, v1, v8, v10
	v_mov_b32_e32 v1, 0x5410
	v_and_or_b32 v3, 0x1020, v3, v6
	v_and_b32_e32 v6, 4, v0
	v_add_nc_u32_e32 v253, 0, v5
	v_xor_b32_e32 v5, 64, v227
	v_and_b32_e32 v11, 0x80, v66
	v_mov_b32_e32 v8, 0x7632
	v_cndmask_b32_e64 v1, 0x1054, v1, s2
	v_lshrrev_b32_e32 v10, 3, v69
	v_add_nc_u32_e32 v180, 0, v5
	v_mov_b32_e32 v5, v25
	v_xor_b32_e32 v2, v3, v2
	v_lshl_add_u32 v3, v6, 9, 0
	v_cndmask_b32_e64 v8, 0x3276, v8, s2
	v_lshl_or_b32 v1, v1, 8, v1
	v_dual_mov_b32 v193, 0xff800000 :: v_dual_add_nc_u32 v234, 0, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v2, v3, v11, v2
	v_and_b32_e32 v3, 0x7c, v70
	v_lshl_or_b32 v8, v8, 8, v8
	v_and_b32_e32 v1, 0x540054, v1
	v_xor_b32_e32 v4, 0x50, v202
	v_and_b32_e32 v9, 0x70, v0
	v_lshl_or_b32 v3, v69, 4, v3
	s_lshr_b32 s0, s0, 29
	v_lshl_or_b32 v1, v1, 4, v1
	v_add_nc_u32_e32 v238, 0, v4
	v_xor_b32_e32 v4, 24, v225
	v_xor_b32_e32 v229, v3, v10
	v_and_b32_e32 v3, 0x760076, v8
	v_and_b32_e32 v232, 0x5040504, v1
	v_xor_b32_e32 v1, 48, v202
	v_add_nc_u32_e32 v244, 0, v4
	v_xor_b32_e32 v4, 48, v225
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshrrev_b32_e32 v6, 1, v9
	v_dual_mov_b32 v191, 0xff800000 :: v_dual_add_nc_u32 v236, 0, v1
	v_xor_b32_e32 v1, 8, v225
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v233, 0x7060706, v3
	v_xor_b32_e32 v3, 64, v202
	v_lshl_or_b32 v9, v9, 6, v71
	v_add_nc_u32_e32 v247, 0, v4
	v_add_nc_u32_e32 v242, 0, v1
	v_xor_b32_e32 v1, 32, v225
	v_add_nc_u32_e32 v237, 0, v3
	v_xor_b32_e32 v3, 16, v225
	v_xor_b32_e32 v4, 12, v226
	s_add_i32 s0, s3, s0
	v_add_nc_u32_e32 v245, 0, v1
	v_xor_b32_e32 v1, 0x810, v229
	v_add_nc_u32_e32 v243, 0, v3
	v_xor_b32_e32 v3, 40, v225
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -8
	v_xor_b32_e32 v6, v9, v6
	v_add_nc_u32_e32 v249, 0, v1
	v_xor_b32_e32 v1, 8, v226
	v_add_nc_u32_e32 v246, 0, v3
	v_xor_b32_e32 v3, 4, v226
	v_add_nc_u32_e32 v252, 0, v4
	v_xor_b32_e32 v4, 32, v227
	v_add_nc_u32_e32 v251, 0, v1
	v_xor_b32_e32 v1, 24, v226
	v_add_nc_u32_e32 v250, 0, v3
	v_xor_b32_e32 v3, 20, v226
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s0, 3
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s1, s3, s1
	v_add_nc_u32_e32 v255, 0, v1
	v_xor_b32_e32 v1, 0x60, v227
	v_add_nc_u32_e32 v254, 0, v3
	v_xor_b32_e32 v3, 28, v226
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[176:177], null, s70, v65, v[169:170]
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s1, s14, s1
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s0, s13, s0
	v_add_nc_u32_e32 v241, 0, v6
	v_add_nc_u32_e32 v185, 0, v3
	v_add_nc_u32_e32 v183, 0, v4
	v_add_nc_u32_e32 v178, 0, v1
	v_add_nc_u32_e32 v179, v2, v68
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v8, v25
	v_lshl_add_u32 v177, v67, 1, 0
	v_mov_b16_e64 v204.l, 0
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s98, s12, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s3, s15, s71
	s_add_i32 s99, s1, s0
	.loc	1 599 26                        ; attention.py:599:26
	s_mov_b32 s72, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s91, 0x31027000
	s_mov_b32 s90, 0x7ffffffe
	s_add_i32 s99, s99, s3
	s_and_b32 s85, s85, 0xffff
	s_lshl_b32 s100, s70, 4
	s_lshl_b32 s101, s70, 5
	s_mul_i32 s102, s70, 48
	s_and_b32 s93, s11, 0xffff
	s_mov_b32 s88, s8
	s_mov_b32 s89, s9
	s_mov_b32 s73, s72
	s_mov_b32 s74, s72
	s_mov_b32 s75, s72
	s_mov_b32 s76, s72
	s_mov_b32 s77, s72
	s_mov_b32 s78, s72
	s_mov_b32 s79, s72
	s_mov_b32 s86, s90
	s_mov_b32 s87, s91
	s_mov_b32 s103, 0x76543210
	s_mov_b32 s92, s10
	s_mov_b32 s94, s90
	s_mov_b32 s95, s91
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e32 vcc_lo, s70, v169
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s67, s96, s83
	.loc	1 658 32                        ; attention.py:658:32
	v_add_nc_u32_e32 v81, 0, v202
	.loc	1 657 32                        ; attention.py:657:32
	s_mul_i32 s0, s67, s82
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v121, s79 :: v_dual_mov_b32 v118, s76
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v66, s0, v181, 1
	v_add_lshl_u32 v65, s0, v170, 1
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v120, s78 :: v_dual_mov_b32 v119, s77
	v_mov_b32_e32 v116, s74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e64 v69, 0x80000000, v66, s4
	v_add_lshl_u32 v66, s0, v182, 1
	v_cndmask_b32_e64 v65, 0x80000000, v65, s4
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v117, s75 :: v_dual_mov_b32 v114, s72
	v_mov_b32_e32 v115, s73
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e64 v73, 0x80000000, v66, s4
	v_add_lshl_u32 v66, s0, v171, 1
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s104, s99, s96
	.loc	1 685 25                        ; attention.py:685:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e64 v77, 0x80000000, v66, s4
	s_clause 0x3
	buffer_load_b128 v[65:68], v65, s[88:91], 0 offen
	buffer_load_b128 v[69:72], v69, s[88:91], 0 offen
	buffer_load_b128 v[73:76], v73, s[88:91], 0 offen
	buffer_load_b128 v[77:80], v77, s[88:91], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v186, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v186, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v186, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v186, v[77:80] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v234
	ds_load_b128 v[65:68], v81
	ds_load_b128 v[73:76], v81 offset:2048
	ds_load_b128 v[77:80], v234 offset:2048
	ds_load_b128 v[101:104], v234 offset:4096
	ds_load_b128 v[97:100], v81 offset:4096
	ds_load_b128 v[105:108], v81 offset:6144
	ds_load_b128 v[109:112], v234 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[65:72], v[57:64], v[114:121]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[73:80], v[57:64], v[114:121]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[57:64], v[114:121]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[57:64], v[114:121]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v236
	ds_load_b128 v[97:100], v235
	ds_load_b128 v[105:108], v235 offset:2048
	ds_load_b128 v[109:112], v236 offset:2048
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v116, s104, v223, 1
	v_add_lshl_u32 v117, s104, v224, 1
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[49:56], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[105:112], v[49:56], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v236 offset:4096
	ds_load_b128 v[97:100], v235 offset:4096
	ds_load_b128 v[105:108], v235 offset:6144
	ds_load_b128 v[109:112], v236 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[49:56], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v238
	ds_load_b128 v[97:100], v237
	ds_load_b128 v[105:108], v237 offset:2048
	ds_load_b128 v[109:112], v238 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[41:48], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[105:112], v[41:48], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v238 offset:4096
	ds_load_b128 v[97:100], v237 offset:4096
	ds_load_b128 v[105:108], v237 offset:6144
	ds_load_b128 v[109:112], v238 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[41:48], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v240
	ds_load_b128 v[97:100], v239
	ds_load_b128 v[105:108], v239 offset:2048
	ds_load_b128 v[109:112], v240 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[33:40], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[105:112], v[33:40], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v240 offset:4096
	ds_load_b128 v[97:100], v239 offset:4096
	ds_load_b128 v[105:108], v239 offset:6144
	ds_load_b128 v[109:112], v240 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[33:40], v[73:80]
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v97, s96, v169
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v98, 2, v203
	v_add_nc_u32_e32 v100, 3, v203
	v_add_nc_u32_e32 v101, 4, v203
	v_add_nc_u32_e32 v99, 1, v203
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s0, v97, v194
	v_cmp_ge_i32_e64 s7, v97, v195
	v_cmp_ge_i32_e64 s12, v97, v196
	v_cmp_ge_i32_e64 s10, v97, v197
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s1, v97, v198
	v_cmp_le_i32_e64 s8, v97, v199
	v_cmp_le_i32_e64 s14, v97, v200
	v_cmp_le_i32_e64 s13, v97, v201
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v97, 1, v169
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v102, 5, v203
	v_add_nc_u32_e32 v103, 6, v203
	v_add_nc_u32_e32 v104, 7, v203
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s0, s0, s1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v97, s96, v97
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v98, s104, v98, 1
	v_add_lshl_u32 v100, s104, v100, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s0, s68, s0
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v101, s104, v101, 1
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s5, v97, v194
	v_cmp_ge_i32_e64 s9, v97, v195
	v_cmp_ge_i32_e64 s26, v97, v196
	v_cmp_ge_i32_e64 s15, v97, v197
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s6, v97, v198
	v_cmp_le_i32_e64 s11, v97, v199
	v_cmp_le_i32_e64 s28, v97, v200
	v_cmp_le_i32_e64 s16, v97, v201
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v97, 2, v169
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s5, s5, s6
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v99, s104, v99, 1
	v_add_lshl_u32 v102, s104, v102, 1
	v_add_lshl_u32 v103, s104, v103, 1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v97, s96, v97
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v104, s104, v104, 1
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[33:40], v[65:72]
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s9, s9, s11
	s_and_b32 s28, s26, s28
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s19, v97, v194
	v_cmp_ge_i32_e64 s23, v97, v195
	v_cmp_ge_i32_e64 s29, v97, v196
	v_cmp_ge_i32_e64 s17, v97, v197
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s20, v97, v198
	v_cmp_le_i32_e64 s24, v97, v199
	v_cmp_le_i32_e64 s30, v97, v200
	v_cmp_le_i32_e64 s18, v97, v201
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v97, 3, v169
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, s19, s20
	s_and_b32 s19, s68, s5
	s_and_b32 s1, s68, s1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v99, 0x80000000, v99, s19
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v97, s96, v97
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v98, 0x80000000, v98, s1
	v_add_lshl_u32 v111, s104, v230, 1
	v_add_lshl_u32 v112, s104, v231, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s28, s68, s28
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s21, v97, v194
	v_cmp_ge_i32_e64 s25, v97, v195
	v_cmp_ge_i32_e64 s36, v97, v196
	v_cmp_ge_i32_e64 s31, v97, v197
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v97, v198
	v_cmp_le_i32_e64 s27, v97, v199
	v_cmp_le_i32_e64 s37, v97, v200
	v_cmp_le_i32_e64 s33, v97, v201
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v97, 4, v169
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s3, s21, s3
	s_and_b32 s11, s25, s27
	s_and_b32 s20, s68, s3
	s_and_b32 s3, s7, s8
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v97, s96, v97
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v100, 0x80000000, v100, s20
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, s23, s24
	s_and_b32 s7, s68, s3
	s_and_b32 s8, s68, s8
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s22, v97, v194
	v_cmp_ge_i32_e64 s48, v97, v195
	v_cmp_ge_i32_e64 s38, v97, v196
	v_cmp_ge_i32_e64 s34, v97, v197
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s54, v97, v198
	v_cmp_le_i32_e64 s49, v97, v199
	v_cmp_le_i32_e64 s43, v97, v200
	v_cmp_le_i32_e64 s35, v97, v201
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v97, 5, v169
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s6, s22, s54
	s_and_b32 s25, s48, s49
	s_and_b32 s5, s68, s6
	s_and_b32 s24, s68, s11
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v97, s96, v97
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v101, 0x80000000, v101, s5
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s23, s68, s9
	s_and_b32 s9, s68, s25
	s_and_b32 s3, s12, s14
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s55, v97, v194
	v_cmp_ge_i32_e64 s50, v97, v195
	v_cmp_ge_i32_e64 s44, v97, v196
	v_cmp_ge_i32_e64 s39, v97, v197
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s56, v97, v198
	v_cmp_le_i32_e64 s51, v97, v199
	v_cmp_le_i32_e64 s45, v97, v200
	v_cmp_le_i32_e64 s40, v97, v201
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v97, 6, v169
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s21, s55, s56
	s_and_b32 s27, s50, s51
	s_and_b32 s21, s68, s21
	s_and_b32 s25, s68, s27
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v97, s96, v97
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v102, 0x80000000, v102, s21
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s14, s29, s30
	s_and_b32 s29, s36, s37
	s_and_b32 s12, s68, s3
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s57, v97, v194
	v_cmp_ge_i32_e64 s52, v97, v195
	v_cmp_ge_i32_e64 s46, v97, v196
	v_cmp_ge_i32_e64 s41, v97, v197
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s58, v97, v198
	v_cmp_le_i32_e64 s53, v97, v199
	v_cmp_le_i32_e64 s47, v97, v200
	v_cmp_le_i32_e64 s42, v97, v201
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v97, 7, v169
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s22, s57, s58
	s_and_b32 s48, s52, s53
	s_and_b32 s6, s68, s22
	s_and_b32 s11, s68, s48
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v97, s96, v97
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v103, 0x80000000, v103, s6
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s30, s38, s43
	s_and_b32 s26, s68, s14
	s_and_b32 s37, s44, s45
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s59, v97, v194
	v_cmp_ge_i32_e64 s60, v97, v195
	v_cmp_ge_i32_e64 s61, v97, v196
	v_cmp_ge_i32_e64 s62, v97, v197
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s63, v97, v198
	v_cmp_le_i32_e64 s64, v97, v199
	v_cmp_le_i32_e64 s65, v97, v200
	v_cmp_le_i32_e64 s66, v97, v201
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v97, s104, v203, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s54, s59, s63
	s_and_b32 s49, s60, s64
	s_and_b32 s22, s68, s54
	s_and_b32 s27, s68, s49
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v97, 0x80000000, v97, s0
	v_cndmask_b32_e64 v104, 0x80000000, v104, s22
	s_clause 0x7
	buffer_load_u16 v97, v97, s[84:87], 0 offen
	buffer_load_u16 v98, v98, s[84:87], 0 offen
	buffer_load_u16 v100, v100, s[84:87], 0 offen
	buffer_load_u16 v101, v101, s[84:87], 0 offen
	buffer_load_u16 v102, v102, s[84:87], 0 offen
	buffer_load_u16 v103, v103, s[84:87], 0 offen
	buffer_load_u16 v104, v104, s[84:87], 0 offen
	buffer_load_u16 v99, v99, s[84:87], 0 offen
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s38, s46, s47
	s_and_b32 s43, s61, s65
	s_and_b32 s36, s68, s29
	s_and_b32 s29, s68, s30
	s_and_b32 s37, s68, s37
	s_and_b32 s30, s68, s38
	s_and_b32 s38, s68, s43
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v111, 0x80000000, v111, s30
	v_cndmask_b32_e64 v112, 0x80000000, v112, s38
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s3, s10, s13
	s_and_b32 s10, s17, s18
	s_and_b32 s14, s31, s33
	s_and_b32 s31, s68, s3
	s_and_b32 s13, s15, s16
	s_and_b32 s15, s34, s35
	s_and_b32 s33, s68, s10
	s_and_b32 s16, s39, s40
	s_and_b32 s17, s41, s42
	s_and_b32 s18, s62, s66
	s_and_b32 s40, s68, s14
	s_and_b32 s34, s68, s15
	s_and_b32 s41, s68, s16
	s_and_b32 s35, s68, s17
	s_and_b32 s42, s68, s18
	s_and_b32 s39, s68, s13
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v116, 0x80000000, v116, s35
	v_cndmask_b32_e64 v117, 0x80000000, v117, s42
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s96, s96, 64
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v107, off, off offset:24
	scratch_load_b32 v108, off, off offset:28
	s_waitcnt vmcnt(9)
	v_cndmask_b16 v105.l, 0xff80, v97.l, s0
	s_waitcnt vmcnt(8)
	v_cndmask_b16 v105.h, 0xff80, v98.l, s1
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v97.h, 0xff80, v100.l, s20
	scratch_load_b32 v100, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v98.l, 0xff80, v102.l, s21
	scratch_load_b32 v102, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v106.h, 0xff80, v103.l, s6
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v97.l, 0xff80, v99.l, s19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v99, off, off
	scratch_load_b32 v103, off, off offset:16
	v_cndmask_b16 v106.l, 0xff80, v101.l, s5
	v_cndmask_b16 v98.h, 0xff80, v104.l, s22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v104, off, off offset:20
	scratch_load_b32 v101, off, off offset:4
	v_mov_b16_e64 v204.h, v105.l
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v107, s104, v107, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v108, s104, v108, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v107, 0x80000000, v107, s11
	v_cndmask_b32_e64 v108, 0x80000000, v108, s27
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v100, s104, v100, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v102, s104, v102, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v99, s104, v99, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v103, s104, v103, 1
	v_cndmask_b32_e64 v100, 0x80000000, v100, s8
	v_cndmask_b32_e64 v102, 0x80000000, v102, s24
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v104, s104, v104, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v101, s104, v101, 1
	v_cndmask_b32_e64 v99, 0x80000000, v99, s7
	v_cndmask_b32_e64 v103, 0x80000000, v103, s9
	v_cndmask_b32_e64 v104, 0x80000000, v104, s25
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v101, 0x80000000, v101, s23
	s_clause 0x7
	buffer_load_u16 v99, v99, s[84:87], 0 offen
	buffer_load_u16 v100, v100, s[84:87], 0 offen
	buffer_load_u16 v102, v102, s[84:87], 0 offen
	buffer_load_u16 v103, v103, s[84:87], 0 offen
	buffer_load_u16 v104, v104, s[84:87], 0 offen
	buffer_load_u16 v109, v107, s[84:87], 0 offen
	buffer_load_u16 v110, v108, s[84:87], 0 offen
	buffer_load_u16 v101, v101, s[84:87], 0 offen
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v107.l, 0xff80, v99.l, s7
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v107.h, 0xff80, v100.l, s8
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v99.h, 0xff80, v102.l, s24
	scratch_load_b32 v102, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v108.l, 0xff80, v103.l, s9
	scratch_load_b32 v103, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v100.l, 0xff80, v104.l, s25
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v99.l, 0xff80, v101.l, s23
	scratch_load_b32 v101, off, off offset:32 ; 4-byte Folded Reload
	v_add_lshl_u32 v104, s104, v215, 1
	v_cndmask_b16 v108.h, 0xff80, v109.l, s11
	v_add_lshl_u32 v109, s104, v216, 1
	v_cndmask_b16 v100.h, 0xff80, v110.l, s27
	v_add_lshl_u32 v110, s104, v228, 1
	v_cndmask_b32_e64 v104, 0x80000000, v104, s36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v109, 0x80000000, v109, s29
	v_cndmask_b32_e64 v110, 0x80000000, v110, s37
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v102, s104, v102, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v103, s104, v103, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v101, s104, v101, 1
	v_cndmask_b32_e64 v102, 0x80000000, v102, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v103, 0x80000000, v103, s28
	v_cndmask_b32_e64 v101, 0x80000000, v101, s12
	s_clause 0x7
	buffer_load_u16 v101, v101, s[84:87], 0 offen
	buffer_load_u16 v102, v102, s[84:87], 0 offen
	buffer_load_u16 v104, v104, s[84:87], 0 offen
	buffer_load_u16 v114, v109, s[84:87], 0 offen
	buffer_load_u16 v115, v110, s[84:87], 0 offen
	buffer_load_u16 v111, v111, s[84:87], 0 offen
	buffer_load_u16 v112, v112, s[84:87], 0 offen
	buffer_load_u16 v103, v103, s[84:87], 0 offen
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v109.l, 0xff80, v101.l, s12
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v109.h, 0xff80, v102.l, s26
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v101.h, 0xff80, v104.l, s36
	v_add_lshl_u32 v104, s104, v219, 1
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v110.l, 0xff80, v114.l, s29
	v_add_lshl_u32 v114, s104, v221, 1
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v102.h, 0xff80, v112.l, s38
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v101.l, 0xff80, v103.l, s28
	v_add_lshl_u32 v103, s104, v217, 1
	v_add_lshl_u32 v112, s104, v220, 1
	v_cndmask_b16 v102.l, 0xff80, v115.l, s37
	v_add_lshl_u32 v115, s104, v222, 1
	v_cndmask_b16 v110.h, 0xff80, v111.l, s30
	v_cndmask_b32_e64 v103, 0x80000000, v103, s31
	v_add_lshl_u32 v111, s104, v218, 1
	v_cndmask_b32_e64 v104, 0x80000000, v104, s33
	v_cndmask_b32_e64 v112, 0x80000000, v112, s40
	v_cndmask_b32_e64 v114, 0x80000000, v114, s34
	v_cndmask_b32_e64 v115, 0x80000000, v115, s41
	v_cndmask_b32_e64 v111, 0x80000000, v111, s39
	s_clause 0x7
	buffer_load_u16 v103, v103, s[84:87], 0 offen
	buffer_load_u16 v104, v104, s[84:87], 0 offen
	buffer_load_u16 v112, v112, s[84:87], 0 offen
	buffer_load_u16 v114, v114, s[84:87], 0 offen
	buffer_load_u16 v115, v115, s[84:87], 0 offen
	buffer_load_u16 v116, v116, s[84:87], 0 offen
	buffer_load_u16 v117, v117, s[84:87], 0 offen
	buffer_load_u16 v118, v111, s[84:87], 0 offen
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v111.l, 0xff80, v103.l, s31
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v111.h, 0xff80, v104.l, s33
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v103.h, 0xff80, v112.l, s40
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v112.l, 0xff80, v114.l, s34
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v114, 0, v225
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v112.h, 0xff80, v116.l, s35
	v_cndmask_b16 v104.l, 0xff80, v115.l, s41
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v103.l, 0xff80, v118.l, s39
	v_cndmask_b16 v104.h, 0xff80, v117.l, s42
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v241, v[105:106], v[107:108] offset1:16
	ds_store_2addr_b64 v241, v[97:98], v[99:100] offset0:64 offset1:80
	ds_store_2addr_b64 v241, v[109:110], v[111:112] offset0:32 offset1:48
	ds_store_2addr_b64 v241, v[101:102], v[103:104] offset0:96 offset1:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	ds_load_b64 v[114:115], v114
	ds_load_b64 v[116:117], v242
	ds_load_b64 v[122:123], v243
	ds_load_b64 v[124:125], v244
	v_mov_b16_e64 v105.l, v204.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v105
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s17, s1, s3
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	s_waitcnt lgkmcnt(3)
	v_lshlrev_b32_e32 v119, 16, v115
	v_and_b32_e32 v115, 0xffff0000, v115
	v_lshlrev_b32_e32 v118, 16, v114
	s_waitcnt lgkmcnt(2)
	v_lshlrev_b32_e32 v127, 16, v117
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v121, 0x3fb8aa3b, v119 :: v_dual_lshlrev_b32 v126, 16, v116
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v114, 0xffff0000, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v121, s98, v91 :: v_dual_and_b32 v116, 0xffff0000, v116
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v114, 0x3fb8aa3b, v114 :: v_dual_lshlrev_b32 v91, 16, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v114, s98, v90 :: v_dual_mul_f32 v119, 0x3fb8aa3b, v115
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v120, 0x3fb8aa3b, v118
	v_dual_mul_f32 v118, 0x3fb8aa3b, v127 :: v_dual_mul_f32 v115, 0x3fb8aa3b, v116
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v119, s98, v92 :: v_dual_fmac_f32 v120, s98, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v118, s98, v95 :: v_dual_lshlrev_b32 v89, 16, v122
	v_fmac_f32_e32 v115, s98, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v95, 0x3fb8aa3b, v89
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v90, 0xffff0000, v122
	.loc	1 684 25                        ; attention.py:684:25
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v95, s98, v81 :: v_dual_and_b32 v122, 0xffff0000, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v89, 0x3fb8aa3b, v90
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v128, 0xffff0000, v117
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v117, 0x3fb8aa3b, v126
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v89, s98, v82 :: v_dual_mul_f32 v116, 0x3fb8aa3b, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v117, s98, v93
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_lshlrev_b32_e32 v93, 16, v124
	v_and_b32_e32 v124, 0xffff0000, v125
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v116, s98, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v96, 0x3fb8aa3b, v91 :: v_dual_mul_f32 v91, 0x3fb8aa3b, v124
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v96, s98, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v91, s98, v88 :: v_dual_and_b32 v92, 0xffff0000, v123
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v94, 0x3fb8aa3b, v92 :: v_dual_lshlrev_b32 v123, 16, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v92, 0x3fb8aa3b, v93 :: v_dual_mul_f32 v93, 0x3fb8aa3b, v123
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v94, s98, v84 :: v_dual_fmac_f32 v93, s98, v87
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v90, 0x3fb8aa3b, v122
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	ds_load_b64 v[81:82], v245
	ds_load_b64 v[83:84], v246
	ds_load_b64 v[122:123], v247
	ds_load_b64 v[124:125], v248
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v92, s98, v85
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v90, s98, v86 :: v_dual_lshlrev_b32 v85, 16, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v87, 0x3fb8aa3b, v85 :: v_dual_lshlrev_b32 v86, 16, v82
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v82, 0xffff0000, v82
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v88, 0x3fb8aa3b, v86 :: v_dual_lshlrev_b32 v127, 16, v84
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v81, 0xffff0000, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v87, s98, v73 :: v_dual_mul_f32 v86, 0x3fb8aa3b, v82
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v85, 0x3fb8aa3b, v127
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v128, 0xffff0000, v84
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v88, s98, v75
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v81, 0x3fb8aa3b, v81 :: v_dual_lshlrev_b32 v126, 16, v83
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v86, s98, v76 :: v_dual_and_b32 v83, 0xffff0000, v83
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_lshlrev_b32_e32 v73, 16, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v85, s98, v79 :: v_dual_mul_f32 v84, 0x3fb8aa3b, v126
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v82, 0x3fb8aa3b, v83 :: v_dual_mul_f32 v83, 0x3fb8aa3b, v128
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v81, s98, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v84, s98, v77 :: v_dual_lshlrev_b32 v75, 16, v123
	v_dual_fmac_f32 v83, s98, v80 :: v_dual_and_b32 v76, 0xffff0000, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v82, s98, v78 :: v_dual_and_b32 v79, 0xffff0000, v124
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v123, 0x3fb8aa3b, v73 :: v_dual_lshlrev_b32 v78, 16, v124
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v74, 0xffff0000, v122
	v_and_b32_e32 v126, 0xffff0000, v125
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v80, 0x3fb8aa3b, v78 :: v_dual_fmac_f32 v123, s98, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v77, 0x3fb8aa3b, v74 :: v_dual_lshlrev_b32 v122, 16, v125
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v65.h, v106.l
	v_mov_b16_e64 v106.l, v204.l
	v_mov_b16_e64 v65.l, v204.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v122, 0x3fb8aa3b, v122
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v77, s98, v66
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v125, 0x3fb8aa3b, v75 :: v_dual_mul_f32 v124, 0x3fb8aa3b, v76
	.loc	1 685 34 is_stmt 1              ; attention.py:685:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v106
	v_cmp_neq_f32_e64 s13, 0xff800000, v65
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v66.h, v107.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v125, s98, v67
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v78, 0x3fb8aa3b, v79 :: v_dual_mul_f32 v79, 0x3fb8aa3b, v126
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	s_and_b32 s14, s5, s13
	s_and_b32 s13, s6, s10
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v204
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v65, 0, 1, s13
	.loc	1 684 25 is_stmt 1              ; attention.py:684:25
	v_fmac_f32_e32 v79, s98, v72
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v72, 0, 1, s14
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v67.h, v108.l
	v_mov_b16_e64 v108.l, v204.l
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s18, s0, s5
	v_mov_b16_e32 v66.l, v72.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v67.l, v204.l
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v73, 0, 1, s18
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v108
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v107.l, v204.l
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v72.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s17
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s0, 0xff800000, v67
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v66.l, v73.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v107
	.loc	1 684 25 is_stmt 1              ; attention.py:684:25
	v_fmac_f32_e32 v80, s98, v69
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s10, s9, s0
	s_and_b32 s9, s11, s16
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v69.h, v110.l
	v_mov_b16_e64 v110.l, v204.l
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v72.l, v66.l, v65.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v66.l, v204.l
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v65, 0, 1, s9
	s_and_b32 s15, s8, s15
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s44, 0xff800000, v110
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v69.l, v204.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v66
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v66, 0, 1, s10
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 684 25 is_stmt 1              ; attention.py:684:25
	v_fmac_f32_e32 v124, s98, v68
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v68.h, v109.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s16, s7, s1
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v109.l, v204.l
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v67.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s15
	v_cndmask_b32_e64 v66, 0, 1, s16
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s0, 0xff800000, v69
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s5, s30, s44
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s43, 0xff800000, v109
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v68.l, v204.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s6, s29, s0
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v122, s98, v71
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v71.h, v112.l
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v67.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s5
	v_cndmask_b32_e64 v66, 0, 1, s6
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v112.l, v204.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v68
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s11, s26, s43
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v71.l, v204.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s46, 0xff800000, v112
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s12, s12, s1
	.loc	1 684 25 is_stmt 1              ; attention.py:684:25
	v_fmac_f32_e32 v78, s98, v70
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v68.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s11
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s0, 0xff800000, v71
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v66, 0, 1, s12
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e32 v70.h, v111.l
	v_mov_b16_e64 v111.l, v204.l
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_and_b32 s1, s34, s0
	s_and_b32 s0, s35, s46
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v70.l, v204.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s45, 0xff800000, v111
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_or_b16 v68.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s0
	v_cndmask_b32_e64 v66, 0, 1, s1
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v70
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s7, s33, s45
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e32 v70.h, v102.l
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v102.l, v204.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s8, s31, s3
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v69.h, v101.l
	v_mov_b16_e64 v101.l, v204.l
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v65.h, v66.l, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s7
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s44, 0xff800000, v102
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e32 v71.h, v103.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s43, 0xff800000, v101
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v103.l, v204.l
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v65.l, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s45, 0xff800000, v103
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v65.l, v66.l, v65.l
	v_add_nc_u32_e32 v66, 0, v229
	ds_store_2addr_b32 v66, v72, v67 offset1:32
	ds_store_2addr_b32 v66, v68, v65 offset0:64 offset1:96
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e32 v66.h, v98.l
	v_mov_b16_e64 v98.l, v204.l
	v_mov_b16_e64 v66.l, v204.l
	v_mov_b16_e32 v65.h, v97.l
	v_mov_b16_e64 v65.l, v204.l
	v_mov_b16_e64 v97.l, v204.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v98
	v_cmp_neq_f32_e64 s29, 0xff800000, v66
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v68.h, v100.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s34, 0xff800000, v65
	v_cmp_neq_f32_e64 s3, 0xff800000, v97
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v100.l, v204.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s30, s21, s29
	s_and_b32 s29, s22, s26
	v_cndmask_b32_e64 v66, 0, 1, s30
	v_cndmask_b32_e64 v65, 0, 1, s29
	s_and_b32 s35, s19, s34
	s_and_b32 s34, s20, s3
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v68.l, v204.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v100
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e32 v67.h, v99.l
	v_mov_b16_e64 v99.l, v204.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v68
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v67.l, v204.l
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v73.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s34
	v_cndmask_b32_e64 v66, 0, 1, s35
	s_and_b32 s26, s25, s3
	s_and_b32 s25, s27, s33
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v99
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v67
	v_cmp_neq_f32_e64 s3, 0xff800000, v70
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s21, s38, s44
	s_and_b32 s31, s24, s31
	v_or_b16 v73.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s25
	v_cndmask_b32_e64 v66, 0, 1, s26
	s_and_b32 s33, s23, s19
	s_and_b32 s22, s37, s3
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e32 v72.h, v104.l
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v104.l, v204.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v69
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s27, s36, s43
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v72.l, v204.l
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v67.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s31
	v_cndmask_b32_e64 v66, 0, 1, s33
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s46, 0xff800000, v104
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s28, s28, s19
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v72
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s23, 0xff800000, v71
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s19, s42, s46
	s_and_b32 s20, s41, s3
	v_or_b16 v67.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s21
	v_cndmask_b32_e64 v66, 0, 1, s22
	s_and_b32 s24, s39, s23
	s_and_b32 s23, s40, s45
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cmp_lt_i32 s96, s97
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v68.h, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s27
	v_cndmask_b32_e64 v66, 0, 1, s28
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v68.l, v66.l, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s19
	v_cndmask_b32_e64 v66, 0, 1, s20
	v_lshlrev_b16 v65.l, 8, v65.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v65.h, v66.l, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s23
	v_mov_b16_e32 v65.l, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_or_b16 v65.l, v66.l, v65.l
	ds_store_2addr_b32 v249, v73, v67 offset1:32
	ds_store_2addr_b32 v249, v68, v65 offset0:64 offset1:96
	v_mad_u64_u32 v[65:66], null, s67, s70, v[176:177]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v73, 1, v65
	v_add_lshl_u32 v74, v65, s100, 1
	v_add_lshl_u32 v75, v65, s101, 1
	v_add_lshl_u32 v76, v65, s102, 1
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v65, 0, v226
	ds_load_b32 v66, v65
	ds_load_b32 v70, v250
	ds_load_b32 v97, v251
	ds_load_b32 v102, v252
	ds_load_b32 v103, v253
	ds_load_b32 v104, v254
	ds_load_b32 v105, v255
	ds_load_b32 v106, v185
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v65, 0x10000, v66
	v_and_b32_e32 v72, 0x1000000, v70
	v_and_b32_e32 v98, 1, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s62, 0, v65
	v_and_b32_e32 v65, 0x10000, v70
	v_cmp_eq_u32_e64 s57, 1, v98
	v_cmp_ne_u32_e64 s61, 0, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v67, 0xff800000, v121, s62
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s60, 0, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v98, 0xff800000, v95, s57
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v95, 0x1000000, v97
	v_and_b32_e32 v65, 0x10000, v97
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v72, 0xff800000, v116, s61
	v_cndmask_b32_e64 v71, 0xff800000, v118, s60
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s56, 0, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s53, 0, v65
	v_and_b32_e32 v65, 0x10000, v102
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v101, 0xff800000, v94, s56
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v94, 1, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_ne_u32_e64 s52, 0, v65
	v_and_b32_e32 v65, 0x10000, v103
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v100, 0xff800000, v96, s53
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s55, 1, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v109, 0xff800000, v93, s52
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s45, 0, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v107, 0xff800000, v92, s55
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v92, 0x1000000, v102
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v163, 0xff800000, v88, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s54, 0, v92
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v110, 0xff800000, v91, s54
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v91, 1, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s49, 1, v91
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v161, 0xff800000, v87, s49
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v87, 0x1000000, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s48, 0, v87
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v164, 0xff800000, v86, s48
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v86, 1, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s47, 1, v86
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v165, 0xff800000, v84, s47
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v84, 0x1000000, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s46, 0, v84
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v168, 0xff800000, v83, s46
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v83, 1, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s41, 1, v83
	v_and_b32_e32 v83, 0x1000000, v105
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v121, 0xff800000, v123, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s40, 0, v83
	v_and_b32_e32 v83, 1, v106
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v124, 0xff800000, v124, s40
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v68, 0x1000000, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s39, 1, v83
	v_cmp_ne_u32_e64 s64, 0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v68, 0xff800000, v119, s64
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v65, 0x10000, v104
	v_cmp_ne_u32_e64 s44, 0, v65
	v_and_b32_e32 v65, 0x10000, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v167, 0xff800000, v85, s44
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s37, 0, v65
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v85, 0x80000000, v76, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v123, 0xff800000, v125, s37
	v_cndmask_b32_e64 v125, 0xff800000, v80, s39
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v80, 0x1000000, v106
	v_cmp_ne_u32_e64 s38, 0, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v128, 0xff800000, v79, s38
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v79.l, 8, v97.l
	v_and_b16 v79.l, 1, v79.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s59, 1, v79.l
	v_lshrrev_b16 v79.l, 8, v102.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v99, 0xff800000, v89, s59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v79.l, 1, v79.l
	v_and_b32_e32 v69, 1, v70
	v_lshrrev_b16 v70.l, 8, v70.l
	v_cmp_eq_u16_e64 s58, 1, v79.l
	v_lshrrev_b16 v79.l, 8, v103.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b16 v70.l, 1, v70.l
	v_cmp_eq_u32_e64 s63, 1, v69
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v108, 0xff800000, v90, s58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v79.l, 1, v79.l
	v_cmp_eq_u16_e64 s66, 1, v70.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v69, 0xff800000, v117, s63
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v89, 0, v214
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s51, 1, v79.l
	v_lshrrev_b16 v79.l, 8, v104.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v70, 0xff800000, v115, s66
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v65, 0x10000, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v162, 0xff800000, v81, s51
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v79.l, 1, v79.l
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v81, 0x80000000, v75, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s36, 0, v65
	v_and_b32_e32 v65, 1, v66
	v_lshrrev_b16 v66.l, 8, v66.l
	v_cmp_eq_u16_e64 s50, 1, v79.l
	v_lshrrev_b16 v79.l, 8, v105.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v127, 0xff800000, v122, s36
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s65, 1, v65
	v_and_b16 v66.l, 1, v66.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v166, 0xff800000, v82, s50
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v79.l, 1, v79.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v65, 0xff800000, v120, s65
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s67, 1, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s43, 1, v79.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v66, 0xff800000, v114, s67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v122, 0xff800000, v77, s43
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v77.l, 8, v106.l
	v_and_b16 v77.l, 1, v77.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s42, 1, v77.l
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v77, 0, v227
	ds_store_b128 v77, v[65:68]
	ds_store_b128 v77, v[161:164] offset:2048
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v77, 0x80000000, v74, vcc_lo
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v126, 0xff800000, v78, s42
	ds_store_b128 v183, v[69:72]
	ds_store_b128 v183, v[165:168] offset:2048
	ds_store_b128 v180, v[98:101]
	ds_store_b128 v180, v[121:124] offset:2048
	ds_store_b128 v178, v[107:110]
	ds_store_b128 v178, v[125:128] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x3
	buffer_load_b128 v[73:76], v73, s[92:95], 0 offen
	buffer_load_b128 v[77:80], v77, s[92:95], 0 offen
	buffer_load_b128 v[81:84], v81, s[92:95], 0 offen
	buffer_load_b128 v[85:88], v85, s[92:95], 0 offen
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_b128 v[157:160], v179
	ds_load_b128 v[149:152], v179 offset:256
	ds_load_b128 v[153:156], v179 offset:1024
	ds_load_b128 v[145:148], v179 offset:1280
	ds_load_b128 v[141:144], v179 offset:512
	ds_load_b128 v[133:136], v179 offset:768
	ds_load_b128 v[137:140], v179 offset:1536
	ds_load_b128 v[129:132], v179 offset:1792
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v89, v[73:76]
	s_waitcnt vmcnt(2)
	ds_store_b128 v89, v[77:80] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v89, v[81:84] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v89, v[85:88] offset:6144
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v73, v99, v100, v101
	v_max3_f32 v74, v107, v108, v109
	v_max3_f32 v75, v110, v161, v162
	v_max3_f32 v76, v121, v122, v123
.Ltmp2:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v73, v73, v74, v75
	v_max3_f32 v74, v163, v164, v165
	v_max3_f32 v75, v166, v167, v168
	v_max3_f32 v74, v74, v75, v76
	v_max_f32_e32 v75, v65, v66
	v_max3_f32 v76, v68, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v75, v75, v67, v76
	v_max3_f32 v76, v71, v72, v98
	v_max3_f32 v73, v75, v76, v73
	v_dual_max_f32 v75, v124, v125 :: v_dual_max_f32 v76, v127, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v75, v75, v126, v76
	v_max3_f32 v73, v73, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v74, v73, s103, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v205, v113, v73, v74
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v73.h, v204.l
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v75, v177 offset:608
	ds_load_u16_d16 v74, v177 offset:352
	ds_load_u16_d16 v92, v177 offset:768
	ds_load_u16_d16 v89, v177
	ds_load_u16_d16 v83, v177 offset:576
	ds_load_u16_d16 v84, v177 offset:832
	ds_load_u16_d16 v93, v177 offset:1024
	ds_load_u16_d16 v85, v177 offset:1088
	ds_load_u16_d16 v94, v177 offset:1280
	ds_load_u16_d16 v86, v177 offset:1344
	ds_load_u16_d16 v95, v177 offset:1536
	ds_load_u16_d16 v87, v177 offset:1600
	ds_load_u16_d16 v96, v177 offset:1792
	ds_load_u16_d16 v91, v177 offset:512
	ds_load_u16_d16 v90, v177 offset:256
	ds_load_u16_d16 v88, v177 offset:1856
	ds_load_u16_d16 v207, v177 offset:288
	ds_load_u16_d16 v206, v177 offset:32
	ds_load_u16_d16 v81, v177 offset:64
	ds_load_u16_d16 v82, v177 offset:320
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v66, v205
	v_sub_f32_e32 v65, v65, v205
	v_sub_f32_e32 v68, v68, v205
	v_sub_f32_e32 v67, v67, v205
	v_sub_f32_e32 v70, v70, v205
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v70, v70
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v69, v205
	v_sub_f32_e32 v72, v72, v205
	v_sub_f32_e32 v71, v71, v205
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s67
	v_cndmask_b32_e64 v65, 0, v65, s65
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v68, 0, v68, s64
	v_cndmask_b32_e64 v67, 0, v67, s62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v70, 0, v70, s66
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v73.l, v66.h
	v_cmp_o_f32_e64 s3, v66, v66
	v_cmp_o_f32_e64 s65, v65, v65
	v_cmp_o_f32_e64 s62, v67, v67
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v73, 1, v73
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v66, v66, v73, 0x7fff
	v_mov_b16_e64 v73.h, v204.l
	v_mov_b16_e32 v73.l, v65.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s3
	v_cmp_o_f32_e64 s3, v68, v68
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s61
	v_cndmask_b32_e64 v71, 0, v71, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v65, v65, v73, 0x7fff
	v_cmp_o_f32_e64 s60, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s65
	v_permlanex16_b32 v73, v66, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v73, v66, v232
	v_perm_b32 v66, v73, v66, v233
	v_mov_b16_e64 v73.h, v204.l
	v_mov_b16_e32 v73.l, v68.h
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v68, v68, v73, 0x7fff
	v_mov_b16_e64 v73.h, v204.l
	v_mov_b16_e32 v73.l, v67.h
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s3
	v_cmp_o_f32_e64 s3, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v67, v67, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s62
	v_cmp_o_f32_e64 s62, v69, v69
	v_permlanex16_b32 v73, v68, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v73, v68, v232
	v_perm_b32 v68, v73, v68, v233
	v_mov_b16_e64 v73.h, v204.l
	v_mov_b16_e32 v73.l, v70.h
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v70, v73, 0x7fff
	v_mov_b16_e64 v73.h, v204.l
	v_mov_b16_e32 v73.l, v69.h
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s3
	v_cmp_o_f32_e64 s3, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v69, v69, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s62
	v_permlanex16_b32 v73, v70, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v73, v70, v232
	v_perm_b32 v70, v73, v70, v233
	v_mov_b16_e64 v73.h, v204.l
	v_mov_b16_e32 v73.l, v72.h
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v72, v73, 0x7fff
	v_mov_b16_e64 v73.h, v204.l
	v_mov_b16_e32 v73.l, v71.h
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s3
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v71, v71, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s60
	v_permlanex16_b32 v73, v72, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v71, v73, v72, v232
	v_perm_b32 v72, v73, v72, v233
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v73, v113, v205
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v102, 0, v73, s3
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_mul_f32_e32 v28, v28, v102
	v_mul_f32_e32 v30, v30, v102
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v74, v177 offset:480
	ds_load_u16_d16 v73, v177 offset:96
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v89, v177 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v83, v177 offset:704
	ds_load_u16_d16_hi v92, v177 offset:896
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v84, v177 offset:960
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v93, v177 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v85, v177 offset:1216
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v94, v177 offset:1408
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v86, v177 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v95, v177 offset:1664
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v87, v177 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v96, v177 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v91, v177 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v90, v177 offset:384
	ds_load_u16_d16 v208, v177 offset:544
	ds_load_u16_d16 v76, v177 offset:864
	ds_load_u16_d16 v77, v177 offset:1120
	ds_load_u16_d16 v78, v177 offset:1376
	ds_load_u16_d16 v79, v177 offset:1632
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v88, v177 offset:1984
	ds_load_u16_d16 v97, v177 offset:2048
	ds_load_u16_d16 v105, v177 offset:2112
	ds_load_u16_d16 v80, v177 offset:1888
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v206, v177 offset:160
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v81, v177 offset:192
	ds_load_u16_d16 v209, v177 offset:800
	ds_load_u16_d16 v210, v177 offset:1056
	ds_load_u16_d16 v211, v177 offset:1312
	ds_load_u16_d16 v212, v177 offset:1568
	ds_load_u16_d16 v213, v177 offset:1824
	ds_load_u16_d16 v106, v177 offset:2368
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v208, v177 offset:672
	ds_load_u16_d16_hi v75, v177 offset:736
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v102
	v_mul_f32_e32 v26, v26, v102
	v_mul_f32_e32 v27, v27, v102
	v_mul_f32_e32 v29, v29, v102
	v_mul_f32_e32 v31, v31, v102
	v_mul_f32_e32 v32, v32, v102
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v73, v177 offset:224
	ds_load_u16_d16_hi v207, v177 offset:416
	ds_load_u16_d16_hi v82, v177 offset:448
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v102
	v_mul_f32_e32 v18, v18, v102
	v_mul_f32_e32 v19, v19, v102
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[89:96], v[65:72], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v209, v177 offset:928
	ds_load_u16_d16_hi v76, v177 offset:992
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v210, v177 offset:1184
	ds_load_u16_d16_hi v77, v177 offset:1248
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v211, v177 offset:1440
	ds_load_u16_d16_hi v78, v177 offset:1504
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v212, v177 offset:1696
	ds_load_u16_d16_hi v79, v177 offset:1760
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v213, v177 offset:1952
	ds_load_u16_d16_hi v80, v177 offset:2016
	ds_load_u16_d16_hi v105, v177 offset:2240
	ds_load_u16_d16 v89, v177 offset:2080
	ds_load_u16_d16 v113, v177 offset:2144
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v20, v20, v102
	v_mul_f32_e32 v21, v21, v102
	v_mul_f32_e32 v22, v22, v102
	v_mul_f32_e32 v23, v23, v102
	v_mul_f32_e32 v24, v24, v102
	v_mul_f32_e32 v9, v9, v102
	v_mul_f32_e32 v10, v10, v102
	v_mul_f32_e32 v11, v11, v102
	v_mul_f32_e32 v12, v12, v102
	v_mul_f32_e32 v13, v13, v102
	v_mul_f32_e32 v14, v14, v102
	v_mul_f32_e32 v15, v15, v102
	v_mul_f32_e32 v16, v16, v102
	v_mul_f32_e32 v1, v1, v102
	v_mul_f32_e32 v2, v2, v102
	v_mul_f32_e32 v3, v3, v102
	v_mul_f32_e32 v4, v4, v102
	v_mul_f32_e32 v5, v5, v102
	v_mul_f32_e32 v6, v6, v102
	v_mul_f32_e32 v7, v7, v102
	v_mul_f32_e32 v8, v8, v102
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[206:213], v[65:72], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[65:72], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v90, v177 offset:2336
	ds_load_u16_d16 v91, v177 offset:2592
	ds_load_u16_d16 v92, v177 offset:2848
	ds_load_u16_d16 v93, v177 offset:3104
	ds_load_u16_d16 v94, v177 offset:3360
	ds_load_u16_d16 v95, v177 offset:3616
	ds_load_u16_d16 v96, v177 offset:3872
	ds_load_u16_d16 v82, v177 offset:4416
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v89, v177 offset:2208
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v113, v177 offset:2272
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[65:72], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v99, v205
	v_sub_f32_e32 v65, v98, v205
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v73.h, v204.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v68, v101, v205
	v_sub_f32_e32 v67, v100, v205
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v70, v108, v205
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v107, v205
	v_sub_f32_e32 v72, v110, v205
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v70
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v109, v205
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v98, v177 offset:2304
	ds_load_u16_d16 v99, v177 offset:2560
	ds_load_u16_d16 v107, v177 offset:2624
	ds_load_u16_d16 v100, v177 offset:2816
	ds_load_u16_d16 v108, v177 offset:2880
	ds_load_u16_d16 v101, v177 offset:3072
	ds_load_u16_d16 v109, v177 offset:3136
	ds_load_u16_d16 v102, v177 offset:3328
	ds_load_u16_d16 v110, v177 offset:3392
	ds_load_u16_d16 v103, v177 offset:3584
	ds_load_u16_d16 v111, v177 offset:3648
	ds_load_u16_d16 v104, v177 offset:3840
	ds_load_u16_d16 v112, v177 offset:3904
	ds_load_u16_d16_hi v97, v177 offset:2176
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s59
	v_cndmask_b32_e64 v65, 0, v65, s57
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v68, s56
	v_cndmask_b32_e64 v67, 0, v67, s53
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v73.l, v66.h
	v_cmp_o_f32_e64 s3, v66, v66
	v_cmp_o_f32_e64 s57, v65, v65
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s58
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s53, v67, v67
	v_and_b32_e32 v73, 1, v73
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s55
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v74.h, v204.l
	v_add3_u32 v66, v66, v73, 0x7fff
	v_mov_b16_e64 v73.h, v204.l
	v_mov_b16_e32 v73.l, v65.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s3
	v_cmp_o_f32_e64 s3, v68, v68
	v_and_b32_e32 v73, 1, v73
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v71, 0, v71, s52
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v65, v65, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s52, v71, v71
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v73, v66, s103, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v73, v66, v232
	v_perm_b32 v66, v73, v66, v233
	v_mov_b16_e64 v73.h, v204.l
	v_mov_b16_e32 v73.l, v68.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v68, v68, v73, 0x7fff
	v_mov_b16_e64 v73.h, v204.l
	v_mov_b16_e32 v73.l, v67.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s3
	v_cmp_o_f32_e64 s3, v70, v70
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v67, v73, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s53
	v_cmp_o_f32_e64 s53, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v73, v68, s103, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v73, v68, v232
	v_perm_b32 v68, v73, v68, v233
	v_mov_b16_e64 v73.h, v204.l
	v_mov_b16_e32 v73.l, v70.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v70, v70, v73, 0x7fff
	v_mov_b16_e64 v73.h, v204.l
	v_mov_b16_e32 v73.l, v69.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s3
	v_cmp_o_f32_e64 s3, v72, v72
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v69, v73, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v73, v70, s103, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v73, v70, v232
	v_perm_b32 v70, v73, v70, v233
	v_mov_b16_e64 v73.h, v204.l
	v_mov_b16_e32 v73.l, v72.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v72, v72, v73, 0x7fff
	v_mov_b16_e64 v73.h, v204.l
	v_mov_b16_e32 v73.l, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s3
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v71, v73, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v73, v72, s103, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v73, v72, v232
	v_perm_b32 v72, v73, v72, v233
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v98, v177 offset:2432
	ds_load_u16_d16_hi v106, v177 offset:2496
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v99, v177 offset:2688
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v107, v177 offset:2752
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v100, v177 offset:2944
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v108, v177 offset:3008
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v101, v177 offset:3200
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v109, v177 offset:3264
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v102, v177 offset:3456
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v110, v177 offset:3520
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v103, v177 offset:3712
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v111, v177 offset:3776
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v104, v177 offset:3968
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v112, v177 offset:4032
	ds_load_u16_d16 v114, v177 offset:2400
	ds_load_u16_d16 v115, v177 offset:2656
	ds_load_u16_d16 v116, v177 offset:2912
	ds_load_u16_d16 v117, v177 offset:3168
	ds_load_u16_d16 v118, v177 offset:3424
	ds_load_u16_d16 v119, v177 offset:3680
	ds_load_u16_d16 v73, v177 offset:4096
	ds_load_u16_d16 v81, v177 offset:4160
	ds_load_u16_d16 v120, v177 offset:3936
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[97:104], v[65:72], v[25:32]
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[105:112], v[65:72], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v90, v177 offset:2464
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v114, v177 offset:2528
	ds_load_u16_d16_hi v91, v177 offset:2720
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v115, v177 offset:2784
	ds_load_u16_d16_hi v92, v177 offset:2976
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v116, v177 offset:3040
	ds_load_u16_d16_hi v93, v177 offset:3232
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v117, v177 offset:3296
	ds_load_u16_d16_hi v94, v177 offset:3488
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v118, v177 offset:3552
	ds_load_u16_d16_hi v95, v177 offset:3744
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v119, v177 offset:3808
	ds_load_u16_d16_hi v96, v177 offset:4000
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v120, v177 offset:4064
	ds_load_u16_d16_hi v81, v177 offset:4288
	ds_load_u16_d16 v97, v177 offset:4128
	ds_load_u16_d16 v105, v177 offset:4192
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[89:96], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[113:120], v[65:72], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v162, v205
	v_sub_f32_e32 v65, v161, v205
	v_sub_f32_e32 v68, v164, v205
	v_sub_f32_e32 v67, v163, v205
	v_sub_f32_e32 v70, v166, v205
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v70, v70
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v165, v205
	v_sub_f32_e32 v72, v168, v205
	v_sub_f32_e32 v71, v167, v205
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v98, v177 offset:4384
	ds_load_u16_d16 v99, v177 offset:4640
	ds_load_u16_d16 v100, v177 offset:4896
	ds_load_u16_d16 v101, v177 offset:5152
	ds_load_u16_d16 v102, v177 offset:5408
	ds_load_u16_d16 v103, v177 offset:5664
	ds_load_u16_d16 v104, v177 offset:5920
	ds_load_u16_d16 v114, v177 offset:6464
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v97, v177 offset:4256
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v105, v177 offset:4320
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s51
	v_cndmask_b32_e64 v65, 0, v65, s49
	v_cndmask_b32_e64 v68, 0, v68, s48
	v_cndmask_b32_e64 v67, 0, v67, s45
	v_cndmask_b32_e64 v70, 0, v70, s50
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v74.l, v66.h
	v_cmp_o_f32_e64 s3, v66, v66
	v_cmp_o_f32_e64 s49, v65, v65
	v_cmp_o_f32_e64 s45, v67, v67
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v74, 1, v74
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v66, v66, v74, 0x7fff
	v_mov_b16_e64 v74.h, v204.l
	v_mov_b16_e32 v74.l, v65.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s3
	v_cmp_o_f32_e64 s3, v68, v68
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s46
	v_cndmask_b32_e64 v71, 0, v71, s44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v65, v65, v74, 0x7fff
	v_cmp_o_f32_e64 s44, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s49
	v_permlanex16_b32 v74, v66, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v65, v74, v66, v232
	v_perm_b32 v66, v74, v66, v233
	v_mov_b16_e64 v74.h, v204.l
	v_mov_b16_e32 v74.l, v68.h
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v68, v68, v74, 0x7fff
	v_mov_b16_e64 v74.h, v204.l
	v_mov_b16_e32 v74.l, v67.h
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s3
	v_cmp_o_f32_e64 s3, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v74, 1, v74
	v_add3_u32 v67, v67, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s45
	v_cmp_o_f32_e64 s45, v69, v69
	v_permlanex16_b32 v74, v68, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v74, v68, v232
	v_perm_b32 v68, v74, v68, v233
	v_mov_b16_e64 v74.h, v204.l
	v_mov_b16_e32 v74.l, v70.h
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v70, v74, 0x7fff
	v_mov_b16_e64 v74.h, v204.l
	v_mov_b16_e32 v74.l, v69.h
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s3
	v_cmp_o_f32_e64 s3, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v74, 1, v74
	v_add3_u32 v69, v69, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s45
	v_permlanex16_b32 v74, v70, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v74, v70, v232
	v_perm_b32 v70, v74, v70, v233
	v_mov_b16_e64 v74.h, v204.l
	v_mov_b16_e32 v74.l, v72.h
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v72, v74, 0x7fff
	v_mov_b16_e64 v74.h, v204.l
	v_mov_b16_e32 v74.l, v71.h
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v74, 1, v74
	v_add3_u32 v71, v71, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s44
	v_permlanex16_b32 v74, v72, s103, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v74, v72, v232
	v_perm_b32 v72, v74, v72, v233
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v74, v177 offset:4352
	ds_load_u16_d16 v75, v177 offset:4608
	ds_load_u16_d16 v83, v177 offset:4672
	ds_load_u16_d16 v76, v177 offset:4864
	ds_load_u16_d16 v84, v177 offset:4928
	ds_load_u16_d16 v77, v177 offset:5120
	ds_load_u16_d16 v85, v177 offset:5184
	ds_load_u16_d16 v78, v177 offset:5376
	ds_load_u16_d16 v86, v177 offset:5440
	ds_load_u16_d16 v79, v177 offset:5632
	ds_load_u16_d16 v87, v177 offset:5696
	ds_load_u16_d16 v80, v177 offset:5888
	ds_load_u16_d16 v88, v177 offset:5952
	ds_load_u16_d16_hi v73, v177 offset:4224
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v74, v177 offset:4480
	ds_load_u16_d16_hi v82, v177 offset:4544
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v75, v177 offset:4736
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v83, v177 offset:4800
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v76, v177 offset:4992
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v84, v177 offset:5056
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v77, v177 offset:5248
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v85, v177 offset:5312
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v78, v177 offset:5504
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v86, v177 offset:5568
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v79, v177 offset:5760
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v87, v177 offset:5824
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v80, v177 offset:6016
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v88, v177 offset:6080
	ds_load_u16_d16 v106, v177 offset:4448
	ds_load_u16_d16 v107, v177 offset:4704
	ds_load_u16_d16 v108, v177 offset:4960
	ds_load_u16_d16 v109, v177 offset:5216
	ds_load_u16_d16 v110, v177 offset:5472
	ds_load_u16_d16 v111, v177 offset:5728
	ds_load_u16_d16 v89, v177 offset:6144
	ds_load_u16_d16 v113, v177 offset:6208
	ds_load_u16_d16 v112, v177 offset:5984
	ds_load_u16_d16 v90, v177 offset:6400
	ds_load_u16_d16 v91, v177 offset:6656
	ds_load_u16_d16 v115, v177 offset:6720
	ds_load_u16_d16 v92, v177 offset:6912
	ds_load_u16_d16 v116, v177 offset:6976
	ds_load_u16_d16 v93, v177 offset:7168
	ds_load_u16_d16 v117, v177 offset:7232
	ds_load_u16_d16 v94, v177 offset:7424
	ds_load_u16_d16 v118, v177 offset:7488
	ds_load_u16_d16 v95, v177 offset:7680
	ds_load_u16_d16 v119, v177 offset:7744
	ds_load_u16_d16 v96, v177 offset:7936
	ds_load_u16_d16 v120, v177 offset:8000
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v89, v177 offset:6272
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[65:72], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[65:72], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v98, v177 offset:4512
	ds_load_u16_d16_hi v106, v177 offset:4576
	ds_load_u16_d16_hi v99, v177 offset:4768
	ds_load_u16_d16_hi v107, v177 offset:4832
	ds_load_u16_d16_hi v100, v177 offset:5024
	ds_load_u16_d16_hi v108, v177 offset:5088
	ds_load_u16_d16_hi v101, v177 offset:5280
	ds_load_u16_d16_hi v109, v177 offset:5344
	ds_load_u16_d16_hi v102, v177 offset:5536
	ds_load_u16_d16_hi v110, v177 offset:5600
	ds_load_u16_d16_hi v103, v177 offset:5792
	ds_load_u16_d16_hi v111, v177 offset:5856
	ds_load_u16_d16_hi v104, v177 offset:6048
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v112, v177 offset:6112
	ds_load_u16_d16_hi v113, v177 offset:6336
	ds_load_u16_d16 v73, v177 offset:6176
	ds_load_u16_d16 v81, v177 offset:6240
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v74.h, v204.l
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v90, v177 offset:6528
	ds_load_u16_d16_hi v114, v177 offset:6592
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v91, v177 offset:6784
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v115, v177 offset:6848
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v92, v177 offset:7040
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v116, v177 offset:7104
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v93, v177 offset:7296
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v117, v177 offset:7360
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v94, v177 offset:7552
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v118, v177 offset:7616
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v95, v177 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v119, v177 offset:7872
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v96, v177 offset:8064
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v120, v177 offset:8128
	ds_load_u16_d16 v82, v177 offset:6496
	ds_load_u16_d16 v83, v177 offset:6752
	ds_load_u16_d16 v84, v177 offset:7008
	ds_load_u16_d16 v85, v177 offset:7264
	ds_load_u16_d16 v86, v177 offset:7520
	ds_load_u16_d16 v87, v177 offset:7776
	ds_load_u16_d16 v88, v177 offset:8032
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(25)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[105:112], v[65:72], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v122, v205
	v_sub_f32_e32 v68, v124, v205
	v_sub_f32_e32 v70, v126, v205
	v_sub_f32_e32 v72, v128, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v72, v72
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s43
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v68, 0, v68, s40
	v_cndmask_b32_e64 v70, 0, v70, s42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v72, 0, v72, s38
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v74.l, v66.h
	v_cmp_o_f32_e64 s3, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v74, 1, v74
	v_add3_u32 v66, v66, v74, 0x7fff
	v_mov_b16_e64 v74.h, v204.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v121, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s3
	v_cmp_o_f32_e64 s3, v68, v68
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s41
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v74.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s41, v65, v65
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v65, v74, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v74, v66, s103, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v74, v66, v232
	v_perm_b32 v66, v74, v66, v233
	v_mov_b16_e64 v74.h, v204.l
	v_mov_b16_e32 v74.l, v68.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v67, v123, v205 :: v_dual_and_b32 v74, 1, v74
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v68, v68, v74, 0x7fff
	v_mov_b16_e64 v74.h, v204.l
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s37
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s3, v70, v70
	v_mov_b16_e32 v74.l, v67.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v125, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s37, v67, v67
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v67, v67, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s37
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v74, v68, s103, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s37, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v67, v74, v68, v232
	v_perm_b32 v68, v74, v68, v233
	v_mov_b16_e64 v74.h, v204.l
	v_mov_b16_e32 v74.l, v70.h
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v71, v127, v205 :: v_dual_and_b32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v70, v70, v74, 0x7fff
	v_mov_b16_e64 v74.h, v204.l
	v_mov_b16_e32 v74.l, v69.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s3
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v74, 1, v74
	v_cmp_o_f32_e64 s3, v72, v72
	v_cmp_o_f32_e64 s36, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v69, v74, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v74, v70, s103, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v74, v70, v232
	v_perm_b32 v70, v74, v70, v233
	v_mov_b16_e64 v74.h, v204.l
	v_mov_b16_e32 v74.l, v72.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v74, 1, v74
	v_add3_u32 v72, v72, v74, 0x7fff
	v_mov_b16_e64 v74.h, v204.l
	v_mov_b16_e32 v74.l, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s3
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v71, v74, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v74, v72, s103, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v74, v72, v232
	v_perm_b32 v72, v74, v72, v233
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v74, v177 offset:6432
	ds_load_u16_d16 v75, v177 offset:6688
	ds_load_u16_d16 v76, v177 offset:6944
	ds_load_u16_d16 v77, v177 offset:7200
	ds_load_u16_d16 v78, v177 offset:7456
	ds_load_u16_d16 v79, v177 offset:7712
	ds_load_u16_d16 v80, v177 offset:7968
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v73, v177 offset:6304
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v81, v177 offset:6368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v74, v177 offset:6560
	ds_load_u16_d16_hi v82, v177 offset:6624
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v75, v177 offset:6816
	ds_load_u16_d16_hi v83, v177 offset:6880
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v76, v177 offset:7072
	ds_load_u16_d16_hi v84, v177 offset:7136
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v77, v177 offset:7328
	ds_load_u16_d16_hi v85, v177 offset:7392
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v78, v177 offset:7584
	ds_load_u16_d16_hi v86, v177 offset:7648
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v79, v177 offset:7840
	ds_load_u16_d16_hi v87, v177 offset:7904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v80, v177 offset:8096
	ds_load_u16_d16_hi v88, v177 offset:8160
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[89:96], v[65:72], v[25:32]
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v92, v132, v132
	v_max_f32_e32 v93, v136, v136
	v_max3_f32 v94, v130, v135, v131
.Ltmp7:
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[113:120], v[65:72], v[9:16]
	v_mov_b32_e32 v113, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v92, v93, v92
	v_max3_f32 v93, v133, v129, v134
	v_max3_f32 v92, v93, v94, v92
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v93, v92
.Ltmp10:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[65:72], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[73:80], v[65:72], v[17:24]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v156, v156
	v_max_f32_e32 v66, v160, v160
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v93, v93 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v84, v144, v144
	v_max3_f32 v85, v138, v143, v139
	v_max3_f32 v67, v154, v159, v155
	v_max_f32_e32 v65, v66, v65
	v_max_f32_e32 v93, v93, v93
	v_max3_f32 v66, v157, v153, v158
	v_max_f32_e32 v74, v148, v148
	v_max3_f32 v76, v146, v151, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v92, v92, v93
	v_max3_f32 v65, v66, v67, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v93, v92 :: v_dual_mov_b32 v66, v65
	v_mov_b32_dpp v93, v93 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v66, v66 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v93, v93, v93 :: v_dual_max_f32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v92, v92, v93
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v93, v93 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v93, v93, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v92, v92, v93
.Ltmp18:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v93, v189, v189
	v_max_f32_e32 v189, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v83, v140, v140 :: v_dual_sub_f32 v94, v134, v189
	v_dual_max_f32 v83, v84, v83 :: v_dual_sub_f32 v98, v130, v189
	v_max3_f32 v84, v141, v137, v142
.Ltmp20:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v96, v136, v189
	v_sub_f32_e32 v100, v132, v189
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v83, v84, v85, v83
	v_dual_max_f32 v75, v152, v152 :: v_dual_mov_b32 v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v74, v75, v74
	v_max3_f32 v75, v149, v145, v150
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v84, v84 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v74, v75, v76, v74
	v_dual_max_f32 v84, v84, v84 :: v_dual_mov_b32 v75, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v83, v83, v84
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v75 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v84, v83
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v66, v65
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v84, v84, v84 :: v_dual_mov_b32 v75, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v66 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v83, v83, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v84, v83
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v65, v65, v66
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v74, v74, v75
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v66, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v84, v84, v84 :: v_dual_mov_b32 v75, v74
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v66, v66, v66 :: v_dual_max_f32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v65, v65, v66 :: v_dual_max_f32 v66, v184, v184
	v_max_f32_e32 v74, v74, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v75, v187, v187 :: v_dual_max_f32 v184, v66, v65
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v157, v184
	v_sub_f32_e32 v70, v153, v184
	v_sub_f32_e32 v67, v158, v184
	v_sub_f32_e32 v68, v159, v184
	v_sub_f32_e32 v72, v155, v184
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v68, v68
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s18
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v70, 0, v70, s35
.Ltmp43:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v83, v83, v84
.Ltmp44:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v84, v188, v188
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v68, 0, v68, s14
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v70
.Ltmp46:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v187, v75, v74 :: v_dual_max_f32 v188, v84, v83
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v154, v184
	v_sub_f32_e32 v69, v160, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v73, v156, v184 :: v_dual_sub_f32 v80, v146, v187
	v_sub_f32_e32 v78, v152, v187
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v70, v71
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v76, v150, v187
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v75, v149, v187 :: v_dual_sub_f32 v86, v143, v188
	v_dual_sub_f32 v79, v145, v187 :: v_dual_sub_f32 v90, v139, v188
	v_sub_f32_e32 v89, v138, v188
	v_dual_sub_f32 v77, v151, v187 :: v_dual_sub_f32 v84, v141, v188
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s34
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v81, v147, v187 :: v_dual_sub_f32 v88, v137, v188
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v82, v148, v187 :: v_dual_add_f32 v67, v67, v70
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v72
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v87, v144, v188
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp47:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp48:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s30
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v85, v142, v188
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s25
.Ltmp49:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v68, v68, v70
.Ltmp50:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v73
	v_exp_f32_e32 v73, v100
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s29
	v_cndmask_b32_e64 v73, 0, v73, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp52:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v81
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v67, v68, v69
.Ltmp54:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v91, v140, v188
	v_mov_b32_e32 v68, v172
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp55:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp56:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s26
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v72, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp57:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v67, v66
.Ltmp58:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v172, v66, v67
.Ltmp66:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v75
	v_exp_f32_e32 v67, v79
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v67, 0, v67, s33
.Ltmp67:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp68:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v67, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s15
.Ltmp69:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v67, v67, v69
.Ltmp70:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp72:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp74:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v78
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp76:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v90
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v67, v69, v70
	v_mov_b32_e32 v69, v174
.Ltmp78:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp80:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s22
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v95, v135, v189
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp81:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v67, v66
.Ltmp82:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v93, v133, v189 :: v_dual_add_f32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp86:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v97, v129, v189 :: v_dual_add_f32 v66, v66, v67
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v99, v131, v189 :: v_dual_add_f32 v174, v66, v67
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v84
	v_exp_f32_e32 v67, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s12
	v_cndmask_b32_e64 v67, 0, v67, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp89:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp90:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v67, v85
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp91:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v67, v67, v70
.Ltmp92:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v86
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp94:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s6
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp96:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s5
.Ltmp97:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v71, v71, v72
.Ltmp98:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v67, v70, v71 :: v_dual_mov_b32 v70, v173
.Ltmp100:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v98
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp101:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp103:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s23
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v173, v66, v67
.Ltmp110:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v93
	v_exp_f32_e32 v67, v97
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v67, 0, v67, s24
.Ltmp111:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp112:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v67, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s7
.Ltmp113:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v67, v67, v71
.Ltmp114:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp116:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v71, v71, v72
.Ltmp118:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v96
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s0
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cmp_neq_f32_e64 s0, 0xff800000, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v72, v72, v73
	v_add_f32_e32 v67, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v71, v175 :: v_dual_add_f32 v66, v66, v67
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v66, v66, v67
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v175, v66, v67 :: v_dual_max_f32 v66, v193, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v65, v66, v65
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v66, v193, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v66, v66
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v66, 0, v66, s0
	v_cmp_neq_f32_e64 s0, 0xff800000, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v172, v68, v66
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v66, v192, v192
	v_max_f32_e32 v66, v66, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v67, v192, v66 :: v_dual_mov_b32 v192, v66
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v67, 0, v67, s0
	v_cmp_neq_f32_e64 s0, 0xff800000, v191
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v174, v69, v67
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v67, v191, v191
	v_mov_b32_e32 v193, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v67, v83
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v68, v191, v67
	v_mov_b32_e32 v191, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v68, v68
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v68, 0, v68, s0
	v_cmp_neq_f32_e64 s0, 0xff800000, v190
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v173, v70, v68
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v68, v190, v190
	v_max_f32_e32 v68, v68, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v69, v190, v68 :: v_dual_mov_b32 v190, v68
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v69, 0, v69, s0
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v175, v71, v69
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	scratch_load_b32 v35, off, off offset:44 ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v36, 2, v0
	v_and_b32_e32 v67, 15, v0
	v_and_b32_e32 v68, 16, v0
	v_and_b32_e32 v69, 0x60, v0
.LBB0_7:                                ; %Flow433
	v_and_b32_e32 v33, 0x78, v0
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v34, 0x80, v36
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, 0, v35
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v33, 0, v33
	v_and_b32_e32 v0, 4, v0
	s_barrier
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s81, s81, 0xffff
	s_mov_b32 s83, 0x31027000
	.loc	1 629 13                        ; attention.py:629:13
	ds_store_2addr_b64 v33, v[172:173], v[174:175] offset1:16
	v_add3_u32 v0, v35, v34, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v35, 1, v68
	s_mov_b32 s82, 0x7ffffffe
	.loc	1 629 13                        ; attention.py:629:13
	ds_load_b32 v37, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v0, 1, v69
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v34, 16, v35
	v_or_b32_e32 v33, 32, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v36, v0, v67
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v0, 48, v35
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v38, s71, v36
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v36, s69, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 0x200, v38
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v36, s70, v36
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v40, null, v37, v37, v26
	v_div_scale_f32 v38, null, v37, v37, v25
	v_div_scale_f32 v42, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v40
	v_rcp_f32_e32 v46, v38
	v_div_scale_f32 v44, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v41, s1, v26, v37, v26
	v_rcp_f32_e32 v49, v44
	v_div_scale_f32 v52, null, v37, v37, v30
	v_fma_f32 v55, -v40, v47, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v54, -v38, v46, 1.0
	v_div_scale_f32 v39, vcc_lo, v25, v37, v25
	v_fma_f32 v56, -v42, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v55, v47
	v_rcp_f32_e32 v58, v52
	v_fmac_f32_e32 v46, v54, v46
	v_div_scale_f32 v43, s3, v27, v37, v27
	v_fmac_f32_e32 v48, v56, v48
	v_mul_f32_e32 v56, v41, v47
	v_fma_f32 v57, -v44, v49, 1.0
	v_div_scale_f32 v51, s5, v29, v37, v29
	v_div_scale_f32 v45, s4, v28, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v40, v56, v41
	v_mul_f32_e32 v55, v39, v46
	v_fmac_f32_e32 v49, v57, v49
	v_fma_f32 v60, -v52, v58, 1.0
	v_dual_mul_f32 v57, v43, v48 :: v_dual_fmac_f32 v56, v62, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v38, v55, v39
	v_div_scale_f32 v50, null, v37, v37, v29
	v_fmac_f32_e32 v58, v60, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v42, v57, v43
	v_fmac_f32_e32 v55, v61, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v53, v50
	v_fmac_f32_e32 v57, v63, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v38, v55, v39
	v_fma_f32 v39, -v40, v56, v41
	v_fma_f32 v40, -v42, v57, v43
	v_div_scale_f32 v42, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v38, v38, v46, v55
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v54, -v50, v53, 1.0
	v_div_fmas_f32 v39, v39, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v38, v37, v25
	v_rcp_f32_e32 v38, v42
	v_div_fmas_f32 v40, v40, v48, v57
	v_div_fixup_f32 v26, v39, v37, v26
	v_div_scale_f32 v39, s3, v30, v37, v30
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v27, v40, v37, v27
	v_div_scale_f32 v43, null, v37, v37, v32
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v46, -v42, v38, 1.0
	v_mul_f32_e32 v59, v45, v49
	v_rcp_f32_e32 v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v38, v46, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v44, v59, v45
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v59, v64, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v43, v47, 1.0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v27, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v41, -v44, v59, v45
	v_mul_f32_e32 v45, v39, v58
	v_fmac_f32_e32 v47, v46, v47
	v_div_scale_f32 v46, s6, v32, v37, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v41, v41, v49, v59
	v_fma_f32 v40, -v52, v45, v39
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v28, v41, v37, v28
	v_div_scale_f32 v41, s4, v31, v37, v31
	v_fmac_f32_e32 v53, v54, v53
	v_fmac_f32_e32 v45, v40, v58
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v40, v41, v38
	v_mul_f32_e32 v54, v51, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v52, v45, v39
	v_fma_f32 v44, -v50, v54, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v54, v44, v53
	v_div_scale_f32 v44, null, v37, v37, v17
	v_fma_f32 v48, -v50, v54, v51
	v_fma_f32 v50, -v42, v40, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v49, v44
	v_mul_f32_e32 v51, v46, v47
	v_div_fmas_f32 v48, v48, v53, v54
	v_div_scale_f32 v53, null, v37, v37, v18
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v40, v50, v38
	v_div_fmas_f32 v39, v39, v58, v45
	v_rcp_f32_e32 v45, v53
	v_div_fixup_f32 v29, v48, v37, v29
	v_div_scale_f32 v48, null, v37, v37, v19
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v30, v39, v37, v30
	v_fma_f32 v39, -v42, v40, v41
	v_fma_f32 v52, -v44, v49, 1.0
	v_fma_f32 v50, -v43, v51, v46
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v42, -v53, v45, 1.0
	v_div_fmas_f32 v38, v39, v38, v40
	v_fmac_f32_e32 v51, v50, v47
	s_mov_b32 vcc_lo, s6
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v45, v42, v45
	v_rcp_f32_e32 v42, v48
	v_fma_f32 v39, -v43, v51, v46
	v_div_scale_f32 v46, null, v37, v37, v20
	v_div_scale_f32 v43, s4, v18, v37, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v39, v39, v47, v51
	v_div_fixup_f32 v31, v38, v37, v31
	v_div_scale_f32 v51, null, v37, v37, v21
	v_fma_f32 v50, -v48, v42, 1.0
	v_fmac_f32_e32 v49, v52, v49
	v_div_scale_f32 v52, s3, v17, v37, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v47, v43, v45 :: v_dual_fmac_f32 v42, v50, v42
	v_div_fixup_f32 v32, v39, v37, v32
	v_mul_f32_e32 v41, v52, v49
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v53, v47, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v40, -v44, v41, v52
	v_fmac_f32_e32 v47, v39, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v40, v49
	v_rcp_f32_e32 v40, v46
	v_fma_f32 v38, -v44, v41, v52
	v_div_scale_f32 v44, s5, v19, v37, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v38, v38, v49, v41
	v_fma_f32 v50, -v46, v40, 1.0
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v41, v51
	v_div_scale_f32 v49, s3, v20, v37, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v50, v40
	v_div_scale_f32 v50, null, v37, v37, v22
	v_div_fixup_f32 v17, v38, v37, v17
	v_fma_f32 v38, -v53, v47, v43
	v_mul_f32_e32 v52, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v53, v50
	v_fma_f32 v54, -v51, v41, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v38, v45, v47
	v_div_scale_f32 v45, s4, v21, v37, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v54, v41
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v18, v38, v37, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v50, v53, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v53, v47, v53
	v_mul_f32_e32 v39, v44, v42
	v_div_scale_f32 v47, null, v37, v37, v23
	v_fma_f32 v43, -v48, v39, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v39, v43, v42
	v_fma_f32 v43, -v46, v52, v49
	v_fma_f32 v38, -v48, v39, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v52, v43, v40 :: v_dual_mul_f32 v43, v45, v41
	v_div_scale_f32 v44, s6, v22, v37, v22
	v_div_fmas_f32 v38, v38, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v46, v52, v49
	v_fma_f32 v42, -v51, v43, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v48, v44, v53
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v19, v38, v37, v19
	v_div_fmas_f32 v39, v39, v40, v52
	v_fmac_f32_e32 v43, v42, v41
	v_fma_f32 v42, -v50, v48, v44
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v49, null, v37, v37, v24
	v_fma_f32 v38, -v51, v43, v45
	v_fmac_f32_e32 v48, v42, v53
	v_div_scale_f32 v51, null, v37, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v49
	v_div_fmas_f32 v38, v38, v41, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v50, v48, v44
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v52, -v47, v46, 1.0
	v_div_fixup_f32 v20, v39, v37, v20
	v_div_scale_f32 v39, s3, v23, v37, v23
	v_div_fmas_f32 v41, v41, v53, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v52, v46
	v_fma_f32 v42, -v49, v40, 1.0
	v_div_scale_f32 v44, s4, v24, v37, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v41, v37, v22
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, null, v37, v37, v9
	v_div_fixup_f32 v21, v38, v37, v21
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v44, v40
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v53, null, v37, v37, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v51, v41, 1.0
	v_fma_f32 v38, -v49, v50, v44
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v55, v53
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v52, v41
	v_dual_mul_f32 v43, v39, v46 :: v_dual_fmac_f32 v50, v38, v40
	v_div_scale_f32 v38, s5, v9, v37, v9
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v48, -v47, v43, v39
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v43, v48, v46
	v_fma_f32 v48, -v42, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v47, v43, v39
	v_div_scale_f32 v47, null, v37, v37, v11
	v_fmac_f32_e32 v45, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v46, v43
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v43, -v49, v50, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v38, v45
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v46, s3, v10, v37, v10
	v_div_fmas_f32 v40, v43, v40, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v42, v44, v38
	v_div_fixup_f32 v23, v39, v37, v23
	v_mul_f32_e32 v54, v46, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v47, v48, 1.0
	v_div_fixup_f32 v24, v40, v37, v24
	v_fmac_f32_e32 v44, v52, v45
	v_fma_f32 v40, -v53, v55, 1.0
	v_fma_f32 v43, -v51, v54, v46
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s6, v11, v37, v11
	v_fma_f32 v38, -v42, v44, v38
	v_div_scale_f32 v42, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v49, v48
	v_dual_fmac_f32 v54, v43, v41 :: v_dual_fmac_f32 v55, v40, v55
	v_div_scale_f32 v40, s4, v12, v37, v12
	v_fma_f32 v39, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v43, -v51, v54, v46
	s_mov_b32 vcc_lo, s5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v50, v39, v48
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v39, 1.0
	v_fmac_f32_e32 v39, v46, v39
	v_div_fmas_f32 v38, v38, v45, v44
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v44, v40, v55
	v_div_fmas_f32 v41, v43, v41, v54
	v_fma_f32 v43, -v47, v50, v49
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v46, s3, v13, v37, v13
	v_div_fixup_f32 v9, v38, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v43, v43, v48, v50
	v_fma_f32 v48, -v53, v44, v40
	v_mul_f32_e32 v38, v46, v39
	v_div_scale_f32 v45, null, v37, v37, v14
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v44, v48, v55
	v_fma_f32 v48, -v42, v38, v46
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v10, v41, v37, v10
	v_div_fixup_f32 v11, v43, v37, v11
	v_fma_f32 v40, -v53, v44, v40
	v_fmac_f32_e32 v38, v48, v39
	v_div_scale_f32 v48, null, v37, v37, v16
	v_div_scale_f32 v43, null, v37, v37, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v40, v55, v44
	v_rcp_f32_e32 v50, v48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v41, -v45, v47, 1.0
	v_rcp_f32_e32 v49, v43
	v_div_fixup_f32 v12, v40, v37, v12
	v_fma_f32 v40, -v42, v38, v46
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v40, v39, v38
	v_div_scale_f32 v39, null, v37, v37, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v43, v49, 1.0
	v_div_scale_f32 v40, s3, v15, v37, v15
	v_div_fixup_f32 v13, v38, v37, v13
	v_fma_f32 v38, -v48, v50, 1.0
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s5, v14, v37, v14
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v50, v38, v50
	v_div_scale_f32 v38, s4, v16, v37, v16
	v_mul_f32_e32 v44, v41, v47
	v_div_scale_f32 v53, s5, v1, v37, v1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v42, -v45, v44, v41
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v45, v44, v41
	v_div_fmas_f32 v41, v41, v47, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v39, v42, 1.0
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v37, v37, v2
	v_mul_f32_e32 v47, v38, v50
	v_dual_fmac_f32 v42, v51, v42 :: v_dual_mul_f32 v45, v40, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v52, v46
	v_div_scale_f32 v51, null, v37, v37, v3
	v_mul_f32_e32 v56, v53, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v43, v45, v40
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v55, v51
	v_div_fixup_f32 v14, v41, v37, v14
	v_fma_f32 v41, -v39, v56, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v46, v52, 1.0
	v_fmac_f32_e32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	v_fmac_f32_e32 v56, v41, v42
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v52, v54, v52
	v_fma_f32 v40, -v43, v45, v40
	v_fmac_f32_e32 v47, v44, v50
	v_div_scale_f32 v54, s6, v2, v37, v2
	v_fma_f32 v44, -v51, v55, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v40, v49, v45
	v_fma_f32 v38, -v48, v47, v38
	v_div_scale_f32 v45, null, v37, v37, v4
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v43, v54, v52
	v_div_fmas_f32 v38, v38, v50, v47
	v_rcp_f32_e32 v47, v45
	v_fmac_f32_e32 v55, v44, v55
	v_div_scale_f32 v44, s3, v3, v37, v3
	v_fma_f32 v41, -v46, v43, v54
	v_div_fixup_f32 v15, v40, v37, v15
	v_fma_f32 v39, -v39, v56, v53
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v16, v38, v37, v16
	v_div_scale_f32 v49, null, v37, v37, v8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v47, 1.0
	v_div_fmas_f32 v39, v39, v42, v56
	s_mov_b32 vcc_lo, s6
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v47, v40, v47
	v_fmac_f32_e32 v43, v41, v52
	v_mul_f32_e32 v41, v44, v55
	v_div_scale_f32 v40, null, v37, v37, v6
	v_div_fixup_f32 v1, v39, v37, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v46, v43, v54
	v_fma_f32 v46, -v51, v41, v44
	v_div_scale_f32 v39, null, v37, v37, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v42, v42, v52, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v46, v55
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v2, v42, v37, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v51, v41, v44
	v_rcp_f32_e32 v44, v40
	v_div_scale_f32 v42, null, v37, v37, v7
	v_rcp_f32_e32 v51, v49
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v46, v42
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v40, v44, 1.0
	v_fmac_f32_e32 v44, v50, v44
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_div_scale_f32 v43, vcc_lo, v4, v37, v4
	v_div_scale_f32 v50, s4, v6, v37, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v3, v38, v37, v3
	v_fma_f32 v53, -v42, v46, 1.0
	v_fma_f32 v55, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v56, v50, v44
	v_fma_f32 v38, -v39, v41, 1.0
	v_mul_f32_e32 v48, v43, v47
	v_fmac_f32_e32 v46, v53, v46
	v_div_scale_f32 v53, s5, v7, v37, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v38, v41
	v_div_scale_f32 v38, s3, v5, v37, v5
	v_fma_f32 v52, -v45, v48, v43
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s6, v8, v37, v8
	v_mul_f32_e32 v54, v38, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v48, v52, v47 :: v_dual_mul_f32 v57, v53, v46
	v_mul_f32_e32 v58, v55, v51
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v52, -v39, v54, v38
	v_fma_f32 v43, -v45, v48, v43
	v_fma_f32 v45, -v40, v56, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v52, v41
	v_fma_f32 v52, -v42, v57, v53
	v_fmac_f32_e32 v56, v45, v44
	v_div_fmas_f32 v43, v43, v47, v48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v39, v54, v38
	v_fma_f32 v39, -v49, v58, v55
	v_fmac_f32_e32 v57, v52, v46
	v_fma_f32 v40, -v40, v56, v50
	v_div_fixup_f32 v4, v43, v37, v4
	v_div_fmas_f32 v38, v38, v41, v54
	v_fmac_f32_e32 v58, v39, v51
	v_fma_f32 v39, -v42, v57, v53
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v40, v40, v44, v56
	v_fma_f32 v41, -v49, v58, v55
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v38, v37, v5
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v40, v37, v6
	v_div_fmas_f32 v41, v41, v51, v58
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v38, v26, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v39, v37, v7
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v39, v27, 16, 1
	v_cmp_o_f32_e64 s5, v25, v25
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v41, v37, v8
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v37, v25, 16, 1
	v_cmp_o_f32_e64 s6, v26, v26
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v37, v25, v37, 0x7fff
	v_add3_u32 v25, v26, v38, 0x7fff
	v_add3_u32 v26, v27, v39, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_bfe_u32 v38, v30, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v29, 16, 1
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v27, v28, v27, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s7
	v_add3_u32 v28, v29, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_add3_u32 v29, v30, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v31, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s6
	v_bfe_u32 v30, v32, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s7
	v_bfe_u32 v29, v17, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v32, v32
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v30.h, s6
	v_bfe_u32 v30, v19, 16, 1
	v_bfe_u32 v31, v20, 16, 1
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v27, v18, v27, 0x7fff
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s7
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v29.h, 0x7fff, v27.h, s5
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v27, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cmp_o_f32_e64 s5, v21, v21
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v27, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v23, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v24, v24
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s5
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v12, 16, 1
	v_bfe_u32 v22, v13, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_cmp_o_f32_e64 s5, v4, v4
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v6, 16, 1
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s6, v5, v5
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v8, v8
	v_cndmask_b32_e64 v7, v17, v26, s2
	v_cndmask_b32_e64 v8, v26, v17, s2
	v_mov_b32_e32 v16, 0x5410
	v_mov_b32_e32 v17, 0x7632
	v_cndmask_b32_e64 v15, v19, v18, s2
	v_cndmask_b32_e64 v18, v18, v19, s2
	v_cndmask_b32_e64 v19, v12, v9, s2
	v_cndmask_b32_e64 v9, v9, v12, s2
	v_cndmask_b32_e64 v12, 0x1054, v16, s2
	v_cndmask_b32_e64 v16, 0x3276, v17, s2
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s7
	v_cndmask_b32_e64 v17, v11, v10, s2
	v_cndmask_b32_e64 v10, v10, v11, s2
	v_lshl_or_b32 v11, v12, 8, v12
	v_lshl_or_b32 v12, v16, 8, v16
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s9
	v_cndmask_b32_e64 v6, v25, v28, s2
	v_cndmask_b32_e64 v13, v20, v29, s2
	v_cndmask_b32_e64 v14, v29, v20, s2
	v_cndmask_b32_e64 v20, v3, v1, s2
	v_cndmask_b32_e64 v1, v1, v3, s2
	v_and_b32_e32 v3, 0x540054, v11
	v_and_b32_e32 v11, 0x760076, v12
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e64 v16, v4, v2, s2
	v_cndmask_b32_e64 v2, v2, v4, s2
	v_permlanex16_b32 v4, v6, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s5, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshl_or_b32 v8, v11, 4, v11
	v_cndmask_b32_e64 v5, v28, v25, s2
	v_permlanex16_b32 v11, v14, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v18, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v18, 0x5040504, v3
	v_and_b32_e32 v21, 0x7060706, v8
	v_permlanex16_b32 v22, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v2, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s70, v34
	v_cmp_gt_i32_e64 s4, s70, v35
	v_cmp_gt_i32_e64 s1, s70, v33
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v1, v4, v5, v18
	v_perm_b32 v2, v4, v5, v21
	v_perm_b32 v3, v6, v7, v18
	v_perm_b32 v4, v6, v7, v21
	v_perm_b32 v5, v11, v13, v18
	v_perm_b32 v6, v11, v13, v21
	v_perm_b32 v7, v12, v15, v18
	v_perm_b32 v8, v12, v15, v21
	v_perm_b32 v9, v14, v19, v18
	v_perm_b32 v11, v22, v17, v18
	v_perm_b32 v13, v23, v20, v18
	v_perm_b32 v15, v24, v16, v18
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v12, v22, v17, v21
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v17, v36, v35, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s70, v0
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v10, v14, v19, v21
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v19, v36, v33, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s0, vcc_lo
	s_and_b32 s2, s0, s4
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v0, v36, v0, 1
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v14, v23, v20, v21
	v_perm_b32 v16, v24, v16, v21
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v17, s[80:83], 0 offen
	buffer_store_b128 v[5:8], v18, s[80:83], 0 offen
	buffer_store_b128 v[9:12], v19, s[80:83], 0 offen
	buffer_store_b128 v[13:16], v0, s[80:83], 0 offen
	.loc	1 502 5 is_stmt 1               ; attention.py:502:5
	s_endpgm
.Ltmp127:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 52
		.amdhsa_kernarg_size 152
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 52
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21432
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 52
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 52
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 12
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
